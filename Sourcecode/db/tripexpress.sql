-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 13, 2018 lúc 03:29 AM
-- Phiên bản máy phục vụ: 10.1.32-MariaDB
-- Phiên bản PHP: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tripexpress`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `tour_back_id` varchar(166) NOT NULL,
  `returning` enum('1','2') NOT NULL DEFAULT '1',
  `client_firstname` varchar(50) NOT NULL,
  `client_lastname` varchar(50) NOT NULL,
  `identification_nr` varchar(166) NOT NULL,
  `booked_seats` int(2) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bookings`
--

INSERT INTO `bookings` (`booking_id`, `tour_id`, `tour_back_id`, `returning`, `client_firstname`, `client_lastname`, `identification_nr`, `booked_seats`, `created_by`, `modified_by`, `created_time`, `status`) VALUES
(7, 1, '', '1', 'DO', 'tu', '', 0, 2, 0, '2018-08-06 08:42:38', 0),
(8, 1, '', '1', 'Do', 'TIm', '', 0, 2, 0, '2018-08-06 08:42:38', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `iso` varchar(3) NOT NULL,
  `symbol` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `currency`
--

INSERT INTO `currency` (`currency_id`, `iso`, `symbol`) VALUES
(1, 'USD', '$'),
(2, 'EUR', 'â‚¬'),
(3, 'GBP', 'Â£'),
(4, 'CHF', 'Fr'),
(5, 'AUD', '$'),
(6, 'CAD', '$');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `destinations`
--

CREATE TABLE `destinations` (
  `destination_id` int(11) NOT NULL,
  `city` varchar(50) NOT NULL,
  `iso` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `destinations`
--

INSERT INTO `destinations` (`destination_id`, `city`, `iso`) VALUES
(1, 'Hanoi', 'HAN'),
(2, 'Noibai Airport', 'NBA');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `company_name` varchar(50) NOT NULL,
  `company_street` varchar(50) NOT NULL,
  `company_zip` varchar(50) NOT NULL,
  `company_city` varchar(50) NOT NULL,
  `company_state` varchar(50) NOT NULL,
  `company_phone_one` varchar(50) NOT NULL,
  `company_phone_two` varchar(50) NOT NULL,
  `company_email` varchar(50) NOT NULL,
  `company_rules` text NOT NULL,
  `company_currency` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`company_name`, `company_street`, `company_zip`, `company_city`, `company_state`, `company_phone_one`, `company_phone_two`, `company_email`, `company_rules`, `company_currency`) VALUES
('Asia Travel', 'Hanoi', '084', 'Hanoi', 'HAN', '73066669', '73066669', 'support@asia-travel.com.vn', '2) bibendum quam. Morbi at dui dignissim, auctor turpis id, tempus nulla. Mauris tincidunt ac purus nec dapibus. Mauris dapibus sed urna id placerat. Curabitur in interdum lacus. In hac\r\n3) habitasse platea dictumst. Curabitur placerat quis nibh eu viverra. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n4) Vestibulum posuere, tellus quis consectetur interdum, purus nisl molestie velit, lacinia hendrerit sapien justo id neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per\r\n5) inceptos himenaeos. Sed ornare ligula nisl, a laoreet nisi molestie at. Aliquam eu orci arcu. In dictum quam id lacinia pellentesque. Cras a varius lacus. Suspendisse sagittis risus eget\r\nvolutpat bibendum. Suspendisse facilisis urna sit amet diam viverra porta non a ante. Vivamus vel volutpat libero.\r\nFusce consequat mi erat, vel pharetra quam gravida sit amet. Integer interdum mi eu nibh ultrices laoreet. Aliquam massa eros, tempor mattis dapibus eget, commodo at diam. Maecenas\r\n6) sagittis ex nec arcu ultrices interdum. Maecenas tortor arcu, eleifend in elementum vel, sagittis id risus. Suspendisse suscipit lectus et odio viverra convallis. Lorem ipsum dolor sit amet,\r\nconsectetur adipiscing elit. Vestibulum eget justo maximus, pretium elit quis, consectetur odio. Aenean rhoncus blandit erat, ac ultrices purus tincidunt in. Integer quam arcu, blandit et\r\nauctor et, vestibulum in massa. In dictum lacus nec nisi ornare sodales. Nunc et nisi ex.\r\n7) Vestibulum tempus, justo sit amet varius molestie, metus eros sollicitudin odio, id ullamcorper nulla lectus in orci. Proin ac mi mauris. Aenean maximus vitae dui eu scelerisque. Ut\r\nfaucibus pharetra sem, lacinia blandit erat porttitor eu. Nunc et sollicitudin massa. Sed eu imperdiet tellus. Quisque ut facilisis lacus. Donec ut justo eget nulla interdum aliquam. Etiam a\r\nex nec urna varius interdum. Cras dictum ante in nunc tristique, nec lacinia sapien tempor. Aliquam sit amet orci quis arcu rutrum ornare. Fusce condimentum tempor ipsum id cursus.\r\nPellentesque sed malesuada libero.\r\nDonec quis dolor neque. Vivamus vulputate scelerisque nisl, at consectetur felis semper vel. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;\r\n8) Maecenas dapibus risus sit amet fringilla pretium. Suspendisse non interdum erat, at cursus est. Morbi porttitor dapibus tempus. Duis vulputate et dui sit amet imperdiet', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tours`
--

CREATE TABLE `tours` (
  `tour_id` int(11) NOT NULL,
  `from` int(50) NOT NULL,
  `to` int(50) NOT NULL,
  `from_start_time` datetime NOT NULL,
  `available_seats` int(5) NOT NULL,
  `start_price` decimal(10,2) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tours`
--

INSERT INTO `tours` (`tour_id`, `from`, `to`, `from_start_time`, `available_seats`, `start_price`, `date_created`) VALUES
(1, 1, 2, '2018-08-06 05:00:00', 8, '120000.00', '2018-08-06 08:40:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` tinyint(4) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '0 - Administrator, 1 - Worker, 2 - Reseller',
  `language` varchar(20) NOT NULL,
  `blocked` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `role`, `language`, `blocked`) VALUES
(1, 'John', 'Doe', 'admin', 'youremail@example.com', '2ab64f4ee279e5baf7ab7059b15e6d12', '0', 'english', '0'),
(2, 'agent', 'hoankiem', 'agent1', 'agent1@yahoo.com', 'e99a18c428cb38d5f260853678922e03', '2', '', '0');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Chỉ mục cho bảng `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`destination_id`);

--
-- Chỉ mục cho bảng `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`tour_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `destinations`
--
ALTER TABLE `destinations`
  MODIFY `destination_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tours`
--
ALTER TABLE `tours`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
