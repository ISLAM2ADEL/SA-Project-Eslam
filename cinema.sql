-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 04:57 PM
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
(13, 'مسرح مصر', 'ضحك ولعب وبرد وحر', 3, 'H2', 40, '2023-12-03', '12:3 pm', 'https://i.ytimg.com/vi/pQKFFQGdsII/hq720.jpg?sqp=-oaymwE2COgCEMoBSFXyq4qpAygIARUAAIhCGAFwAcABBvABAfgB_gmAAtAFigIMCAAQARhyIFUoOjAP&rs=AOn4CLB843KxpqwOM22n-lkfqStnZSgJXA', 'https://www.youtube.com/shorts/PLluP-BGO0Y'),
(14, 'Inception', 'Action - Adventure - Sci-fi', 1, 'H1', 40, '2023-12-03', '12:3 pm', 'https://irs.www.warnerbros.com/keyart-jpeg/inception_keyart.jpg', 'https://www.youtube.com/watch?v=YoHD9XEInc0'),
(15, 'dsdsfsdffsd', 'a stand-up comedy maestro who transforms life\'s quirks into comedic gold', 4, 'H3', 40, '2023-12-03', '3:6 pm', 'https://lumiere-a.akamaihd.net/v1/images/image_858c51b2.jpeg?region=0,0,1920,1080', 'https://www.youtube.com/watch?v=d9MyW72ELq0'),
(16, 'MOHAMMED HELMY', 'fhdfhf', 4, 'H1', 70, '2023-12-03', '12:3 pm', 'https://i.ytimg.com/vi/yg3RLR5TnF8/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBVp7Ga113kF3HdNIm02J0Kq17OkA', 'https://www.youtube.com/watch?v=uz1q-kqe4_A'),
(17, 'MOHAMMED HELMY', 'a stand-up comedy maestro', 4, 'H2', 40, '2023-12-03', '9:12 midnight', 'https://i.ytimg.com/vi/yg3RLR5TnF8/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBVp7Ga113kF3HdNIm02J0Kq17OkA', 'https://www.youtube.com/watch?v=uz1q-kqe4_A'),
(18, 'MOHAMMED HELMY', 'a stand-up comedy maestro', 4, 'H2', 40, '2023-12-03', '9:12 midnight', 'https://i.ytimg.com/vi/yg3RLR5TnF8/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBVp7Ga113kF3HdNIm02J0Kq17OkA', 'https://www.youtube.com/watch?v=uz1q-kqe4_A'),
(19, 'مسرح مصر', 'sfdfdsdf', 3, 'H2', 70, '2023-12-04', '6:9 pm', 'https://i.ytimg.com/vi/pQKFFQGdsII/hq720.jpg?sqp=-oaymwE2COgCEMoBSFXyq4qpAygIARUAAIhCGAFwAcABBvABAfgB_gmAAtAFigIMCAAQARhyIFUoOjAP&rs=AOn4CLB843KxpqwOM22n-lkfqStnZSgJXA', 'https://www.youtube.com/shorts/PLluP-BGO0Y'),
(21, 'مسرح مصر', 'aaassssssssssssssssssssssssssss', 3, 'H3', 80, '2023-12-06', '9:12 midnight', 'https://i.ytimg.com/vi/pQKFFQGdsII/hq720.jpg?sqp=-oaymwE2COgCEMoBSFXyq4qpAygIARUAAIhCGAFwAcABBvABAfgB_gmAAtAFigIMCAAQARhyIFUoOjAP&rs=AOn4CLB843KxpqwOM22n-lkfqStnZSgJXA', 'https://www.youtube.com/shorts/PLluP-BGO0Y');

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
(3, 8, 2, 14),
(13, 8, 2, 10),
(15, 14, 2, 10),
(16, 11, 2, 5),
(17, 19, 2, 6),
(27, 8, 17, 15),
(28, 11, 17, 10),
(29, 19, 17, 5),
(30, 15, 17, 14);

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
(17, 'osama', '1478', '1233');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
