-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2022 at 05:47 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `awn`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `tel` int(13) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `des` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `lastname`, `tel`, `password`, `id_cat`, `des`, `img`) VALUES
(9, 'sidi', 'ahmed', 44222222, '111111', 3, 'BonjourXN', '5eee1a6c-3d02-47f3-afb0-ca754c99db38-1845102077.jpg'),
(10, 'sidi', 'mohamed', 28282828, '111111', 2, '8587878794884', 'bbd0825d-e276-4c9e-b33b-06111f0d2dbd833393257032033798.jpg'),
(11, 'Ablo ', 'sidi', 22228888, '111111', 3, 'Bonjour je suis une pessonne qui travail', 'e6761a40-590e-4383-8a32-833c16ef76e51777002554.jpg'),
(12, 'Behi', 'sisi', 21212121, '111111', 2, 'Bonjour hi pro', 'dd402af8-41eb-4495-9429-9e11c30f20d5-701728457.jpg'),
(13, 'mohamed', 'sidi', 22222441, '111111', 3, 'je suis actuellement the name is a beautiful ???? ', 'a73d0026-5c4d-44ed-996b-5253b48ab57d7762488590936150536.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(1, 'Plobyer'),
(2, 'Architechte'),
(3, 'huawei'),
(4, 'xiaomi'),
(5, 'apple'),
(6, 'oppo');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `fav` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `user_id`, `admin_id`, `fav`) VALUES
(16, 8, 11, 1),
(46, 14, 12, 1),
(51, 14, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(55) NOT NULL,
  `tel` int(13) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `lastname`, `tel`, `password`, `img`) VALUES
(6, 'cheikh', 'Med', 27272727, '123456', '59f60a81-d061-47c5-b5f9-e2e62ca9eb88424118433.jpg'),
(7, 'Idoumu', 'yay', 22111111, '777777', 'cvbcvxbv.png'),
(8, 'sidi', 'Ahmed', 26272627, '111111', '59f60a81-d061-47c5-b5f9-e2e62ca9eb88424118433.jpg'),
(9, 'cheik', 'Mohamed', 22222222, '111111', '59f60a81-d061-47c5-b5f9-e2e62ca9eb88424118433.jpg'),
(10, 'Sidi ', 'Ablo', 22442244, '111111', '59f60a81-d061-47c5-b5f9-e2e62ca9eb88424118433.jpg'),
(13, 'SIDI', 'MUHA', 22212222, '111111', '59f60a81-d061-47c5-b5f9-e2e62ca9eb88424118433.jpg'),
(14, 'Sidi', 'mohamed', 32222222, '111111', '024c07c0-d04b-426c-bceb-47a79a6ae403-413465106.jpg'),
(15, 'Sidi Med', 'Sidi a', 322222221, '1111111', '0e8b97d4-2191-4a65-b20a-8f208ad858241571433585.jpg'),
(16, 'Sidi D', 'SidiD', 32222221, '111112', '269f4764-44d6-44af-aafd-704766ee7477-975971045.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `user_id` int(11) NOT NULL,
  `username` int(10) NOT NULL,
  `first_name` int(10) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`user_id`, `username`, `first_name`, `last_name`, `gender`, `password`, `status`) VALUES
(1012, 6, 16, 'cheikh', 'Huawei-Nova-9', '22819UM', 1),
(1013, 6, 3, 'cheikh', 'Galaxy Z filp', '8522UM', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ventes`
--

CREATE TABLE `ventes` (
  `idV` int(11) NOT NULL,
  `id_users` int(13) NOT NULL,
  `id_mobiles` int(13) NOT NULL,
  `ClientNom` varchar(100) NOT NULL,
  `TélNom` varchar(100) NOT NULL,
  `Prix` varchar(100) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `Status` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ventes`
--

INSERT INTO `ventes` (`idV`, `id_users`, `id_mobiles`, `ClientNom`, `TélNom`, `Prix`, `date`, `Status`) VALUES
(40, 6, 7, 'cheikh', 'Galaxy S20 Ultra', '15522UM', '2022-01-31 12:58:26', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cat` (`id_cat`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_cat`) REFERENCES `categories` (`cat_id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
