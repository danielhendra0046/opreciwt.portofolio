-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2020 at 05:07 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(24, 'Daniel Hendra A', 'danielandriyanto@gmail.com', 'default.jpg', '$2y$10$9NN87n1ou9C5dq7RnzaKW.1u22wH6Vqo3jHjhz0Nx8yVSap5IJksO', 1, 1, 1602511361),
(25, 'Daniel 44', 'danielandriyanto@yahoo.co.id', 'default.jpg', '$2y$10$2FxBYEyI6dOg3WODkuPtHe.Pts1/ehXpc6QnjRo/APNseMrG9eA9S', 2, 1, 1602514001);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(7, 1, 6),
(10, 6, 6),
(11, 1, 3),
(13, 1, 7),
(14, 1, 8),
(15, 1, 9),
(16, 9, 9),
(18, 8, 8),
(19, 8, 2),
(20, 7, 7),
(21, 7, 2),
(22, 1, 10),
(23, 2, 10),
(24, 6, 2),
(25, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Servermaster'),
(2, 'User'),
(3, 'Menu'),
(6, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Servermaster'),
(2, 'User'),
(6, 'Administrator'),
(7, 'Finalist'),
(8, 'Participant'),
(9, 'Blocked');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'servermaster', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'Profile', 'user', 'fas fa-fw fa-users', 1),
(4, 3, 'Menu Management', 'Menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'far fa-fw fa-folder-open', 1),
(7, 1, 'Role', 'servermaster/role', 'fas fa-fw fa-user-tie', 1),
(8, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(9, 6, 'List Pengguna Website', 'admin', 'far fa-fw fa-thumbs-up', 0),
(16, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(17, 6, 'Detail Peserta', 'admin/detail', 'fab fa-fw fa-youtube', 0),
(18, 6, 'Ubah Role', 'admin/rolechanger', 'fab fa-fw fa-youtube', 0),
(20, 6, 'Portofolio Daniel', 'admin/portofolio', 'fas fa-fw fa-folder', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(2, 'danielandriyanto@gmail.com', 'PUX7MM0C4PhKTrWGP6OAgg0+/vNcjWBXKnj/utgur4Y=', 1598428941),
(3, 'danielandriyanto@yahoo.co.id', 'd/JJsqjdkJYNNpuPXRn7ChIqoMerQt0KjPT4e0jFuUo=', 1598452172),
(4, 'danielandriyanto@yahoo.co.id', '4TcZwGLNAXJ5uYB2SJ21X3zeRC7gw+ckjtpQWKazG/I=', 1598622243),
(5, 'danielandriyanto@yahoo.co.id', 'SF8R8lFYVFYu1/L2wcpyXhDcKWv5tSDAYvN2zeiiW8o=', 1598622722),
(6, 'danielandriyanto@yahoo.co.id', '86LxQ3NI3QdMbVAfYTbROmS/DAdHtW/wa39qAv6mE/Q=', 1598622785),
(7, 'danielhendra08@gmail.com', 'qX5zeSCDE97ZTJYmCBaYxl+3qj0s3xl/bJAzex9iMJQ=', 1598890438),
(8, 'danielhendra08@gmail.com', '8j4Y5RTd0RY8sWQMDSJIu6goCSMvUbFeFxkyMLVMLYk=', 1598890561),
(9, 'danielhendra08@gmail.com', 'uhJ66SFLNfKJZ/6ftN2+PKPCDA7Faj1Is+91DKJXAF0=', 1598890609),
(10, 'danielhendra08@gmail.com', 'oD/EJpMfUw413236bpSubV59c6ipSvxh2G6rqfrRJKU=', 1598890719),
(11, 'danielhendra08@gmail.com', 'xFvyk10nurguhsRZdFxomQoDe13PMC6oB/kC1l3/Rks=', 1598891486),
(12, 'danielhendra08@gmail.com', 'rJ6Nj8lFe0NOXHy66wMXtFVEE9qvms5uysmReuKCfVo=', 1598891583),
(13, 'danielhendra08@gmail.com', 'PaTlcj0CfO4SCYOZOlevSeCwC6pu66umBzQt6l44ULY=', 1598891844),
(14, 'danielhendra08@gmail.com', 'qC2l834XQsS4l5UgtIiZwQsFzrSndqE5O3mHqRY8iSA=', 1598892017),
(15, 'danielhendra08@gmail.com', 'utl95iQNN8ys/K+uz4emmxAW1vHmiNadvNRLmYkyasQ=', 1598892255),
(16, 'danielandriyanto@gmail.com', 'YSg9Qgbl94kj7w2g7rU7F0W7rva3UuNScECRClQxi0I=', 1598893949),
(17, 'danielandriyanto@yahoo.co.id', 'BLeAbTjiF5S1KoCjp0XGNLrWztbgwjtJGD2f+LR0yJQ=', 1598967111),
(18, 'asdasdasd@gmail.com', 'kCP4TtzzdXazYW4tchNo5XLXG0/0UVooejbV6m8Irj4=', 1598977368),
(19, 'danielandriyanto@gmail.com', 'WmihpVAYnpqgF4QqkOvGODR/MS9lZHcftlZQE+FTIT4=', 1602511361),
(20, 'danielandriyanto@yahoo.co.id', '8H2ThkCTgAll70ZQIkv8bn6/Y2wI69j2HF1menXwAxI=', 1602514001);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
