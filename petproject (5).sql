-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th5 12, 2025 lúc 06:52 PM
-- Phiên bản máy phục vụ: 9.0.1
-- Phiên bản PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `petproject`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `customer_id`, `email`, `password`) VALUES
(1, 1, 'ngocancd2017@gmail.com', '$2b$10$rWXGPRwbF7DUIfRyVxYMBefv31lGdXizorYTkx7CH47aH9h2Pauga'),
(2, 2, 'ngocan', '1234'),
(3, 3, 'triquynh@gmail.com', 'triquynh\n'),
(4, 4, 'minh.tran@gmail.com', 'password123'),
(5, 5, 'lan.nguyen@gmail.com', 'securepass'),
(6, 6, 'nam.hoang@gmail.com', 'namhoang789'),
(7, 7, 'thu.pham@gmail.com', 'thu12345'),
(8, 8, 'duy.le@gmail.com', 'duyduy456'),
(10, 11, 'ngocan@gmail.com', '$2b$10$S3HLu6gaRq02z8v3gRPo5eX2yxo.f13dg1FS1J2lHhcfXBG8RXzjC'),
(11, 12, 'ngocancd2023@gmail.com', '$2b$10$DN5rh1rT7e6wDmqojDMPPesAIsHs7nBKX4q0fIe2JyEKL9QGE5zNO'),
(12, 13, 'ngohieukien12@gmail.com', '$2b$10$4kh2xImNIlGweMS7mIv9Fu/0FMT5kJsP2p./I0EoYSPNEVbvRIQD6');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account_employee`
--

DROP TABLE IF EXISTS `account_employee`;
CREATE TABLE IF NOT EXISTS `account_employee` (
  `account_employee_id` int NOT NULL,
  `employee_id` int DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`account_employee_id`),
  UNIQUE KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `account_employee`
--

INSERT INTO `account_employee` (`account_employee_id`, `employee_id`, `password`) VALUES
(1001234, 2, '1456'),
(1001314, 3, '4321'),
(1005678, 4, '8765'),
(1007891, 16, '1234'),
(1009101, 5, '1098');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `appointment_date` date NOT NULL,
  `hours` time DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `appointment`
--

INSERT INTO `appointment` (`id`, `appointment_date`, `hours`, `status`) VALUES
(17, '2025-03-27', '15:00:00', 'done'),
(18, '2025-03-27', '16:00:00', NULL),
(19, '2025-03-28', '16:00:00', NULL),
(20, '2025-03-28', '17:00:00', NULL),
(21, '2025-04-01', '10:00:00', 'pending'),
(22, '2025-04-02', '11:00:00', 'confirmed'),
(23, '2025-04-03', '14:00:00', 'pending'),
(24, '2025-04-04', '16:00:00', 'cancelled'),
(25, '2025-04-05', '17:30:00', 'done'),
(26, '2025-03-28', '14:00:00', NULL),
(27, '2025-04-11', '12:00:00', NULL),
(29, '2025-04-11', '19:00:00', 'done'),
(30, '2025-04-11', '21:00:00', 'done'),
(31, '2025-04-11', '13:00:00', NULL),
(32, '2025-04-11', '13:00:00', NULL),
(33, '2025-04-11', '16:00:00', NULL),
(34, '2025-04-14', '15:10:00', NULL),
(35, '2025-04-23', '14:00:00', NULL),
(36, '2025-04-23', '14:00:00', NULL),
(37, '2025-04-23', '14:00:00', NULL),
(38, '2025-04-23', '14:00:00', NULL),
(39, '2025-05-07', '11:53:00', NULL),
(40, '2025-05-07', '02:59:00', NULL),
(41, '2025-05-07', '04:59:00', NULL),
(42, '2025-05-07', '20:01:00', 'done'),
(43, '2025-05-22', '12:05:00', NULL),
(44, '2025-05-08', '14:36:00', 'done'),
(45, '2025-05-15', '19:07:00', NULL),
(46, '2025-05-09', '17:09:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `appointment_staff`
--

DROP TABLE IF EXISTS `appointment_staff`;
CREATE TABLE IF NOT EXISTS `appointment_staff` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appointment_id` int NOT NULL,
  `employee_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `appointment_id` (`appointment_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `appointment_staff`
--

INSERT INTO `appointment_staff` (`id`, `appointment_id`, `employee_id`) VALUES
(7, 17, 2),
(8, 18, 2),
(9, 19, 2),
(10, 20, 2),
(14, 29, 6),
(15, 30, 3),
(16, 31, 3),
(17, 32, 4),
(18, 33, 3),
(19, 34, 4),
(20, 35, 3),
(21, 36, 3),
(22, 37, 3),
(23, 38, 3),
(24, 39, 3),
(25, 40, 4),
(26, 41, 4),
(27, 42, 2),
(28, 43, 3),
(29, 44, 2),
(30, 45, 3),
(31, 46, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `first_name`, `last_name`, `address`, `phone`, `image`) VALUES
(1, 'nguyễn', 'Ngọc Ân ', '123 q3', '0924456712', '1746513163944.jpg'),
(2, 'ngo', 'can', '123 q8', '123456789', NULL),
(3, 'tri', 'quynh', '180 cao lo', '123456719', '1744519424672.jpg'),
(4, 'Minh', 'Trần', '456 Lê Lợi', '0987654321', NULL),
(5, 'Lan', 'Nguyễn', '789 Trần Phú', '0912345678', NULL),
(6, 'Nam', 'Hoàng', '321 Nguyễn Huệ', '0909090909', NULL),
(7, 'Thu', 'Phạm', '654 Hai Bà Trưng', '0922334455', NULL),
(8, 'Duy', 'Lê', '987 Phạm Văn Đồng', '0966778899', NULL),
(11, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `employee`
--

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `email`, `address`, `phone`, `role`, `img`) VALUES
(2, 'gia', 'bao', 'giabao@gmail.com', '123 q9 hcm', '0923481946', 'doctor', '1745226821624.jpg'),
(3, 'Hiếuuu', 'Nguyễn', 'hieu.nguyen@gmail.com', '123 Bạch Đằng', '0901234567', 'doctor', '1745395363026.jpg'),
(4, 'Anh', 'Trần', 'anh.tran@gmail.com', '456 Lê Văn Sỹ', '0912345678', 'quit', '1745227466476.jpg'),
(5, 'Tuấn', 'Lê', 'tuan.le@gmail.com', '789 Lý Thường Kiệt', '0923456789', 'admin', '1745395769882.jpg'),
(6, 'Linh', 'Phạm', 'linh.pham@gmail.com', '654 Đinh Tiên Hoàng', '0934567890', 'quit', '1745399733606.jpg'),
(7, 'Khanggz', 'Đỗ', 'khang.do@gmail.com', '987 Trần Quang Khải', '0945678901', 'quit', '1745400168847.png'),
(16, NULL, NULL, NULL, NULL, NULL, 'quit', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pet`
--

DROP TABLE IF EXISTS `pet`;
CREATE TABLE IF NOT EXISTS `pet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `breed` varchar(10) DEFAULT NULL,
  `age` int NOT NULL,
  `customer_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `pet`
--

INSERT INTO `pet` (`id`, `name`, `breed`, `age`, `customer_id`) VALUES
(1, 'zinh', 'meo', 22, 1),
(2, 'kien', 'cho', 22, 1),
(3, 'quan', 'meo', 12, 2),
(4, 'Milo', 'chó', 3, 4),
(5, 'Kitty', 'mèo', 2, 5),
(6, 'Bun', 'thỏ', 1, 6),
(7, 'Rocky', 'chó', 5, 7),
(8, 'Luna', 'mèo', 4, 8),
(9, 'a', 'meo', 2, 1),
(10, 'b', 'meo', 3, 1),
(11, 'physical', 'meo', 34, 1),
(12, 'messingo', 'cho', 2, 13),
(13, 'zinh', 'meo', 3, 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `registration_form`
--

DROP TABLE IF EXISTS `registration_form`;
CREATE TABLE IF NOT EXISTS `registration_form` (
  `id` int NOT NULL AUTO_INCREMENT,
  `appointment_date` date NOT NULL,
  `hours` time DEFAULT NULL,
  `customer_id` int NOT NULL,
  `appointment_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `appointment_id` (`appointment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `registration_form`
--

INSERT INTO `registration_form` (`id`, `appointment_date`, `hours`, `customer_id`, `appointment_id`) VALUES
(17, '2025-03-27', '15:00:00', 1, 17),
(18, '2025-03-27', '16:00:00', 2, 18),
(19, '2025-03-28', '16:00:00', 1, 19),
(20, '2025-03-28', '17:00:00', 1, 20),
(21, '2025-03-28', '14:00:00', 5, 26),
(22, '2025-04-11', '12:00:00', 4, 27),
(24, '2025-04-11', '19:00:00', 5, 29),
(25, '2025-04-11', '21:00:00', 7, 30),
(26, '2025-04-11', '13:00:00', 5, 31),
(27, '2025-04-11', '13:00:00', 7, 32),
(28, '2025-04-11', '16:00:00', 4, 33),
(29, '2025-04-14', '15:10:00', 1, 34),
(30, '2025-04-23', '14:00:00', 1, 35),
(31, '2025-04-23', '14:00:00', 1, 36),
(32, '2025-04-23', '14:00:00', 1, 37),
(33, '2025-04-23', '14:00:00', 1, 38),
(34, '2025-05-07', '11:53:00', 1, 39),
(35, '2025-05-07', '02:59:00', 1, 40),
(36, '2025-05-07', '04:59:00', 1, 41),
(37, '2025-05-07', '20:01:00', 1, 42),
(38, '2025-05-22', '12:05:00', 1, 43),
(39, '2025-05-08', '14:36:00', 1, 44),
(40, '2025-05-15', '19:07:00', 13, 45),
(41, '2025-05-09', '17:09:00', 13, 46);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int NOT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`id`, `name`, `price`, `description`) VALUES
(1, 'tiem phong ', 120, 'phong ngua con hon bo xot '),
(2, 'tắm ', 30000, 'tắm cho thú cưng'),
(3, 'Khám tổng quát', 50000, 'Khám sức khỏe cơ bản cho thú cưng'),
(4, 'Tiêm phòng', 100000, 'Tiêm phòng định kỳ cho thú cưng'),
(5, 'Chăm sóc lông', 70000, 'Dịch vụ chăm sóc lông bao gồm tắm và cắt móng'),
(6, 'Vệ sinh răng miệng', 80000, 'Làm sạch răng chuyên sâu cho thú cưng'),
(7, 'Điều trị da', 120000, 'Điều trị dị ứng và nhiễm trùng da'),
(8, 'Tỉa Lông', 20000, 'cắt tỉa lông của thú cưng một cách đẹp nhất');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `visit`
--

DROP TABLE IF EXISTS `visit`;
CREATE TABLE IF NOT EXISTS `visit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `notes` longtext,
  `customer_id` int NOT NULL,
  `pet_id` int NOT NULL,
  `employee_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `pet_id` (`pet_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `visit`
--

INSERT INTO `visit` (`id`, `date`, `notes`, `customer_id`, `pet_id`, `employee_id`) VALUES
(12, '2025-03-21 15:00:00.000000', 'done', 2, 3, 2),
(20, '2025-04-18 23:58:27.000000', 'asd', 5, 5, 7),
(21, '2025-04-05 23:58:27.000000', 'asdasd', 1, 2, 5),
(22, '2025-04-19 10:30:00.000000', 'Khách hàng yêu cầu chăm sóc thú cưng sau khi tiêm phòng.', 1, 2, 4),
(23, '2025-04-19 03:48:01.720262', '123qse', 1, 2, 4),
(24, '2025-04-19 03:48:01.720262', '123qse', 1, 1, 2),
(25, '2025-04-19 09:39:52.132571', 'asd', 2, 3, 7),
(26, '2025-04-19 15:04:05.137346', 'hehe', 1, 1, 6),
(27, '2025-04-28 00:00:00.000000', 'zzzz', 1, 1, 3),
(28, '2025-04-29 00:00:00.000000', '1244ss', 1, 2, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `visit_service`
--

DROP TABLE IF EXISTS `visit_service`;
CREATE TABLE IF NOT EXISTS `visit_service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `visit_id` int NOT NULL,
  `service_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `visit_id` (`visit_id`),
  KEY `service_id` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `visit_service`
--

INSERT INTO `visit_service` (`id`, `visit_id`, `service_id`) VALUES
(1, 12, 1),
(2, 12, 2),
(3, 22, 2),
(4, 22, 3),
(5, 22, 5),
(6, 23, 5),
(7, 23, 6),
(8, 24, 5),
(9, 24, 6),
(10, 24, 7),
(11, 25, 2),
(12, 26, 7),
(13, 26, 3),
(15, 27, 7),
(16, 28, 1);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `account_employee`
--
ALTER TABLE `account_employee`
  ADD CONSTRAINT `account_employee_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `appointment_staff`
--
ALTER TABLE `appointment_staff`
  ADD CONSTRAINT `appointment_staff_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`id`),
  ADD CONSTRAINT `appointment_staff_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

--
-- Các ràng buộc cho bảng `pet`
--
ALTER TABLE `pet`
  ADD CONSTRAINT `pet_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `registration_form`
--
ALTER TABLE `registration_form`
  ADD CONSTRAINT `registration_form_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `registration_form_ibfk_2` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`id`);

--
-- Các ràng buộc cho bảng `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `visit_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `visit_ibfk_2` FOREIGN KEY (`pet_id`) REFERENCES `pet` (`id`),
  ADD CONSTRAINT `visit_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

--
-- Các ràng buộc cho bảng `visit_service`
--
ALTER TABLE `visit_service`
  ADD CONSTRAINT `visit_service_ibfk_1` FOREIGN KEY (`visit_id`) REFERENCES `visit` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `visit_service_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
