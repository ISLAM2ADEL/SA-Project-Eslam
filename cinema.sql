-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 06:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema`
--
CREATE DATABASE IF NOT EXISTS `cinema` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cinema`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `category` int(11) NOT NULL,
  `Hname` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `description`, `category`, `Hname`, `price`, `date`, `time`, `image`, `link`) VALUES
(7, 'MEG 2', 'Action - Horror - Adventure', 1, 'H1', 50, '2023-12-06', '3:6 pm', 'https://variety.com/wp-content/uploads/2023/08/MEG2-FP-0109-cr-res.jpg?w=1000&h=563&crop=1', 'https://www.youtube.com/watch?v=dG91B3hHyY4'),
(8, 'Fast X', 'Action - Drama', 1, 'H2', 50, '2023-12-03', '6:9 pm', 'https://roost.nbcuni.com/bin/viewasset.html/content/dam/Peacock/Landing-Pages/campaign/p1/fast-x/fast-x-vertical-key-art.jpg/_jcr_content/renditions/original.JPG?downsize=1200:*&output-format=webp&output-quality=70', 'https://www.youtube.com/watch?v=32RAq6JzY-w'),
(9, 'Avatar: The Way of Water', 'Action - Adventure - Fantasy', 1, 'H2', 70, '2023-12-03', '9:12 midnight', 'https://lumiere-a.akamaihd.net/v1/images/image_858c51b2.jpeg?region=0,0,1920,1080', 'https://www.youtube.com/watch?v=d9MyW72ELq0'),
(10, 'برنامج البرنامج', 'ساخر - سياسي - كوميدي', 2, 'H1', 45, '2023-12-03', '9:12 midnight', 'https://i.ytimg.com/vi/6HDZLr5EJ0U/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBy_f-0MeBhufQ4zL_aMnvnn1uFAw', 'https://www.youtube.com/watch?v=uz1q-kqe4_A'),
(11, 'صباحو تحدي ', 'ضحك - تحدي ', 2, 'H1', 40, '2023-12-03', '6:9 pm', 'https://i.ytimg.com/vi/yg3RLR5TnF8/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBVp7Ga113kF3HdNIm02J0Kq17OkA', 'https://www.youtube.com/shorts/uuWLgrCGfYk'),
(13, 'مسرح مصر', 'ضحك ولعب وبرد وشتاء', 3, 'H2', 40, '2023-12-03', '12:3 pm', 'https://i.ytimg.com/vi/pQKFFQGdsII/hq720.jpg?sqp=-oaymwE2COgCEMoBSFXyq4qpAygIARUAAIhCGAFwAcABBvABAfgB_gmAAtAFigIMCAAQARhyIFUoOjAP&rs=AOn4CLB843KxpqwOM22n-lkfqStnZSgJXA', 'https://www.youtube.com/shorts/PLluP-BGO0Y'),
(14, 'Inception', 'Action - Adventure - Sci-fi', 1, 'H1', 40, '2023-12-03', '12:3 pm', 'https://irs.www.warnerbros.com/keyart-jpeg/inception_keyart.jpg', 'https://www.youtube.com/watch?v=YoHD9XEInc0'),
(15, 'dsdsfsdffsd', 'a stand-up comedy maestro who transforms life\'s quirks into comedic gold', 4, 'H3', 40, '2023-12-03', '3:6 pm', 'https://lumiere-a.akamaihd.net/v1/images/image_858c51b2.jpeg?region=0,0,1920,1080', 'https://www.youtube.com/watch?v=d9MyW72ELq0'),
(16, 'MOHAMMED HELMY', 'fhdfhf', 4, 'H1', 70, '2023-12-03', '12:3 pm', 'https://i.ytimg.com/vi/yg3RLR5TnF8/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBVp7Ga113kF3HdNIm02J0Kq17OkA', 'https://www.youtube.com/watch?v=uz1q-kqe4_A'),
(17, 'MOHAMMED HELMY', 'a stand-up comedy maestro', 4, 'H2', 40, '2023-12-03', '9:12 midnight', 'https://i.ytimg.com/vi/yg3RLR5TnF8/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBVp7Ga113kF3HdNIm02J0Kq17OkA', 'https://www.youtube.com/watch?v=uz1q-kqe4_A'),
(18, 'MOHAMMED HELMY', 'a stand-up comedy maestro', 4, 'H2', 40, '2023-12-03', '9:12 midnight', 'https://i.ytimg.com/vi/yg3RLR5TnF8/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBVp7Ga113kF3HdNIm02J0Kq17OkA', 'https://www.youtube.com/watch?v=uz1q-kqe4_A'),
(19, 'مسرح مصر', 'sfdfdsdf', 3, 'H2', 70, '2023-12-04', '6:9 pm', 'https://i.ytimg.com/vi/pQKFFQGdsII/hq720.jpg?sqp=-oaymwE2COgCEMoBSFXyq4qpAygIARUAAIhCGAFwAcABBvABAfgB_gmAAtAFigIMCAAQARhyIFUoOjAP&rs=AOn4CLB843KxpqwOM22n-lkfqStnZSgJXA', 'https://www.youtube.com/shorts/PLluP-BGO0Y'),
(21, 'مسرح مصر', 'aaassssssssssssssssssssssssssss', 3, 'H3', 80, '2023-12-06', '9:12 midnight', 'https://i.ytimg.com/vi/pQKFFQGdsII/hq720.jpg?sqp=-oaymwE2COgCEMoBSFXyq4qpAygIARUAAIhCGAFwAcABBvABAfgB_gmAAtAFigIMCAAQARhyIFUoOjAP&rs=AOn4CLB843KxpqwOM22n-lkfqStnZSgJXA', 'https://www.youtube.com/shorts/PLluP-BGO0Y'),
(22, 'حمص', 'سيبييبسبي', 1, 'H1', 40, '2023-12-05', '9:12 midnight', 'https://i.ytimg.com/vi/6HDZLr5EJ0U/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBy_f-0MeBhufQ4zL_aMnvnn1uFAw', 'https://www.youtube.com/shorts/uuWLgrCGfYk'),
(23, 'شاي ', 'ابقافقف', 1, 'H1', 40, '2023-12-05', '6:9 pm', 'https://i.ytimg.com/vi/6HDZLr5EJ0U/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBy_f-0MeBhufQ4zL_aMnvnn1uFAw', 'https://www.youtube.com/watch?v=uz1q-kqe4_A'),
(24, 'MOHAMMED HELMY', 'ايللايلبيلي', 1, 'H4', 80, '2023-12-08', '3:6 pm', 'https://i.ytimg.com/vi/yg3RLR5TnF8/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBVp7Ga113kF3HdNIm02J0Kq17OkA', 'https://www.youtube.com/shorts/uuWLgrCGfYk');

-- --------------------------------------------------------

--
-- Table structure for table `halls`
--

CREATE TABLE `halls` (
  `name` varchar(50) NOT NULL,
  `numofseats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `halls`
--

INSERT INTO `halls` (`name`, `numofseats`) VALUES
('H1', 30),
('H2', 50),
('H3', 60),
('H4', 50);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `ticket_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `movie_id`, `users_id`, `ticket_num`) VALUES
(1, 7, 4, 10),
(13, 8, 2, 10),
(15, 14, 2, 10),
(16, 11, 2, 5),
(39, 7, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `telephone`) VALUES
(1, 'admin', '0000', '1234'),
(2, 'Islam', '1234', '11'),
(4, 'ahmed', '1020', '12'),
(5, 'Tarek', '4567', '51'),
(9, 'Diaa', '1478', '15'),
(13, 'Steven', '1000', '1233'),
(20, 'rieko', '8965', '14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halls`
--
ALTER TABLE `halls`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `ticket_ibfk_2` (`users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `islam`
--
CREATE DATABASE IF NOT EXISTS `islam` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `islam`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` enum('delivery','customer_services','discount','station_admin','charge_admin') NOT NULL,
  `image` blob DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carriage`
--

CREATE TABLE `carriage` (
  `id` int(11) NOT NULL,
  `train_id` int(11) DEFAULT NULL,
  `type` enum('delivery','travel') NOT NULL,
  `seat_no` int(11) DEFAULT NULL,
  `class` enum('male first class','male second class','female first class','female second class','mix first class','mix second class') DEFAULT NULL,
  `max` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carriage`
--

INSERT INTO `carriage` (`id`, `train_id`, `type`, `seat_no`, `class`, `max`) VALUES
(25, 10, 'travel', 30, 'male first class', 0);

-- --------------------------------------------------------

--
-- Table structure for table `charge_admin`
--

CREATE TABLE `charge_admin` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_service_admin`
--

CREATE TABLE `customer_service_admin` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_admin`
--

CREATE TABLE `delivery_admin` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_ticket`
--

CREATE TABLE `delivery_ticket` (
  `ticket_no` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `trip_no` int(11) DEFAULT NULL,
  `date` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `weight` double DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `delivery_admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_ticket`
--

INSERT INTO `delivery_ticket` (`ticket_no`, `user_id`, `trip_no`, `date`, `source`, `destination`, `price`, `weight`, `description`, `status`, `delivery_admin_id`) VALUES
(20, NULL, NULL, '2023-05-11', 'Alexandria', 'Marsa-matrouh', 0, NULL, 'adsa', 0, NULL),
(21, NULL, NULL, '2023-05-11', 'Alexandria', 'Giza', 0, NULL, 'aaaaaaaasdfdgggggg', 0, NULL),
(22, NULL, NULL, '2023-05-17', 'Cairo', 'south-cairo', 0, NULL, 'aSAsas', 0, NULL),
(23, NULL, NULL, '2023-05-18', 'Cairo', 'Alexandria', 0, NULL, 'dasdsa', 0, NULL),
(24, NULL, NULL, '2023-05-17', 'Cairo', 'Alexandria', 0, NULL, 'sadsd', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `user_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `reson` enum('student','old','disability') NOT NULL,
  `attachment` blob NOT NULL,
  `ssn_card_pic` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_admin`
--

CREATE TABLE `discount_admin` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `username`, `f_name`, `l_name`, `password`, `phone`, `email`, `status`) VALUES
(1000, 'Islam', 'eslam', 'adel', '1234', '011', 'es@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `recharge`
--

CREATE TABLE `recharge` (
  `process_no` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

CREATE TABLE `refund` (
  `process_no` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `ticket_no` int(11) DEFAULT NULL,
  `reosn` text NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `no` int(11) NOT NULL,
  `line` int(11) NOT NULL,
  `piriority` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`no`, `line`, `piriority`, `name`) VALUES
(1, 0, 1, 'Cairo'),
(2, 0, 2, 'Alexandria'),
(3, 0, 3, 'Giza'),
(4, 1, 4, 'Marsa-matrouh'),
(5, 0, 5, 'south-cairo');

-- --------------------------------------------------------

--
-- Table structure for table `station_admin`
--

CREATE TABLE `station_admin` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `station_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_no` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `trip_no` int(11) DEFAULT NULL,
  `carriage_no` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `passangers` int(11) DEFAULT NULL,
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `class` enum('male first class','male second class','female first class','felmale second class','mix first class','mix second class') NOT NULL,
  `price` int(11) DEFAULT NULL,
  `start` time(6) DEFAULT NULL,
  `end` time(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_no`, `user_id`, `trip_no`, `carriage_no`, `date`, `passangers`, `source`, `destination`, `class`, `price`, `start`, `end`) VALUES
(32, NULL, 55, NULL, '0000-00-00', NULL, 'Cairo', 'Alexandria', 'male first class', 20, '08:00:00.000000', '11:00:00.000000'),
(33, NULL, 55, NULL, '0000-00-00', NULL, 'Cairo', 'Alexandria', 'male first class', 80, '08:00:00.000000', '11:00:00.000000'),
(34, NULL, 5, NULL, '0000-00-00', NULL, 'Cairo', 'Alexandria', 'male first class', 500, '08:00:00.000000', '12:00:00.000000'),
(35, NULL, 5, NULL, '0000-00-00', NULL, 'Cairo', 'Alexandria', 'male first class', 1000, '08:00:00.000000', '12:00:00.000000'),
(36, NULL, 55, NULL, '0000-00-00', NULL, 'Cairo', 'Alexandria', 'male first class', 200, '08:00:00.000000', '11:00:00.000000'),
(37, NULL, 5, NULL, '0000-00-00', NULL, 'Cairo', 'Alexandria', 'male first class', 200, '08:00:00.000000', '12:00:00.000000'),
(38, NULL, 55, NULL, '0000-00-00', NULL, 'Cairo', 'Alexandria', 'male first class', 80, '08:00:00.000000', '11:00:00.000000'),
(39, NULL, 5, NULL, '0000-00-00', NULL, 'Cairo', 'Alexandria', 'male first class', 200, '08:00:00.000000', '12:00:00.000000'),
(40, NULL, 55, NULL, '0000-00-00', NULL, 'Cairo', 'Alexandria', 'male first class', 80, '08:00:00.000000', '11:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `id` int(11) NOT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `type` enum('Travel','delivery') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`id`, `manager_id`, `name`, `type`) VALUES
(10, 1000, 'SS', 'Travel');

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `trip_no` int(11) NOT NULL,
  `train_id` int(11) DEFAULT NULL,
  `type` enum('travel','delivery') NOT NULL,
  `start` time NOT NULL,
  `end` time NOT NULL,
  `source` varchar(50) NOT NULL,
  `distination` varchar(50) NOT NULL,
  `status` enum('Started','Finished','Pending','') NOT NULL,
  `date` date NOT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`trip_no`, `train_id`, `type`, `start`, `end`, `source`, `distination`, `status`, `date`, `price`) VALUES
(5, 10, 'travel', '08:00:00', '12:00:00', 'Cairo', 'Alexandria', 'Finished', '2023-05-17', 50),
(8, 10, 'travel', '13:00:00', '17:00:00', 'Cairo', 'Alexandria', 'Started', '2023-05-17', 25),
(10, 10, 'travel', '13:00:00', '17:00:00', 'Cairo', 'Marsa-matrouh', 'Started', '2023-05-17', 50),
(55, 10, 'travel', '08:00:00', '11:00:00', 'Alexandria', 'Cairo', 'Started', '2023-05-18', 20),
(1234, 10, 'travel', '15:00:00', '20:00:00', 'Alexandria', 'Marsa-matrouh', 'Pending', '2023-05-10', 50),
(12345, 10, 'delivery', '09:00:00', '13:00:00', 'Alexandria', 'Giza', 'Finished', '2023-05-30', 20);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ssn` varchar(50) NOT NULL,
  `sex` enum('male','female') NOT NULL,
  `age` int(11) NOT NULL,
  `balance` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `image` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `f_name`, `l_name`, `phone`, `email`, `password`, `ssn`, `sex`, `age`, `balance`, `status`, `image`) VALUES
(20, 'diaa', 'Dida', 'abosueda', '011', 'dia@gmail.com', '12345', '301', 'male', 19, 300, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Indexes for table `carriage`
--
ALTER TABLE `carriage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `train_id` (`train_id`);

--
-- Indexes for table `charge_admin`
--
ALTER TABLE `charge_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `customer_service_admin`
--
ALTER TABLE `customer_service_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `delivery_admin`
--
ALTER TABLE `delivery_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `delivery_ticket`
--
ALTER TABLE `delivery_ticket`
  ADD PRIMARY KEY (`ticket_no`),
  ADD KEY `user_id` (`user_id`,`trip_no`,`delivery_admin_id`),
  ADD KEY `delivery_ticket_ibfk_1` (`delivery_admin_id`),
  ADD KEY `delivery_ticket_ibfk_3` (`trip_no`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `discount_admin`
--
ALTER TABLE `discount_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `recharge`
--
ALTER TABLE `recharge`
  ADD PRIMARY KEY (`process_no`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `refund`
--
ALTER TABLE `refund`
  ADD PRIMARY KEY (`process_no`),
  ADD KEY `user_id` (`user_id`,`admin_id`,`ticket_no`),
  ADD KEY `refund_ibfk_3` (`ticket_no`),
  ADD KEY `refund_ibfk_4` (`admin_id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `station_admin`
--
ALTER TABLE `station_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `station_id` (`station_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_no`),
  ADD KEY `user_id` (`user_id`,`trip_no`,`carriage_no`),
  ADD KEY `ticket_ibfk_2` (`carriage_no`),
  ADD KEY `ticket_ibfk_3` (`trip_no`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`trip_no`),
  ADD KEY `train_id` (`train_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_ticket`
--
ALTER TABLE `delivery_ticket`
  MODIFY `ticket_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `refund`
--
ALTER TABLE `refund`
  MODIFY `process_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `carriage`
--
ALTER TABLE `carriage`
  ADD CONSTRAINT `carriage_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `train` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `charge_admin`
--
ALTER TABLE `charge_admin`
  ADD CONSTRAINT `charge_admin_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_service_admin`
--
ALTER TABLE `customer_service_admin`
  ADD CONSTRAINT `customer_service_admin_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `delivery_admin`
--
ALTER TABLE `delivery_admin`
  ADD CONSTRAINT `delivery_admin_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `delivery_ticket`
--
ALTER TABLE `delivery_ticket`
  ADD CONSTRAINT `delivery_ticket_ibfk_1` FOREIGN KEY (`delivery_admin_id`) REFERENCES `delivery_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `delivery_ticket_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `delivery_ticket_ibfk_3` FOREIGN KEY (`trip_no`) REFERENCES `trip` (`trip_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `discount`
--
ALTER TABLE `discount`
  ADD CONSTRAINT `discount_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `discount_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `discount_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `discount_admin`
--
ALTER TABLE `discount_admin`
  ADD CONSTRAINT `discount_admin_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recharge`
--
ALTER TABLE `recharge`
  ADD CONSTRAINT `recharge_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recharge_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `charge_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `refund`
--
ALTER TABLE `refund`
  ADD CONSTRAINT `refund_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `refund_ibfk_3` FOREIGN KEY (`ticket_no`) REFERENCES `ticket` (`ticket_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `refund_ibfk_4` FOREIGN KEY (`admin_id`) REFERENCES `charge_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `station_admin`
--
ALTER TABLE `station_admin`
  ADD CONSTRAINT `station_admin_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `station_admin_ibfk_2` FOREIGN KEY (`station_id`) REFERENCES `station` (`no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`carriage_no`) REFERENCES `carriage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`trip_no`) REFERENCES `trip` (`trip_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `train`
--
ALTER TABLE `train`
  ADD CONSTRAINT `train_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trip`
--
ALTER TABLE `trip`
  ADD CONSTRAINT `trip_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `train` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"cinema\",\"table\":\"admin\"},{\"db\":\"cinema\",\"table\":\"ticket\"},{\"db\":\"cinema\",\"table\":\"users\"},{\"db\":\"cinema\",\"table\":\"halls\"},{\"db\":\"islam\",\"table\":\"refund\"},{\"db\":\"islam\",\"table\":\"ticket\"},{\"db\":\"islam\",\"table\":\"delivery_ticket\"},{\"db\":\"islam\",\"table\":\"trip\"},{\"db\":\"islam\",\"table\":\"station\"},{\"db\":\"islam\",\"table\":\"user\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('islam', 'trip', 'type');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'cinema', 'admin', '[]', '2023-11-26 17:09:53'),
('root', 'islam', 'ticket', '{\"CREATE_TIME\":\"2023-05-04 17:49:27\"}', '2023-05-06 18:47:32');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-11-27 17:31:51', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":264}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
