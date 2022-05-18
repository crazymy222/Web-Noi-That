-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 18, 2022 lúc 08:33 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mvc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `img`) VALUES
(1, 'Table', 'table.jpg'),
(2, 'Chair', 'chair.jpg'),
(3, 'Lighting', 'lighting.jpg'),
(4, 'Bedding', 'bedding.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` int(11) NOT NULL,
  `material` varchar(50) NOT NULL,
  `origin` varchar(20) NOT NULL,
  `img` varchar(100) NOT NULL,
  `price` decimal(15,0) NOT NULL,
  `sale` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `material`, `origin`, `img`, `price`, `sale`) VALUES
(1, 'Table 1', 1, 'Wooden', 'Viet Nam', 'table-1.jpg', '350', '0.10'),
(2, 'Chair 1', 2, 'Wooden', 'Viet Nam', 'chair-1.jpg', '360', '0.00'),
(3, 'Light 1', 3, 'Steel', 'Viet Nam', 'light-1.jpg', '250', '0.00'),
(4, 'Bed 1', 4, 'Wooden', 'Viet Nam', 'bed-1.jpg', '750', '0.00'),
(7, 'Chair 2', 2, 'Wooden', 'Viet Nam', 'chair-2.jpg', '400', '0.15'),
(8, 'Table 2', 1, 'Wooden', 'Viet Nam', 'table-2.jpg', '300', '0.00'),
(9, 'Light 2', 3, 'Wooden', 'Viet Nam', 'light-2.jpg', '200', '0.00'),
(10, 'Bed 2', 4, 'Wooden', 'Viet Nam', 'bed-2.jpg', '700', '0.10'),
(11, 'Table 3', 1, 'Wooden', 'Viet Nam', 'table-3.jpg', '460', '0.00'),
(12, 'Chair 3', 2, 'Wooden', 'Viet Nam', 'chair-3.jpg', '410', '0.00'),
(13, 'Light 3', 3, 'Steel', 'Viet Nam', 'light-3.jpg', '360', '0.00'),
(14, 'Bed 3', 4, 'Wooden', 'Viet Nam', 'bed-3.jpg', '900', '0.15'),
(15, 'Table 4', 1, 'Wooden', 'Viet Nam', 'table-4.jpg', '600', '0.00'),
(16, 'Chair 4', 2, 'Wooden', 'Viet Nam', 'chair-4.jpg', '370', '0.00'),
(17, 'Light 4', 3, 'Steel', 'Viet Nam', 'light-4.jpg', '400', '0.00'),
(18, 'Bed 4', 4, 'Wooden', 'Viet Nam', 'bed-4.jpg', '780', '0.00'),
(19, 'Table 5', 1, 'Wooden', 'Viet Nam', 'table-5.jpg', '550', '0.00'),
(20, 'Chair 5', 2, 'Wooden', 'Viet Nam', 'chair-5.jpg', '430', '0.20'),
(21, 'Light 5', 3, 'Steel', 'Viet Nam', 'light-5.jpg', '500', '0.00'),
(22, 'Bed 5', 4, 'Wooden', 'Viet Nam', 'bed-5.jpg', '800', '0.00'),
(23, 'Table 6', 1, 'Wooden', 'Viet Nam', 'table-6.jpg', '400', '0.00'),
(24, 'Chair 6', 2, 'Wooden', 'Viet Nam', 'chair-6.jpg', '400', '0.00'),
(25, 'Light 6', 3, 'Steel', 'Viet Nam', 'light-6.jpg', '330', '0.15'),
(26, 'Bed 6', 4, 'Wooden', 'Viet Nam', 'bed-6.jpg', '770', '0.00'),
(27, 'Table 7', 1, 'Wooden', 'Viet Nam', 'table-7.jpg', '420', '0.20'),
(28, 'Chair 7', 2, 'Wooden', 'Viet Nam', 'chair-7.jpg', '530', '0.00'),
(29, 'Light 7', 3, 'Steel', 'Viet Nam', 'light-7.jpg', '200', '0.00'),
(30, 'Bed 7', 4, 'Wooden', 'Viet Nam', 'bed-7.jpg', '500', '0.00'),
(31, 'Table 8', 1, 'Wooden', 'Viet Nam', 'table-8.jpg', '450', '0.15'),
(32, 'Chair 8', 2, 'Wooden', 'Viet Nam', 'chair-8.jpg', '440', '0.00'),
(33, 'Light 8', 3, 'Steel', 'Viet Nam', 'light-8.jpg', '300', '0.00'),
(34, 'Bed 8', 4, 'Wooden', 'Viet Nam', 'bed-8.jpg', '1000', '0.00'),
(35, 'Table 9', 1, 'Wooden', 'Viet Nam', 'table-9.jpg', '630', '0.00'),
(36, 'Chair 9', 2, 'Wooden', 'Viet Nam', 'chair-9.jpg', '360', '0.15'),
(37, 'Light 9', 3, 'Steel', 'Viet Nam', 'light-9.jpg', '330', '0.00'),
(38, 'Bed 9', 4, 'Wooden', 'Viet Nam', 'bed-9.jpg', '760', '0.00'),
(39, 'Table 10', 1, 'Wooden', 'Viet Nam', 'table-10.jpg', '670', '0.00'),
(40, 'Chair 10', 2, 'Wooden', 'Viet Nam', 'chair-10.jpg', '460', '0.00'),
(41, 'Light 10', 3, 'Steel', 'Viet Nam', 'light-10.jpg', '270', '0.00'),
(42, 'Bed 10', 4, 'Wooden', 'Viet Nam', 'bed-10.jpg', '740', '0.15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fullname`, `address`) VALUES
(2, 'âd', '$2y$10$u1UdjyKorPKfNzkzykzi4O75cy92PEyMvejH/AjJMvADWDKR7xry.', 'a@dff', 'ád@', 'd'),
(3, 'asdasd', '$2y$10$gD92sh4GOO7Iluo4ePrQfOBFOvBL/aO6wJ11SGxeLsq42UQwPLiny', 'asdasd@sfsdf.com', 'aaaa', 'ddde'),
(4, 'asdasd', '$2y$10$hJEa8.rjeDfGVdcvc5vwSeGaw/aGGEwI6/4d8UskiP4nn5LbUEOqO', 'asdasd@sfsdf.com', 'aaaa', 'ddde'),
(5, 'asdasd', '$2y$10$4wnyiT2gulEeXiposu2oaePB6qRowc5c9.n6tMByyDxSdVmGryuWi', 'asdasd@sfsdf.com', 'aaaa', 'ddde'),
(6, 'asdasd', '$2y$10$MLpnUk1XfAbhBhN7y0W16.s7uCly.EnlePWixpaYtAb75BgjWSlYi', 'asdasd@sfsdf.com', 'aaaa', 'ddde'),
(7, 'asdasd', '$2y$10$s9fydFxg.FbbD49vPTFjFeMlHK90kPusd/qWOtNU.QWBPIWDYwMbO', 'asdasd@sfsdf.com', 'aaaa', 'ddde'),
(8, 'asdasd', '$2y$10$YOWA8eoWGQmKm.86AOuDT.gXhFwsEghr8uwi2zjbJZ81Bi.hlkzo.', 'asdasd@sfsdf.com', 'aaaa', 'ddde'),
(9, 'asdasd', '$2y$10$jZa4hLMNxPvuPoTnWzaGgug2W2E0Iogns.eooX1g.aRSS6JTXM5jy', 'asdasd@sfsdf.com', 'aaaa', 'ddde'),
(10, 'asdasd', '$2y$10$PNKfZnDqfdx4vFS8cw3aZOmM/O0MLatuIfl1ZqxubX3s1welDzPv2', 'asdasd@sfsdf.com', 'aaaa', 'ddde'),
(11, 'asdasd', '$2y$10$KhpX/QKkpP6sDaRmoBJycucKD.2kK/VFgvT0buf83w.YGm/Ao5dQC', 'asdasd@sfsdf.com', 'aaaa', 'ddde'),
(12, 'asdasd', '$2y$10$mCT8PwECs9I5pFjb4x9dPeCQVmhGbQhuRINB/M.dzaGGS7nERCUtO', 'asdasd@sfsdf.com', 'aaaa', 'ddde'),
(13, 'asdasd', '$2y$10$5w6HZ26AG5ycNJo.UsfTYOagR9D15H7H2ZBC1yL8xV0drnnVvE.4C', 'asdasd@sfsdf.com', 'aaaa', 'ddde');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
