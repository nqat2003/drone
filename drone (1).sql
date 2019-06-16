-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 16, 2019 lúc 07:18 AM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `drone`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `catename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `catename`, `created_at`, `updated_at`) VALUES
(1, 'Ví', NULL, NULL),
(2, 'Laptop', NULL, NULL),
(3, 'Thú cưng', NULL, NULL),
(4, 'Điện thoại', NULL, NULL),
(5, 'Thẻ ATM', NULL, NULL),
(6, 'Giấy tờ tùy thân', NULL, NULL),
(7, 'Khác', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `city` text NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `country` text NOT NULL,
  `iso2` varchar(5) NOT NULL,
  `admin` varchar(30) NOT NULL,
  `population` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `city`
--

INSERT INTO `city` (`id`, `city`, `lat`, `lng`, `country`, `iso2`, `admin`, `population`) VALUES
(1, 'hcmcity', 10.7766, 106.701, 'Vietnam', 'VN', 'TP Hồ chí Minh', 5314000),
(2, 'Hanoi', 21.0282, 105.854, 'Vietnam', 'VN', 'Hà Nội', 4378000),
(3, 'Haiphong', 20.8648, 106.683, 'Vietnam', 'VN', 'Hải Phòng', 1969000),
(4, 'Cần Thơ', 10.0371, 105.788, 'Vietnam', 'VN', 'Cần Thơ', 1121000),
(5, 'Danang', 16.0748, 108.224, 'Vietnam', 'VN', 'Đà Nẵng', 1000000),
(6, 'Huế', 16.4619, 107.595, 'Vietnam', 'VN', 'Thừa Thiên', 950000),
(7, 'Quy Nhơn', 13.7689, 109.229, 'Vietnam', 'VN', 'Bình Định', 805290),
(8, 'Hiệp Hòa', 10.9333, 106.833, 'Vietnam', 'VN', 'Đồng Nai', 652646),
(9, 'Phú Vinh', 18.7167, 105.7, 'Vietnam', 'VN', 'Nghệ An', 593645),
(10, 'Thành Phố Thái Nguyên', 21.5942, 105.848, 'Vietnam', 'VN', 'Thái Nguyê', 500000),
(11, 'Nha Trang', 12.2481, 109.194, 'Vietnam', 'VN', 'Khánh Hòa', 411556),
(12, 'Cà Mau', 9.17682, 105.152, 'Vietnam', 'VN', 'Cà Mau', 356636),
(13, 'Việt Trì', 21.3227, 105.402, 'Vietnam', 'VN', 'Phú Thọ', 350000),
(14, 'Long Xuyên', 10.3864, 105.435, 'Vietnam', 'VN', 'An Giang', 350000),
(15, 'Buôn Ma Thuột', 12.6742, 108.044, 'Vietnam', 'VN', 'Đắk Lắk', 349945),
(16, 'Phan Thiết', 10.9289, 108.102, 'Vietnam', 'VN', 'Bình Thuận', 336846),
(17, 'Xóm Rạch Giồng', 10.0333, 105.067, 'Vietnam', 'VN', 'Kiến Giang', 300000),
(18, 'Sóc Trăng', 9.59995, 105.972, 'Vietnam', 'VN', 'Sóc Trăng', 300000),
(19, 'Đà Lạt', 11.9359, 108.443, 'Vietnam', 'VN', 'Lâm Đồng', 256019),
(20, 'Quảng Ngãi', 15.1205, 108.792, 'Vietnam', 'VN', 'Quảng Ngãi', 250000),
(21, 'Vũng Tàu', 10.35, 107.067, 'Vietnam', 'VN', 'Bà Rịa-Vũn', 248767),
(22, 'Thủ Dầu Một', 10.9804, 106.652, 'Vietnam', 'VN', 'Bình Dương', 244277),
(23, 'Thành Phố Nam Định', 20.4339, 106.177, 'Vietnam', 'VN', 'Nam Định', 243186),
(24, 'Thành phố Bạc Liêu', 9.29414, 105.728, 'Vietnam', 'VN', 'Bạc Liêu', 225000),
(25, 'Thành Phố Thái Bình', 20.45, 106.34, 'Vietnam', 'VN', 'Thái Bình', 210000),
(26, 'Tinh Xa', 19.8, 105.783, 'Vietnam', 'VN', 'Thanh Hóa', 197551),
(27, 'Sơn Vi', 21.1167, 105.533, 'Vietnam', 'VN', 'Hà Nội', 189547),
(28, 'Động Hỏi', 17.5, 106.633, 'Vietnam', 'VN', 'Quảng Bình', 189265),
(29, 'Phan Rang-Tháp Chàm', 11.5643, 108.989, 'Vietnam', 'VN', 'Ninh Thuận', 179773),
(30, 'Hà Tĩnh', 18.3428, 105.906, 'Vietnam', 'VN', 'Hà Tĩnh', 165396),
(31, 'Cao Lãnh', 10.4602, 105.633, 'Vietnam', 'VN', 'Đồng Tháp', 149837),
(32, 'Thành Phố Lạng Sơn', 21.8526, 106.761, 'Vietnam', 'VN', 'Lạng Sơn', 148000),
(33, 'Cam Ranh', 11.9, 109.217, 'Vietnam', 'VN', 'Khánh Hòa', 146771),
(34, 'Plei Khưn', 13.95, 108.033, 'Vietnam', 'VN', 'Gia Lai', 142900),
(35, 'Tân An', 10.5359, 106.414, 'Vietnam', 'VN', 'Long An', 137498),
(36, 'Cẩm Phả Mines', 21.0167, 107.3, 'Vietnam', 'VN', 'Quảng Ninh', 135477),
(37, 'Trà Vinh', 9.94719, 106.342, 'Vietnam', 'VN', 'Trà Vinh', 131360),
(38, 'Thành Phố Ninh Bình', 20.2581, 105.98, 'Vietnam', 'VN', 'Ninh Bình', 130517),
(39, 'Tây Ninh', 11.31, 106.098, 'Vietnam', 'VN', 'Tây Ninh', 126370),
(40, 'Mỹ Hòa', 10.3789, 106.382, 'Vietnam', 'VN', 'Tiền Giang', 124143),
(41, 'Kon Tum', 14.3833, 107.983, 'Vietnam', 'VN', 'Kon Tum', 105489),
(42, 'Thành Phố Hòa Bình', 20.8172, 105.338, 'Vietnam', 'VN', 'Hòa Bình', 105260),
(43, 'An Long', 10.2845, 105.942, 'Vietnam', 'VN', 'Vĩnh Long', 103314),
(44, 'Yên Bái', 21.7229, 104.911, 'Vietnam', 'VN', 'Yên Bái', 96540),
(45, 'Quảng Trị', 16.75, 107.2, 'Vietnam', 'VN', 'Quảng Trị', 72722),
(46, 'Châu Phong', 10.7167, 105.133, 'Vietnam', 'VN', 'An Giang', 70239),
(47, 'Tuy Hòa', 13.0955, 109.321, 'Vietnam', 'VN', 'Phú Yên', 69596),
(48, 'Lào Cai', 22.4856, 103.971, 'Vietnam', 'VN', 'Lào Cai', 67206),
(49, 'Hàn Thượng', 20.95, 106.317, 'Vietnam', 'VN', 'Hải Dương', 58030),
(50, 'Bắc Giang', 21.2731, 106.195, 'Vietnam', 'VN', 'Bắc Giang', 53728),
(51, 'Nà Hoàng', 22.65, 106.25, 'Vietnam', 'VN', 'Cao Bằng', 41112),
(52, 'Thành Phố Hà Giang', 22.8233, 104.984, 'Vietnam', 'VN', 'Hà Giang', 38362),
(53, 'Thành Phố Tuyên Quang', 21.8236, 105.214, 'Vietnam', 'VN', 'Tuyên Quan', 36430),
(54, 'Bắc Kạn', 22.147, 105.835, 'Vietnam', 'VN', 'Bắc Kạn', 29227),
(55, 'Bản Lân', 21.3333, 103.9, 'Vietnam', 'VN', 'Sơn La', 19054),
(56, 'Đông Hà', 16.8176, 107.101, 'Vietnam', 'VN', 'Quảng Trị', 17662),
(57, 'Luân Châu', 21.7333, 103.317, 'Vietnam', 'VN', 'Điện Biên', 7335),
(58, 'Kiến Đức', 11.9922, 107.511, 'Vietnam', 'VN', 'Đắk Nông', 0),
(59, 'Kẻ Sặt', 20.9101, 106.148, 'Vietnam', 'VN', 'Hải Dương', 0),
(60, 'Lộc Bình', 21.7587, 106.923, 'Vietnam', 'VN', 'Lạng Sơn', 0),
(61, 'Phú Hòa', 14.1, 107.969, 'Vietnam', 'VN', 'Gia Lai', 0),
(62, 'Đại Nghĩa', 20.6867, 105.745, 'Vietnam', 'VN', 'Hà Nội', 0),
(63, 'Cẩm Xuyên', 18.2503, 106.001, 'Vietnam', 'VN', 'Hà Tĩnh', 0),
(64, 'Neo', 21.2005, 106.247, 'Vietnam', 'VN', 'Bắc Giang', 0),
(65, 'Thị Trấn Hùng Quốc', 22.829, 106.323, 'Vietnam', 'VN', 'Cao Bằng', 0),
(66, 'Tam Đảo', 21.3932, 105.614, 'Vietnam', 'VN', 'Vĩnh Phúc', 0),
(67, 'Tân Thạnh', 10.6067, 106.047, 'Vietnam', 'VN', 'Long An', 0),
(68, 'Phố Mới', 21.1533, 106.152, 'Vietnam', 'VN', 'Bắc Ninh', 0),
(69, 'Phát Diệm', 20.0905, 106.083, 'Vietnam', 'VN', 'Ninh Bình', 0),
(70, 'Vũng Liêm', 10.0958, 106.185, 'Vietnam', 'VN', 'Vĩnh Long', 0),
(71, 'Triệu Sơn', 19.8191, 105.604, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(72, 'Quảng Phú', 12.8196, 108.077, 'Vietnam', 'VN', 'Đắk Lắk', 0),
(73, 'Rừng Thông', 19.8191, 105.733, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(74, 'Mường Nhé', 22.1924, 102.458, 'Vietnam', 'VN', 'Điện Biên', 0),
(75, 'Sa Thầy', 14.4138, 107.793, 'Vietnam', 'VN', 'Kon Tum', 0),
(76, 'Gia Ray', 10.9261, 107.402, 'Vietnam', 'VN', 'Đồng Nai', 0),
(77, 'Ngọc Lặc', 20.0919, 105.368, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(78, 'Đạ Tẻh', 11.5115, 107.491, 'Vietnam', 'VN', 'Lâm Đồng', 0),
(79, 'Kỳ Sơn', 20.8867, 105.352, 'Vietnam', 'VN', 'Hòa Bình', 0),
(80, 'Thị Trấn Vĩnh Lộc', 22.1436, 105.272, 'Vietnam', 'VN', 'Tuyên Quan', 0),
(81, 'Tô Hạp', 12.0058, 108.949, 'Vietnam', 'VN', 'Khánh Hòa', 0),
(82, 'Khe Sanh', 16.6282, 106.739, 'Vietnam', 'VN', 'Quảng Trị', 0),
(83, 'Cái Nước', 8.94231, 105.014, 'Vietnam', 'VN', 'Cà Mau', 0),
(84, 'Khánh Vĩnh', 12.2835, 108.905, 'Vietnam', 'VN', 'Khánh Hòa', 0),
(85, 'Cầu Diễn', 21.0393, 105.767, 'Vietnam', 'VN', 'Hà Nội', 0),
(86, 'Chờ', 21.1949, 105.955, 'Vietnam', 'VN', 'Bắc Ninh', 0),
(87, 'Tiên Lãng', 20.7246, 106.554, 'Vietnam', 'VN', 'Hải Phòng', 0),
(88, 'Gò Quao', 9.7332, 105.274, 'Vietnam', 'VN', 'Kiến Giang', 0),
(89, 'Phú Quốc', 10.2161, 103.959, 'Vietnam', 'VN', 'Kiến Giang', 0),
(90, 'Vân Tùng', 22.4308, 105.997, 'Vietnam', 'VN', 'Bắc Kạn', 0),
(91, 'Quận Chín', 10.8397, 106.771, 'Vietnam', 'VN', 'Hồ Chí Min', 0),
(92, 'Ba Tri', 10.0443, 106.59, 'Vietnam', 'VN', 'Bến Tre', 0),
(93, 'Trà Ôn', 9.96261, 105.922, 'Vietnam', 'VN', 'Vĩnh Long', 0),
(94, 'Khoái Châu', 20.8391, 105.978, 'Vietnam', 'VN', 'Hưng Yên', 0),
(95, 'Nhà Bàng', 10.625, 105.009, 'Vietnam', 'VN', 'An Giang', 0),
(96, 'Thị Trấn Long Điền', 10.4856, 107.212, 'Vietnam', 'VN', 'Bà Rịa-Vũn', 0),
(97, 'Anh Sơn', 18.9325, 105.076, 'Vietnam', 'VN', 'Nghệ An', 0),
(98, 'Thị Trấn Ngan Dừa', 9.56703, 105.45, 'Vietnam', 'VN', 'Bạc Liêu', 0),
(99, 'Văn Quan', 21.8652, 106.539, 'Vietnam', 'VN', 'Lạng Sơn', 0),
(100, 'Lạc Dương', 12.0041, 108.419, 'Vietnam', 'VN', 'Lâm Đồng', 0),
(101, 'Chí Thạnh', 13.3084, 109.215, 'Vietnam', 'VN', 'Phú Yên', 0),
(102, 'Đống Đa', 21.0201, 105.831, 'Vietnam', 'VN', 'Hà Nội', 0),
(103, 'Ba Đình', 21.0341, 105.815, 'Vietnam', 'VN', 'Hà Nội', 0),
(104, 'Tân Trụ', 10.5127, 106.508, 'Vietnam', 'VN', 'Long An', 0),
(105, 'Bến Tre', 10.2415, 106.376, 'Vietnam', 'VN', 'Bến Tre', 0),
(106, 'Thốt Nốt', 10.2721, 105.534, 'Vietnam', 'VN', 'Cần Thơ', 0),
(107, 'Cầu Kè', 9.8724, 106.055, 'Vietnam', 'VN', 'Trà Vinh', 0),
(108, 'Cầu Giát', 19.146, 105.631, 'Vietnam', 'VN', 'Nghệ An', 0),
(109, 'Nàng Mau', 9.75129, 105.534, 'Vietnam', 'VN', 'Hậu Giang', 0),
(110, 'Tân Việt', 22.8641, 105.459, 'Vietnam', 'VN', 'Cao Bằng', 0),
(111, 'Pác Miầu', 22.8297, 105.493, 'Vietnam', 'VN', 'Cao Bằng', 0),
(112, 'Phú Thọ', 21.3996, 105.222, 'Vietnam', 'VN', 'Phú Thọ', 0),
(113, 'Mường Chiên', 21.8424, 103.566, 'Vietnam', 'VN', 'Sơn La', 0),
(114, 'Chợ Chu', 21.9072, 105.642, 'Vietnam', 'VN', 'Thái Nguyê', 0),
(115, 'Hậu Lộc', 19.9144, 105.886, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(116, 'Yên Thành', 18.9986, 105.471, 'Vietnam', 'VN', 'Nghệ An', 0),
(117, 'Cam Lâm', 12.054, 109.16, 'Vietnam', 'VN', 'Khánh Hòa', 0),
(118, 'Gia Lộc', 20.8678, 106.3, 'Vietnam', 'VN', 'Hải Dương', 0),
(119, 'Phú Lộc', 9.42838, 105.741, 'Vietnam', 'VN', 'Sóc Trăng', 0),
(120, 'Lộc Ninh', 11.8448, 106.591, 'Vietnam', 'VN', 'Bình Phước', 0),
(121, 'Gio Linh', 16.9248, 107.084, 'Vietnam', 'VN', 'Quảng Trị', 0),
(122, 'Điện Biên Đông', 21.2967, 103.22, 'Vietnam', 'VN', 'Điện Biên', 0),
(123, 'Tam Điệp', 20.1563, 105.917, 'Vietnam', 'VN', 'Ninh Bình', 0),
(124, 'Đức Phổ', 14.8136, 108.959, 'Vietnam', 'VN', 'Quảng Ngãi', 0),
(125, 'Đức Phong', 11.8135, 107.244, 'Vietnam', 'VN', 'Bình Phước', 0),
(126, 'Mộ Đức', 14.9551, 108.886, 'Vietnam', 'VN', 'Quảng Ngãi', 0),
(127, 'Nam Giang', 20.3332, 106.178, 'Vietnam', 'VN', 'Nam Định', 0),
(128, 'Đô Lương', 18.8985, 105.308, 'Vietnam', 'VN', 'Nghệ An', 0),
(129, 'Vũ Thư', 20.4367, 106.291, 'Vietnam', 'VN', 'Thái Bình', 0),
(130, 'Thị Trấn Yên Thế', 22.1108, 104.767, 'Vietnam', 'VN', 'Yên Bái', 0),
(131, 'Ea Drăng', 13.2045, 108.21, 'Vietnam', 'VN', 'Đắk Lắk', 0),
(132, 'Bình Minh', 10.0682, 105.822, 'Vietnam', 'VN', 'Vĩnh Long', 0),
(133, 'An Phú', 10.8159, 105.09, 'Vietnam', 'VN', 'An Giang', 0),
(134, 'An Lão', 14.6124, 108.89, 'Vietnam', 'VN', 'Bình Định', 0),
(135, 'Đồng Lê', 17.8839, 106.025, 'Vietnam', 'VN', 'Quảng Bình', 0),
(136, 'Lũng Hồ', 22.9848, 105.24, 'Vietnam', 'VN', 'Hà Giang', 0),
(137, 'Thị Trấn Yên Minh', 23.1179, 105.142, 'Vietnam', 'VN', 'Hà Giang', 0),
(138, 'Thị Trấn Đất Đỏ', 10.4909, 107.27, 'Vietnam', 'VN', 'Bà Rịa-Vũn', 0),
(139, 'Ea T’ling', 12.589, 107.896, 'Vietnam', 'VN', 'Đắk Nông', 0),
(140, 'Bút Sơn', 19.858, 105.855, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(141, 'Bích Động', 21.2742, 106.101, 'Vietnam', 'VN', 'Bắc Giang', 0),
(142, 'Phù Cát', 14.0032, 109.058, 'Vietnam', 'VN', 'Bình Định', 0),
(143, 'Phùng', 21.089, 105.659, 'Vietnam', 'VN', 'Hà Nội', 0),
(144, 'Tam Bình', 10.0481, 106, 'Vietnam', 'VN', 'Vĩnh Long', 0),
(145, 'Tĩnh Gia', 19.4464, 105.779, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(146, 'Phước Vĩnh', 11.2947, 106.795, 'Vietnam', 'VN', 'Bình Dương', 0),
(147, 'Long Thành', 10.7891, 106.95, 'Vietnam', 'VN', 'Đồng Nai', 0),
(148, 'Đầm Dơi', 8.99214, 105.196, 'Vietnam', 'VN', 'Cà Mau', 0),
(149, 'Thành Phố Hải Dương', 20.941, 106.333, 'Vietnam', 'VN', 'Hải Dương', 0),
(150, 'Thị Trấn Na Hang', 22.3492, 105.382, 'Vietnam', 'VN', 'Tuyên Quan', 0),
(151, 'Đăk Đoa', 13.995, 108.112, 'Vietnam', 'VN', 'Gia Lai', 0),
(152, 'Bắc Sơn', 21.9, 106.321, 'Vietnam', 'VN', 'Lạng Sơn', 0),
(153, 'Ia Pa', 13.5336, 108.455, 'Vietnam', 'VN', 'Gia Lai', 0),
(154, 'Châu Thành', 11.3117, 106.03, 'Vietnam', 'VN', 'Tây Ninh', 0),
(155, 'Me', 20.347, 105.836, 'Vietnam', 'VN', 'Ninh Bình', 0),
(156, 'Trới', 21.0314, 106.991, 'Vietnam', 'VN', 'Quảng Ninh', 0),
(157, 'Cái Nhum', 10.1741, 106.111, 'Vietnam', 'VN', 'Vĩnh Long', 0),
(158, 'Pleiku', 13.9833, 108, 'Vietnam', 'VN', 'Gia Lai', 0),
(159, 'Sơn Tây', 21.1405, 105.507, 'Vietnam', 'VN', 'Hà Nội', 0),
(160, 'Yên Định', 20.2015, 106.296, 'Vietnam', 'VN', 'Nam Định', 0),
(161, 'Lắk', 12.4109, 108.177, 'Vietnam', 'VN', 'Đắk Lắk', 0),
(162, 'A Lưới', 16.2723, 107.234, 'Vietnam', 'VN', 'Thừa Thiên', 0),
(163, 'Thạnh Mỹ', 15.7489, 107.837, 'Vietnam', 'VN', 'Quảng Nam', 0),
(164, 'Chư Ty', 13.8051, 107.696, 'Vietnam', 'VN', 'Gia Lai', 0),
(165, 'Thanh Lưu', 20.474, 105.953, 'Vietnam', 'VN', 'Hà Nam', 0),
(166, 'Ô Môn', 10.1097, 105.623, 'Vietnam', 'VN', 'Cần Thơ', 0),
(167, 'Thị Trấn Quảng Uyên', 22.695, 106.442, 'Vietnam', 'VN', 'Cao Bằng', 0),
(168, 'Phụng Hiệp', 9.77972, 105.734, 'Vietnam', 'VN', 'Hậu Giang', 0),
(169, 'Cù Lao Dung', 9.67314, 106.149, 'Vietnam', 'VN', 'Sóc Trăng', 0),
(170, 'Dương Minh Châu', 11.3841, 106.231, 'Vietnam', 'VN', 'Tây Ninh', 0),
(171, 'Giồng Trôm', 10.1502, 106.506, 'Vietnam', 'VN', 'Bến Tre', 0),
(172, 'Nam Sách', 20.9921, 106.336, 'Vietnam', 'VN', 'Hải Dương', 0),
(173, 'Thanh Hóa', 19.8, 105.767, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(174, 'Đinh Văn', 11.7862, 108.243, 'Vietnam', 'VN', 'Lâm Đồng', 0),
(175, 'Quảng Hà', 21.4506, 107.756, 'Vietnam', 'VN', 'Quảng Ninh', 0),
(176, 'Minh Long', 14.9322, 108.703, 'Vietnam', 'VN', 'Quảng Ngãi', 0),
(177, 'Thị Trấn Thất Khê', 22.2553, 106.474, 'Vietnam', 'VN', 'Lạng Sơn', 0),
(178, 'Vĩnh Thạnh', 14.1088, 108.784, 'Vietnam', 'VN', 'Bình Định', 0),
(179, 'Trà Bồng', 15.2557, 108.517, 'Vietnam', 'VN', 'Quảng Ngãi', 0),
(180, 'Cầu Gồ', 21.4768, 106.127, 'Vietnam', 'VN', 'Bắc Giang', 0),
(181, 'Thành Phố Sơn La', 21.3256, 103.919, 'Vietnam', 'VN', 'Sơn La', 0),
(182, 'Thị Trấn Na Sầm', 22.0564, 106.615, 'Vietnam', 'VN', 'Lạng Sơn', 0),
(183, 'Hương Sơn', 21.4601, 105.978, 'Vietnam', 'VN', 'Thái Nguyê', 0),
(184, 'Quan Sơn', 20.2591, 104.945, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(185, 'An Dương', 20.8638, 106.613, 'Vietnam', 'VN', 'Hải Phòng', 0),
(186, 'Đông Thành', 10.8922, 106.306, 'Vietnam', 'VN', 'Long An', 0),
(187, 'Gia Bình', 21.0594, 106.175, 'Vietnam', 'VN', 'Bắc Ninh', 0),
(188, 'Ba Đồn', 17.7535, 106.424, 'Vietnam', 'VN', 'Quảng Bình', 0),
(189, 'Biên Hòa', 10.9447, 106.824, 'Vietnam', 'VN', 'Đồng Nai', 0),
(190, 'Hưng Yên', 20.6464, 106.051, 'Vietnam', 'VN', 'Hưng Yên', 0),
(191, 'Thủ Thừa', 10.6023, 106.402, 'Vietnam', 'VN', 'Long An', 0),
(192, 'Hồ Xá', 17.0684, 107.005, 'Vietnam', 'VN', 'Quảng Trị', 0),
(193, 'Thị Trấn Bảo Lạc', 22.9492, 105.68, 'Vietnam', 'VN', 'Cao Bằng', 0),
(194, 'Kiên Lương', 10.2862, 104.646, 'Vietnam', 'VN', 'Kiến Giang', 0),
(195, 'Quốc Oai', 20.9902, 105.641, 'Vietnam', 'VN', 'Hà Nội', 0),
(196, 'Thị Trấn Xuân Hoà', 22.9024, 106.077, 'Vietnam', 'VN', 'Cao Bằng', 0),
(197, 'Thiên Tồn', 20.299, 105.952, 'Vietnam', 'VN', 'Ninh Bình', 0),
(198, 'Liên Hương', 11.2276, 108.724, 'Vietnam', 'VN', 'Bình Thuận', 0),
(199, 'Hương Trà', 16.5254, 107.476, 'Vietnam', 'VN', 'Thừa Thiên', 0),
(200, 'Hòa Mạc', 20.6417, 105.989, 'Vietnam', 'VN', 'Hà Nam', 0),
(201, 'Tri Tôn', 10.4202, 105.001, 'Vietnam', 'VN', 'An Giang', 0),
(202, 'Nghi Xuân', 18.6621, 105.756, 'Vietnam', 'VN', 'Hà Tĩnh', 0),
(203, 'Thứ Mười Một', 9.61145, 104.947, 'Vietnam', 'VN', 'Kiến Giang', 0),
(204, 'Chợ Mới', 10.5512, 105.404, 'Vietnam', 'VN', 'An Giang', 0),
(205, 'Chợ Lách', 10.2603, 106.119, 'Vietnam', 'VN', 'Bến Tre', 0),
(206, 'Bắc Ninh', 21.1861, 106.076, 'Vietnam', 'VN', 'Bắc Ninh', 0),
(207, 'Kon Dơng', 14.0389, 108.25, 'Vietnam', 'VN', 'Gia Lai', 0),
(208, 'Tân Phú', 11.2722, 107.437, 'Vietnam', 'VN', 'Đồng Nai', 0),
(209, 'Quận Mười Một', 10.7638, 106.644, 'Vietnam', 'VN', 'Hồ Chí Min', 0),
(210, 'Quận Mười', 10.7682, 106.666, 'Vietnam', 'VN', 'Hồ Chí Min', 0),
(211, 'Quận Tân Phú', 10.7838, 106.637, 'Vietnam', 'VN', 'Hồ Chí Min', 0),
(212, 'Quận Ba', 10.7749, 106.686, 'Vietnam', 'VN', 'Hồ Chí Min', 0),
(213, 'Quận Bình Thạnh', 10.8033, 106.697, 'Vietnam', 'VN', 'Hồ Chí Min', 0),
(214, 'Kim Tân', 20.1305, 105.675, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(215, 'Ngô Đồng', 20.283, 106.443, 'Vietnam', 'VN', 'Nam Định', 0),
(216, 'Mù Cang Chải', 21.8513, 104.09, 'Vietnam', 'VN', 'Yên Bái', 0),
(217, 'Thị Trấn Nguyên Bình', 22.65, 105.96, 'Vietnam', 'VN', 'Cao Bằng', 0),
(218, 'Tánh Linh', 11.0842, 107.681, 'Vietnam', 'VN', 'Bình Thuận', 0),
(219, 'Đắk Mâm', 12.4579, 107.862, 'Vietnam', 'VN', 'Đắk Nông', 0),
(220, 'Thành Phố Cao Bằng', 22.6657, 106.258, 'Vietnam', 'VN', 'Cao Bằng', 0),
(221, 'Vĩnh Trụ', 20.5602, 106.028, 'Vietnam', 'VN', 'Hà Nam', 0),
(222, 'Phước Dân', 11.527, 108.93, 'Vietnam', 'VN', 'Ninh Thuận', 0),
(223, 'Tứ Kỳ', 20.8191, 106.407, 'Vietnam', 'VN', 'Hải Dương', 0),
(224, 'Tân Châu', 11.552, 106.172, 'Vietnam', 'VN', 'Tây Ninh', 0),
(225, 'Mường Xén', 19.398, 104.152, 'Vietnam', 'VN', 'Nghệ An', 0),
(226, 'Sông Thao', 21.4213, 105.134, 'Vietnam', 'VN', 'Phú Thọ', 0),
(227, 'Phú Vang', 16.4391, 107.714, 'Vietnam', 'VN', 'Thừa Thiên', 0),
(228, 'Hải Lăng', 16.6935, 107.251, 'Vietnam', 'VN', 'Quảng Trị', 0),
(229, 'Núi Sập', 10.2648, 105.267, 'Vietnam', 'VN', 'An Giang', 0),
(230, 'Mỏ Cày', 10.1331, 106.335, 'Vietnam', 'VN', 'Bến Tre', 0),
(231, 'Trâu Quỳ', 21.0195, 105.937, 'Vietnam', 'VN', 'Hà Nội', 0),
(232, 'Đình Lập', 21.5463, 107.098, 'Vietnam', 'VN', 'Lạng Sơn', 0),
(233, 'Tam Kỳ', 15.5736, 108.474, 'Vietnam', 'VN', 'Quảng Nam', 0),
(234, 'Thị Trấn Thuận Châu', 21.4386, 103.69, 'Vietnam', 'VN', 'Sơn La', 0),
(235, 'Thị Trấn Thông Nông', 22.7841, 105.983, 'Vietnam', 'VN', 'Cao Bằng', 0),
(236, 'Krông Năng', 12.9517, 108.344, 'Vietnam', 'VN', 'Đắk Lắk', 0),
(237, 'Thanh Ba', 21.4988, 105.141, 'Vietnam', 'VN', 'Phú Thọ', 0),
(238, 'Yên Châu', 21.0458, 104.301, 'Vietnam', 'VN', 'Sơn La', 0),
(239, 'Vinh', 18.6734, 105.692, 'Vietnam', 'VN', 'Nghệ An', 0),
(240, 'Sơn Tịnh', 15.1586, 108.796, 'Vietnam', 'VN', 'Quảng Ngãi', 0),
(241, 'Rạch Giá', 10.0124, 105.081, 'Vietnam', 'VN', 'Kiến Giang', 0),
(242, 'Thanh Sơn', 21.1987, 105.179, 'Vietnam', 'VN', 'Phú Thọ', 0),
(243, 'Thuận Nam', 10.85, 107.879, 'Vietnam', 'VN', 'Bình Thuận', 0),
(244, 'Vĩnh Lộc', 20.0544, 105.616, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(245, 'Vạn Giã', 12.692, 109.221, 'Vietnam', 'VN', 'Khánh Hòa', 0),
(246, 'Bến Lức', 10.6364, 106.491, 'Vietnam', 'VN', 'Long An', 0),
(247, 'Châu Thành', 9.7007, 105.902, 'Vietnam', 'VN', 'Sóc Trăng', 0),
(248, 'Nhơn Trạch', 10.7229, 106.883, 'Vietnam', 'VN', 'Đồng Nai', 0),
(249, 'Thới Lai', 10.0652, 105.559, 'Vietnam', 'VN', 'Cần Thơ', 0),
(250, 'Buôn Trấp', 12.4848, 108.03, 'Vietnam', 'VN', 'Đắk Lắk', 0),
(251, 'M’Đrăk', 12.7462, 108.743, 'Vietnam', 'VN', 'Đắk Lắk', 0),
(252, 'Thanh Khê', 16.0706, 108.191, 'Vietnam', 'VN', 'Đà Nẵng', 0),
(253, 'Xuân Trường', 20.2923, 106.333, 'Vietnam', 'VN', 'Nam Định', 0),
(254, 'Cần Giuộc', 10.6086, 106.671, 'Vietnam', 'VN', 'Long An', 0),
(255, 'Cần Đước', 10.5097, 106.603, 'Vietnam', 'VN', 'Long An', 0),
(256, 'Krông Klang', 16.6891, 106.887, 'Vietnam', 'VN', 'Quảng Trị', 0),
(257, 'Sóc Sơn', 21.2578, 105.849, 'Vietnam', 'VN', 'Hà Nội', 0),
(258, 'Liên Quan', 21.0572, 105.579, 'Vietnam', 'VN', 'Hà Nội', 0),
(259, 'Phong Thổ', 22.5443, 103.298, 'Vietnam', 'VN', 'Lai Châu', 0),
(260, 'Bát Xát', 22.5431, 103.89, 'Vietnam', 'VN', 'Lào Cai', 0),
(261, 'Dĩ An', 10.9068, 106.769, 'Vietnam', 'VN', 'Bình Dương', 0),
(262, 'Vĩnh Hưng', 10.8907, 105.785, 'Vietnam', 'VN', 'Long An', 0),
(263, 'Bình Đại', 10.1896, 106.691, 'Vietnam', 'VN', 'Bến Tre', 0),
(264, 'Vôi', 21.3552, 106.262, 'Vietnam', 'VN', 'Bắc Giang', 0),
(265, 'Tân Túc', 10.6954, 106.591, 'Vietnam', 'VN', 'Hồ Chí Min', 0),
(266, 'Tân Phú', 11.4512, 106.868, 'Vietnam', 'VN', 'Bình Phước', 0),
(267, 'Cổ Phúc', 21.7558, 104.828, 'Vietnam', 'VN', 'Yên Bái', 0),
(268, 'Tầm Vu', 10.4411, 106.468, 'Vietnam', 'VN', 'Long An', 0),
(269, 'Phúc Yên', 21.237, 105.705, 'Vietnam', 'VN', 'Vĩnh Phúc', 0),
(270, 'Cổ Lễ', 20.3234, 106.266, 'Vietnam', 'VN', 'Nam Định', 0),
(271, 'Thị Trấn Trạm Tấu', 21.4666, 104.38, 'Vietnam', 'VN', 'Yên Bái', 0),
(272, 'Trà My', 15.3397, 108.221, 'Vietnam', 'VN', 'Quảng Nam', 0),
(273, 'Kim Sơn', 19.6041, 104.919, 'Vietnam', 'VN', 'Nghệ An', 0),
(274, 'Quán Hàu', 17.4044, 106.641, 'Vietnam', 'VN', 'Quảng Bình', 0),
(275, 'Cái Đôi Vàm', 8.85707, 104.812, 'Vietnam', 'VN', 'Cà Mau', 0),
(276, 'Móng Cái', 21.5247, 107.966, 'Vietnam', 'VN', 'Quảng Ninh', 0),
(277, 'Châu Thành', 9.86989, 106.349, 'Vietnam', 'VN', 'Trà Vinh', 0),
(278, 'Lâm', 20.3277, 106.012, 'Vietnam', 'VN', 'Nam Định', 0),
(279, 'Cam Lộ', 16.808, 106.994, 'Vietnam', 'VN', 'Quảng Trị', 0),
(280, 'Vạn Hà', 19.8866, 105.679, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(281, 'Trần Văn Thời', 9.07713, 104.979, 'Vietnam', 'VN', 'Cà Mau', 0),
(282, 'Hồ', 21.0631, 106.086, 'Vietnam', 'VN', 'Bắc Ninh', 0),
(283, 'Mỹ Xuyên', 9.56006, 105.99, 'Vietnam', 'VN', 'Sóc Trăng', 0),
(284, 'Khâm Đức', 15.4451, 107.793, 'Vietnam', 'VN', 'Quảng Nam', 0),
(285, 'Phúc Thọ', 21.1034, 105.546, 'Vietnam', 'VN', 'Hà Nội', 0),
(286, 'Thị Trấn Tà Lùng', 22.4979, 106.567, 'Vietnam', 'VN', 'Cao Bằng', 0),
(287, 'Đắk Hà', 14.5135, 107.921, 'Vietnam', 'VN', 'Kon Tum', 0),
(288, 'Thị Trấn Mường Khương', 22.7614, 104.122, 'Vietnam', 'VN', 'Lào Cai', 0),
(289, 'Quế Sơn', 15.6736, 108.22, 'Vietnam', 'VN', 'Quảng Nam', 0),
(290, 'Trảng Bàng', 11.0299, 106.358, 'Vietnam', 'VN', 'Tây Ninh', 0),
(291, 'Di Linh', 11.5815, 108.076, 'Vietnam', 'VN', 'Lâm Đồng', 0),
(292, 'Khánh Hải', 11.591, 109.041, 'Vietnam', 'VN', 'Ninh Thuận', 0),
(293, 'Tân Biên', 11.5444, 106.012, 'Vietnam', 'VN', 'Tây Ninh', 0),
(294, 'Yên Lạc', 21.2365, 105.573, 'Vietnam', 'VN', 'Vĩnh Phúc', 0),
(295, 'Yến Lạc', 22.2369, 106.181, 'Vietnam', 'VN', 'Bắc Kạn', 0),
(296, 'Vĩnh Long', 10.2537, 105.972, 'Vietnam', 'VN', 'Vĩnh Long', 0),
(297, 'Tân Hiệp', 10.1171, 105.286, 'Vietnam', 'VN', 'Kiến Giang', 0),
(298, 'Tân Hiệp', 10.449, 106.344, 'Vietnam', 'VN', 'Tiền Giang', 0),
(299, 'Bến Cầu', 11.1105, 106.179, 'Vietnam', 'VN', 'Tây Ninh', 0),
(300, 'Thứa', 21.0194, 106.2, 'Vietnam', 'VN', 'Bắc Ninh', 0),
(301, 'Sốp Cộp', 20.9388, 103.597, 'Vietnam', 'VN', 'Sơn La', 0),
(302, 'An Nhơn', 13.8858, 109.108, 'Vietnam', 'VN', 'Bình Định', 0),
(303, 'Yên Thịnh', 20.1625, 106.007, 'Vietnam', 'VN', 'Ninh Bình', 0),
(304, 'Cam Ranh', 11.9273, 109.161, 'Vietnam', 'VN', 'Khánh Hòa', 0),
(305, 'Bù Đốp', 11.9549, 106.8, 'Vietnam', 'VN', 'Bình Phước', 0),
(306, 'Huyện Chiêm Hóa', 22.1441, 105.273, 'Vietnam', 'VN', 'Tuyên Quan', 0),
(307, 'Duyên Hải', 9.63497, 106.492, 'Vietnam', 'VN', 'Trà Vinh', 0),
(308, 'Sơn Dương', 21.6968, 105.399, 'Vietnam', 'VN', 'Tuyên Quan', 0),
(309, 'Sơn Hà', 15.0419, 108.47, 'Vietnam', 'VN', 'Quảng Ngãi', 0),
(310, 'Tân Sơn', 11.7752, 108.785, 'Vietnam', 'VN', 'Ninh Thuận', 0),
(311, 'Châu Thành', 10.3012, 106.357, 'Vietnam', 'VN', 'Bến Tre', 0),
(312, 'Ba Tơ', 14.7636, 108.732, 'Vietnam', 'VN', 'Quảng Ngãi', 0),
(313, 'Thị Trấn Mường Tè', 22.3807, 102.82, 'Vietnam', 'VN', 'Lai Châu', 0),
(314, 'Thị Trấn Phước Bửu', 10.5347, 107.402, 'Vietnam', 'VN', 'Bà Rịa-Vũn', 0),
(315, 'Chũ', 21.3738, 106.566, 'Vietnam', 'VN', 'Bắc Giang', 0),
(316, 'Tân Hưng', 10.8348, 105.661, 'Vietnam', 'VN', 'Long An', 0),
(317, 'Phước An', 12.713, 108.301, 'Vietnam', 'VN', 'Đắk Lắk', 0),
(318, 'Thành Phố Hạ Long', 20.9505, 107.073, 'Vietnam', 'VN', 'Quảng Ninh', 0),
(319, 'Chư Prông', 13.7568, 107.886, 'Vietnam', 'VN', 'Gia Lai', 0),
(320, 'Vĩnh Châu', 9.32439, 105.98, 'Vietnam', 'VN', 'Sóc Trăng', 0),
(321, 'Cát Bà', 20.7278, 107.048, 'Vietnam', 'VN', 'Hải Phòng', 0),
(322, 'Vũ Quang', 18.3839, 105.506, 'Vietnam', 'VN', 'Hà Tĩnh', 0),
(323, 'Phú Lộc', 16.2804, 107.859, 'Vietnam', 'VN', 'Thừa Thiên', 0),
(324, 'Lấp Vò', 10.3616, 105.519, 'Vietnam', 'VN', 'Đồng Tháp', 0),
(325, 'Đồng Xuân', 13.3773, 109.108, 'Vietnam', 'VN', 'Phú Yên', 0),
(326, 'Ea Súp', 13.0662, 107.885, 'Vietnam', 'VN', 'Đắk Lắk', 0),
(327, 'Cô Tô', 20.9727, 107.766, 'Vietnam', 'VN', 'Quảng Ninh', 0),
(328, 'Thới Bình', 9.35584, 105.099, 'Vietnam', 'VN', 'Cà Mau', 0),
(329, 'Ma Đa Gui', 11.387, 107.535, 'Vietnam', 'VN', 'Lâm Đồng', 0),
(330, 'Ái Tử', 16.7689, 107.165, 'Vietnam', 'VN', 'Quảng Trị', 0),
(331, 'Phủ Thông', 22.2731, 105.879, 'Vietnam', 'VN', 'Bắc Kạn', 0),
(332, 'Quỳnh Côi', 20.6619, 106.327, 'Vietnam', 'VN', 'Thái Bình', 0),
(333, 'Cần Giờ', 10.4111, 106.955, 'Vietnam', 'VN', 'Hồ Chí Min', 0),
(334, 'Hát Lót', 21.1973, 104.106, 'Vietnam', 'VN', 'Sơn La', 0),
(335, 'Năm Căn', 8.75899, 104.993, 'Vietnam', 'VN', 'Cà Mau', 0),
(336, 'Trà Cú', 9.69774, 106.258, 'Vietnam', 'VN', 'Trà Vinh', 0),
(337, 'Hưng Hà', 20.5904, 106.224, 'Vietnam', 'VN', 'Thái Bình', 0),
(338, 'Mường Khến', 20.6144, 105.279, 'Vietnam', 'VN', 'Hòa Bình', 0),
(339, 'Sơn Trà', 16.0607, 108.233, 'Vietnam', 'VN', 'Đà Nẵng', 0),
(340, 'Bẩn Yên Nhân', 20.9365, 106.057, 'Vietnam', 'VN', 'Hưng Yên', 0),
(341, 'Vĩnh Yên', 21.3089, 105.605, 'Vietnam', 'VN', 'Vĩnh Phúc', 0),
(342, 'Hưng Hóa', 21.2549, 105.295, 'Vietnam', 'VN', 'Phú Thọ', 0),
(343, 'Võ Xu', 11.1869, 107.56, 'Vietnam', 'VN', 'Bình Thuận', 0),
(344, 'Vụ Bản', 20.4642, 105.443, 'Vietnam', 'VN', 'Hòa Bình', 0),
(345, 'Văn Giang', 20.943, 105.931, 'Vietnam', 'VN', 'Hưng Yên', 0),
(346, 'Plei Kần', 14.7049, 107.686, 'Vietnam', 'VN', 'Kon Tum', 0),
(347, 'Chư Sê', 13.6915, 108.08, 'Vietnam', 'VN', 'Gia Lai', 0),
(348, 'Phú Thái', 20.9628, 106.509, 'Vietnam', 'VN', 'Hải Dương', 0),
(349, 'An Châu', 10.4456, 105.386, 'Vietnam', 'VN', 'An Giang', 0),
(350, 'Quảng Xương', 19.7295, 105.783, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(351, 'Nông Cống', 19.624, 105.649, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(352, 'Quế', 20.5806, 105.873, 'Vietnam', 'VN', 'Hà Nam', 0),
(353, 'Thạch Hà', 18.3679, 105.861, 'Vietnam', 'VN', 'Hà Tĩnh', 0),
(354, 'Mỹ Tho', 10.36, 106.36, 'Vietnam', 'VN', 'Tiền Giang', 0),
(355, 'Mỹ Thọ', 10.4427, 105.695, 'Vietnam', 'VN', 'Đồng Tháp', 0),
(356, 'Quỳ Hợp', 19.3255, 105.183, 'Vietnam', 'VN', 'Nghệ An', 0),
(357, 'Bắc Hà', 22.5391, 104.293, 'Vietnam', 'VN', 'Lào Cai', 0),
(358, 'Vĩnh Thạnh', 10.2226, 105.398, 'Vietnam', 'VN', 'Cần Thơ', 0),
(359, 'Cờ Đỏ', 10.0938, 105.429, 'Vietnam', 'VN', 'Cần Thơ', 0),
(360, 'Đức Thọ', 18.5396, 105.583, 'Vietnam', 'VN', 'Hà Tĩnh', 0),
(361, 'Chùa Hang', 21.6238, 105.842, 'Vietnam', 'VN', 'Thái Nguyê', 0),
(362, 'Tuy Phước', 13.8274, 109.167, 'Vietnam', 'VN', 'Bình Định', 0),
(363, 'Khe Tre', 16.1691, 107.718, 'Vietnam', 'VN', 'Thừa Thiên', 0),
(364, 'Lai Cách', 20.9325, 106.248, 'Vietnam', 'VN', 'Hải Dương', 0),
(365, 'Đắk Rve', 14.5072, 108.247, 'Vietnam', 'VN', 'Kon Tum', 0),
(366, 'Ít Ong', 21.5175, 104.027, 'Vietnam', 'VN', 'Sơn La', 0),
(367, 'Diên Khánh', 12.2549, 109.093, 'Vietnam', 'VN', 'Khánh Hòa', 0),
(368, 'Côn Đảo', 8.68228, 106.607, 'Vietnam', 'VN', 'Bà Rịa-Vũn', 0),
(369, 'Đồng Hới', 17.4688, 106.622, 'Vietnam', 'VN', 'Quảng Bình', 0),
(370, 'Thủ Đức', 10.8486, 106.772, 'Vietnam', 'VN', 'Hồ Chí Min', 0),
(371, 'Thị Trấn Phước Long', 9.43753, 105.462, 'Vietnam', 'VN', 'Bạc Liêu', 0),
(372, 'Trần Cao', 20.7295, 106.18, 'Vietnam', 'VN', 'Hưng Yên', 0),
(373, 'Kông Chro', 13.7753, 108.526, 'Vietnam', 'VN', 'Gia Lai', 0),
(374, 'Gò Dầu', 11.0885, 106.263, 'Vietnam', 'VN', 'Tây Ninh', 0),
(375, 'Bảo Lộc', 11.548, 107.808, 'Vietnam', 'VN', 'Lâm Đồng', 0),
(376, 'An Lão', 20.8229, 106.556, 'Vietnam', 'VN', 'Hải Phòng', 0),
(377, 'Cái Răng', 10.0009, 105.751, 'Vietnam', 'VN', 'Cần Thơ', 0),
(378, 'Vị Thanh', 9.78449, 105.47, 'Vietnam', 'VN', 'Hậu Giang', 0),
(379, 'Trảng Bom', 10.9536, 107.006, 'Vietnam', 'VN', 'Đồng Nai', 0),
(380, 'Tiền Hải', 20.4056, 106.504, 'Vietnam', 'VN', 'Thái Bình', 0),
(381, 'Cẩm Phả', 21.01, 107.273, 'Vietnam', 'VN', 'Quảng Ninh', 0),
(382, 'Nghèn', 18.4512, 105.78, 'Vietnam', 'VN', 'Hà Tĩnh', 0),
(383, 'Quận Sáu', 10.7468, 106.649, 'Vietnam', 'VN', 'Hồ Chí Min', 0),
(384, 'Quận Năm', 10.7557, 106.667, 'Vietnam', 'VN', 'Hồ Chí Min', 0),
(385, 'Quận Một', 10.7807, 106.699, 'Vietnam', 'VN', 'Hồ Chí Min', 0),
(386, 'Quận Phú Nhuận', 10.7948, 106.676, 'Vietnam', 'VN', 'Hồ Chí Min', 0),
(387, 'Lai Vung', 10.287, 105.662, 'Vietnam', 'VN', 'Đồng Tháp', 0),
(388, 'Phú Ninh', 15.5547, 108.411, 'Vietnam', 'VN', 'Quảng Nam', 0),
(389, 'Đắk Glei', 15.0864, 107.736, 'Vietnam', 'VN', 'Kon Tum', 0),
(390, 'Thành Phố Bà Rịa', 10.4963, 107.168, 'Vietnam', 'VN', 'Bà Rịa-Vũn', 0),
(391, 'Tây Đằng', 21.1981, 105.422, 'Vietnam', 'VN', 'Hà Nội', 0),
(392, 'Tây Hồ', 21.0689, 105.811, 'Vietnam', 'VN', 'Hà Nội', 0),
(393, 'Bình Sơn', 15.2978, 108.761, 'Vietnam', 'VN', 'Quảng Ngãi', 0),
(394, 'Ia Kha', 13.9624, 107.845, 'Vietnam', 'VN', 'Gia Lai', 0),
(395, 'Hữu Lũng', 21.5056, 106.345, 'Vietnam', 'VN', 'Lạng Sơn', 0),
(396, 'Hà Trung', 20.0128, 105.853, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(397, 'Bo', 20.6726, 105.536, 'Vietnam', 'VN', 'Hòa Bình', 0),
(398, 'Đại Lộc', 15.8821, 108.121, 'Vietnam', 'VN', 'Quảng Nam', 0),
(399, 'Một Ngàn', 9.92402, 105.63, 'Vietnam', 'VN', 'Hậu Giang', 0),
(400, 'Thị Trấn Việt Quang', 22.4151, 104.807, 'Vietnam', 'VN', 'Hà Giang', 0),
(401, 'Bác Ái', 11.841, 108.903, 'Vietnam', 'VN', 'Ninh Thuận', 0),
(402, 'Thị Trấn Thanh Nhật', 22.6875, 106.67, 'Vietnam', 'VN', 'Cao Bằng', 0),
(403, 'Ngã Bảy', 9.81371, 105.821, 'Vietnam', 'VN', 'Hậu Giang', 0),
(404, 'Thống Nhất', 10.9505, 107.146, 'Vietnam', 'VN', 'Đồng Nai', 0),
(405, 'Đồng Xoài', 11.5349, 106.883, 'Vietnam', 'VN', 'Bình Phước', 0),
(406, 'Kim Bài', 20.8526, 105.77, 'Vietnam', 'VN', 'Hà Nội', 0),
(407, 'Đồng Mỏ', 21.657, 106.578, 'Vietnam', 'VN', 'Lạng Sơn', 0),
(408, 'Sịa', 16.5745, 107.511, 'Vietnam', 'VN', 'Thừa Thiên', 0),
(409, 'Thường Xuân', 19.9029, 105.347, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(410, 'Hiệp Đức', 15.5822, 108.114, 'Vietnam', 'VN', 'Quảng Nam', 0),
(411, 'Lái Thiêu', 10.9051, 106.699, 'Vietnam', 'VN', 'Bình Dương', 0),
(412, 'Tam Đường', 22.3181, 103.626, 'Vietnam', 'VN', 'Lai Châu', 0),
(413, 'Đắk Tô', 14.6609, 107.839, 'Vietnam', 'VN', 'Kon Tum', 0),
(414, 'Mê Linh', 21.1831, 105.72, 'Vietnam', 'VN', 'Hà Nội', 0),
(415, 'Nam Đàn', 18.698, 105.499, 'Vietnam', 'VN', 'Nghệ An', 0),
(416, 'Yên Mỹ', 20.8856, 106.036, 'Vietnam', 'VN', 'Hưng Yên', 0),
(417, 'Bắc Yên', 21.2463, 104.433, 'Vietnam', 'VN', 'Sơn La', 0),
(418, 'Hậu Nghĩa', 10.8943, 106.397, 'Vietnam', 'VN', 'Long An', 0),
(419, 'Bộc Bố', 22.6121, 105.667, 'Vietnam', 'VN', 'Bắc Kạn', 0),
(420, 'Thị Trấn Mèo Vạc', 23.1641, 105.41, 'Vietnam', 'VN', 'Hà Giang', 0),
(421, 'Thị Trấn Thuận Châu', 21.4385, 103.69, 'Vietnam', 'VN', 'Sơn La', 0),
(422, 'Kế Sách', 9.76743, 105.986, 'Vietnam', 'VN', 'Sóc Trăng', 0),
(423, 'Vân Canh', 13.6195, 108.998, 'Vietnam', 'VN', 'Bình Định', 0),
(424, 'Gia Nghĩa', 12.0042, 107.691, 'Vietnam', 'VN', 'Đắk Nông', 0),
(425, 'Diêm Điền', 20.5583, 106.569, 'Vietnam', 'VN', 'Thái Bình', 0),
(426, 'Huỳnh Hữu Nghĩa', 9.63537, 105.812, 'Vietnam', 'VN', 'Sóc Trăng', 0),
(427, 'Hà Đông', 20.9714, 105.779, 'Vietnam', 'VN', 'Hà Nội', 0),
(428, 'Lim', 21.1439, 106.02, 'Vietnam', 'VN', 'Bắc Ninh', 0),
(429, 'Hàng Trạm', 20.3947, 105.622, 'Vietnam', 'VN', 'Hòa Bình', 0),
(430, 'Liên Chiểu', 16.0727, 108.158, 'Vietnam', 'VN', 'Đà Nẵng', 0),
(431, 'Liễu Đề', 20.2209, 106.187, 'Vietnam', 'VN', 'Nam Định', 0),
(432, 'K Bang', 14.1445, 108.599, 'Vietnam', 'VN', 'Gia Lai', 0),
(433, 'Phú Quý', 10.5166, 108.933, 'Vietnam', 'VN', 'Bình Thuận', 0),
(434, 'Bình Gia', 21.9609, 106.364, 'Vietnam', 'VN', 'Lạng Sơn', 0),
(435, 'Giồng Riềng', 9.90975, 105.314, 'Vietnam', 'VN', 'Kiến Giang', 0),
(436, 'Nga Sơn', 20.0072, 105.97, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(437, 'An Biên', 9.81532, 105.064, 'Vietnam', 'VN', 'Kiến Giang', 0),
(438, 'Yên Cát', 19.6633, 105.429, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(439, 'Lập Thạch', 21.4154, 105.461, 'Vietnam', 'VN', 'Vĩnh Phúc', 0),
(440, 'Thành Phố Phủ Lý', 20.5453, 105.912, 'Vietnam', 'VN', 'Hà Nam', 0),
(441, 'Thanh Thủy', 21.1755, 105.284, 'Vietnam', 'VN', 'Phú Thọ', 0),
(442, 'Quán Hành', 18.7793, 105.646, 'Vietnam', 'VN', 'Nghệ An', 0),
(443, 'Chơn Thành', 11.4282, 106.635, 'Vietnam', 'VN', 'Bình Phước', 0),
(444, 'Chợ Mới', 21.8837, 105.773, 'Vietnam', 'VN', 'Bắc Kạn', 0),
(445, 'Như Quỳnh', 20.9817, 105.985, 'Vietnam', 'VN', 'Hưng Yên', 0),
(446, 'Phong Điền', 9.99753, 105.667, 'Vietnam', 'VN', 'Cần Thơ', 0),
(447, 'Phong Điền', 16.5832, 107.364, 'Vietnam', 'VN', 'Thừa Thiên', 0),
(448, 'Quận Bốn', 10.7668, 106.706, 'Vietnam', 'VN', 'Hồ Chí Min', 0),
(449, 'Prao', 15.9244, 107.648, 'Vietnam', 'VN', 'Quảng Nam', 0),
(450, 'Hợp Hòa', 21.3753, 105.543, 'Vietnam', 'VN', 'Vĩnh Phúc', 0),
(451, 'Thị Trấn Khánh Yên', 22.0894, 104.251, 'Vietnam', 'VN', 'Lào Cai', 0),
(452, 'Long Phú', 9.61025, 106.119, 'Vietnam', 'VN', 'Sóc Trăng', 0),
(453, 'Lương Sơn', 20.8715, 105.526, 'Vietnam', 'VN', 'Hòa Bình', 0),
(454, 'Cao Thượng', 21.3871, 106.129, 'Vietnam', 'VN', 'Bắc Giang', 0),
(455, 'Cái Dầu', 10.5743, 105.24, 'Vietnam', 'VN', 'An Giang', 0),
(456, 'Mường Chà', 21.7617, 103.098, 'Vietnam', 'VN', 'Điện Biên', 0),
(457, 'Thị Trấn Phố Ràng', 22.2343, 104.476, 'Vietnam', 'VN', 'Lào Cai', 0),
(458, 'Đông Anh', 21.1396, 105.849, 'Vietnam', 'VN', 'Hà Nội', 0),
(459, 'Kon Tum', 14.3545, 108.008, 'Vietnam', 'VN', 'Kon Tum', 0),
(460, 'Đà Bắc', 20.8771, 105.254, 'Vietnam', 'VN', 'Hòa Bình', 0),
(461, 'Thanh Miện', 20.7871, 106.246, 'Vietnam', 'VN', 'Hải Dương', 0),
(462, 'Phú Xuyên', 20.7455, 105.914, 'Vietnam', 'VN', 'Hà Nội', 0),
(463, 'Núi Đèo', 20.9157, 106.674, 'Vietnam', 'VN', 'Hải Phòng', 0),
(464, 'Hưng Nguyên', 18.6716, 105.629, 'Vietnam', 'VN', 'Nghệ An', 0),
(465, 'Thạnh Phú', 9.94827, 106.516, 'Vietnam', 'VN', 'Bến Tre', 0),
(466, 'Tiên Phước', 15.4882, 108.307, 'Vietnam', 'VN', 'Quảng Nam', 0),
(467, 'Thị Trấn Vĩnh Tuy', 22.2744, 104.891, 'Vietnam', 'VN', 'Hà Giang', 0),
(468, 'Mỹ Lộc', 20.4411, 106.102, 'Vietnam', 'VN', 'Nam Định', 0),
(469, 'Nho Quan', 20.3228, 105.752, 'Vietnam', 'VN', 'Ninh Bình', 0),
(470, 'Yên Lập', 21.347, 105.057, 'Vietnam', 'VN', 'Phú Thọ', 0),
(471, 'Thị Trấn Gành Hào', 9.03183, 105.421, 'Vietnam', 'VN', 'Bạc Liêu', 0),
(472, 'An Châu', 21.3346, 106.849, 'Vietnam', 'VN', 'Bắc Giang', 0),
(473, 'Nhà Bè', 10.6967, 106.74, 'Vietnam', 'VN', 'Hồ Chí Min', 0),
(474, 'Cầu Giấy', 21.0323, 105.801, 'Vietnam', 'VN', 'Hà Nội', 0),
(475, 'Minh Lương', 9.90248, 105.16, 'Vietnam', 'VN', 'Kiến Giang', 0),
(476, 'Lang Chánh', 20.1561, 105.242, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(477, 'Mai Châu', 20.6615, 105.082, 'Vietnam', 'VN', 'Hòa Bình', 0),
(478, 'Lương Bằng', 20.74, 106.06, 'Vietnam', 'VN', 'Hưng Yên', 0),
(479, 'Si Ma Cai', 22.6951, 104.279, 'Vietnam', 'VN', 'Lào Cai', 0),
(480, 'Kiến Giang', 17.2233, 106.79, 'Vietnam', 'VN', 'Quảng Bình', 0),
(481, 'Tân Châu', 10.7983, 105.239, 'Vietnam', 'VN', 'An Giang', 0),
(482, 'Thạnh Mỹ', 11.7617, 108.495, 'Vietnam', 'VN', 'Lâm Đồng', 0),
(483, 'Thị Trấn Phú Mỹ', 10.6036, 107.054, 'Vietnam', 'VN', 'Bà Rịa-Vũn', 0),
(484, 'Thị Trấn Tam Sơn', 23.0674, 104.989, 'Vietnam', 'VN', 'Hà Giang', 0),
(485, 'Vĩnh Bình', 10.345, 106.581, 'Vietnam', 'VN', 'Tiền Giang', 0),
(486, 'Mường Ảng', 21.5199, 103.223, 'Vietnam', 'VN', 'Điện Biên', 0),
(487, 'Sông Cầu', 13.4556, 109.223, 'Vietnam', 'VN', 'Phú Yên', 0),
(488, 'Đưc Trọng', 11.7356, 108.373, 'Vietnam', 'VN', 'Lâm Đồng', 0),
(489, 'Bến Sung', 19.6314, 105.578, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(490, 'Đu', 21.7385, 105.704, 'Vietnam', 'VN', 'Thái Nguyê', 0),
(491, 'Thị Trấn Ngải Giao', 10.6471, 107.246, 'Vietnam', 'VN', 'Bà Rịa-Vũn', 0),
(492, 'Chợ Lầu', 11.2216, 108.507, 'Vietnam', 'VN', 'Bình Thuận', 0),
(493, 'Ma Lâm', 11.073, 108.13, 'Vietnam', 'VN', 'Bình Thuận', 0),
(494, 'Mộc Châu', 20.852, 104.622, 'Vietnam', 'VN', 'Sơn La', 0),
(495, 'Thanh Hà', 20.8982, 106.426, 'Vietnam', 'VN', 'Hải Dương', 0),
(496, 'Quán Lào', 19.9715, 105.651, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(497, 'Ea Kar', 12.8082, 108.449, 'Vietnam', 'VN', 'Đắk Lắk', 0),
(498, 'Dầu Tiếng', 11.2741, 106.359, 'Vietnam', 'VN', 'Bình Dương', 0),
(499, 'Thị Trấn Nước Hai', 22.7374, 106.152, 'Vietnam', 'VN', 'Cao Bằng', 0),
(500, 'Văn Điển', 20.9463, 105.845, 'Vietnam', 'VN', 'Hà Nội', 0),
(501, 'Vân Đình', 20.7351, 105.772, 'Vietnam', 'VN', 'Hà Nội', 0),
(502, 'Thanh Chương', 18.7788, 105.334, 'Vietnam', 'VN', 'Nghệ An', 0),
(503, 'Tràm Chim', 10.67, 105.565, 'Vietnam', 'VN', 'Đồng Tháp', 0),
(504, 'Tân Hòa', 10.3191, 106.711, 'Vietnam', 'VN', 'Tiền Giang', 0),
(505, 'Cẩm Thủy', 20.2087, 105.469, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(506, 'Long Hồ', 10.1928, 106.012, 'Vietnam', 'VN', 'Vĩnh Long', 0),
(507, 'Sa Pa', 22.3396, 103.846, 'Vietnam', 'VN', 'Lào Cai', 0),
(508, 'Tân Kỳ', 19.0476, 105.268, 'Vietnam', 'VN', 'Nghệ An', 0),
(509, 'Hạ Hòa', 21.563, 105.005, 'Vietnam', 'VN', 'Phú Thọ', 0),
(510, 'Sa Rài', 10.8702, 105.466, 'Vietnam', 'VN', 'Đồng Tháp', 0),
(511, 'Thị Trấn Đông Khê', 22.4294, 106.432, 'Vietnam', 'VN', 'Cao Bằng', 0),
(512, 'Thị Trấn Trùng Khánh', 22.8351, 106.525, 'Vietnam', 'VN', 'Cao Bằng', 0),
(513, 'Hòa Thành', 11.287, 106.129, 'Vietnam', 'VN', 'Tây Ninh', 0),
(514, 'Củng Sơn', 13.05, 108.979, 'Vietnam', 'VN', 'Phú Yên', 0),
(515, 'Duy Xuyên', 15.829, 108.26, 'Vietnam', 'VN', 'Quảng Nam', 0),
(516, 'Hà Lam', 15.7387, 108.351, 'Vietnam', 'VN', 'Quảng Nam', 0),
(517, 'Thanh Nê', 20.3881, 106.438, 'Vietnam', 'VN', 'Thái Bình', 0),
(518, 'Thanh Xuân', 20.9947, 105.8, 'Vietnam', 'VN', 'Hà Nội', 0),
(519, 'Hòa Vang', 15.9876, 108.139, 'Vietnam', 'VN', 'Đà Nẵng', 0),
(520, 'Hoài Ân', 14.3635, 108.965, 'Vietnam', 'VN', 'Bình Định', 0),
(521, 'Phú Phong', 13.9096, 108.919, 'Vietnam', 'VN', 'Bình Định', 0),
(522, 'Thị Trấn Hòa Bình', 9.28471, 105.629, 'Vietnam', 'VN', 'Bạc Liêu', 0),
(523, 'Long Mỹ', 9.68141, 105.572, 'Vietnam', 'VN', 'Hậu Giang', 0),
(524, 'Hòn Đất', 10.1846, 104.93, 'Vietnam', 'VN', 'Kiến Giang', 0),
(525, 'Thị Trấn Vị Xuyên', 22.6676, 104.982, 'Vietnam', 'VN', 'Hà Giang', 0),
(526, 'Thị Trấn Việt Lâm', 22.6249, 104.96, 'Vietnam', 'VN', 'Hà Giang', 0),
(527, 'Sơn Thịnh', 21.5625, 104.595, 'Vietnam', 'VN', 'Yên Bái', 0),
(528, 'Tư Nghĩa', 15.0845, 108.826, 'Vietnam', 'VN', 'Quảng Ngãi', 0),
(529, 'Phù Yên', 21.2633, 104.644, 'Vietnam', 'VN', 'Sơn La', 0),
(530, 'Quảng Yên', 20.9421, 106.803, 'Vietnam', 'VN', 'Quảng Ninh', 0),
(531, 'Con Cuông', 19.05, 104.881, 'Vietnam', 'VN', 'Nghệ An', 0),
(532, 'Thọ Xuân', 19.9313, 105.522, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(533, 'Đồng Nai', 11.5798, 107.365, 'Vietnam', 'VN', 'Lâm Đồng', 0),
(534, 'Sông Mã', 21.0509, 103.75, 'Vietnam', 'VN', 'Sơn La', 0),
(535, 'Thường Tín', 20.8687, 105.861, 'Vietnam', 'VN', 'Hà Nội', 0),
(536, 'Kinh Môn', 20.9896, 106.555, 'Vietnam', 'VN', 'Hải Dương', 0),
(537, 'Tiểu Cần', 9.81166, 106.191, 'Vietnam', 'VN', 'Trà Vinh', 0),
(538, 'Quận Bảy', 10.7118, 106.736, 'Vietnam', 'VN', 'Hồ Chí Min', 0),
(539, 'Vĩnh An', 11.089, 107.035, 'Vietnam', 'VN', 'Đồng Nai', 0),
(540, 'Cao Phong', 20.7045, 105.321, 'Vietnam', 'VN', 'Hòa Bình', 0),
(541, 'Đắk Mil', 12.4496, 107.622, 'Vietnam', 'VN', 'Đắk Nông', 0),
(542, 'Cẩm Lệ', 16.0177, 108.204, 'Vietnam', 'VN', 'Đà Nẵng', 0),
(543, 'Phong Châu', 21.4068, 105.312, 'Vietnam', 'VN', 'Phú Thọ', 0),
(544, 'Lý Sơn', 15.372, 109.119, 'Vietnam', 'VN', 'Quảng Ngãi', 0),
(545, 'Thạnh Hóa', 10.6574, 106.181, 'Vietnam', 'VN', 'Long An', 0),
(546, 'A Yun Pa', 13.4003, 108.435, 'Vietnam', 'VN', 'Gia Lai', 0),
(547, 'Hương Canh', 21.2788, 105.647, 'Vietnam', 'VN', 'Vĩnh Phúc', 0),
(548, 'Đồi Ngô', 21.3063, 106.387, 'Vietnam', 'VN', 'Bắc Giang', 0),
(549, 'Long Khánh', 10.9265, 107.248, 'Vietnam', 'VN', 'Đồng Nai', 0),
(550, 'Vĩnh Bảo', 20.6908, 106.481, 'Vietnam', 'VN', 'Hải Phòng', 0),
(551, 'Sa Đéc', 10.2909, 105.756, 'Vietnam', 'VN', 'Đồng Tháp', 0),
(552, 'Vương', 20.7011, 106.118, 'Vietnam', 'VN', 'Hưng Yên', 0),
(553, 'Thị Trấn Sìn Hồ', 22.3665, 103.234, 'Vietnam', 'VN', 'Lai Châu', 0),
(554, 'Hai Riêng', 12.9791, 108.897, 'Vietnam', 'VN', 'Phú Yên', 0),
(555, 'Đông Hưng', 20.5565, 106.355, 'Vietnam', 'VN', 'Thái Bình', 0),
(556, 'Mỹ Phước', 10.4771, 106.193, 'Vietnam', 'VN', 'Tiền Giang', 0),
(557, 'Thắng', 21.3551, 105.983, 'Vietnam', 'VN', 'Bắc Giang', 0),
(558, 'Trôi', 21.0695, 105.706, 'Vietnam', 'VN', 'Hà Nội', 0),
(559, 'Mường Lát', 20.5292, 104.601, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(560, 'Điện Biên Phủ', 21.3854, 103.016, 'Vietnam', 'VN', 'Điện Biên', 0),
(561, 'Diễn Châu', 18.9765, 105.6, 'Vietnam', 'VN', 'Nghệ An', 0),
(562, 'Điện Bàn', 15.8885, 108.254, 'Vietnam', 'VN', 'Quảng Nam', 0),
(563, 'Ngũ Hành Sơn', 16.0162, 108.253, 'Vietnam', 'VN', 'Đà Nẵng', 0),
(564, 'Thị Trấn Giá Rai', 9.23789, 105.455, 'Vietnam', 'VN', 'Bạc Liêu', 0),
(565, 'Hương Khê', 18.1767, 105.7, 'Vietnam', 'VN', 'Hà Tĩnh', 0),
(566, 'Hoàn Kiếm', 21.0286, 105.851, 'Vietnam', 'VN', 'Hà Nội', 0),
(567, 'Hai BàTrưng', 21.0134, 105.848, 'Vietnam', 'VN', 'Hà Nội', 0),
(568, 'U Minh', 9.41286, 104.974, 'Vietnam', 'VN', 'Cà Mau', 0),
(569, 'Thị Trấn Tủa Chùa', 21.8577, 103.343, 'Vietnam', 'VN', 'Điện Biên', 0),
(570, 'Thị Trấn Tuần Giáo', 21.5899, 103.422, 'Vietnam', 'VN', 'Điện Biên', 0),
(571, 'Hoàn Lão', 17.5844, 106.534, 'Vietnam', 'VN', 'Quảng Bình', 0),
(572, 'Lâm Thao', 21.3201, 105.292, 'Vietnam', 'VN', 'Phú Thọ', 0),
(573, 'Chi Nê', 20.4906, 105.778, 'Vietnam', 'VN', 'Hòa Bình', 0),
(574, 'Tân Uyên', 11.0609, 106.799, 'Vietnam', 'VN', 'Bình Dương', 0),
(575, 'Yên Ninh', 20.184, 106.061, 'Vietnam', 'VN', 'Ninh Bình', 0),
(576, 'Cái Tàu Hạ', 10.2597, 105.87, 'Vietnam', 'VN', 'Đồng Tháp', 0),
(577, 'Kỳ Anh', 18.0624, 106.298, 'Vietnam', 'VN', 'Hà Tĩnh', 0),
(578, 'Bồng Sơn', 14.4291, 109.016, 'Vietnam', 'VN', 'Bình Định', 0),
(579, 'Đắk Song', 12.2552, 107.609, 'Vietnam', 'VN', 'Đắk Nông', 0),
(580, 'Ngọc Hiển', 8.65724, 105.06, 'Vietnam', 'VN', 'Cà Mau', 0),
(581, 'Thị Trấn Cao Lộc', 21.8665, 106.768, 'Vietnam', 'VN', 'Lạng Sơn', 0),
(582, 'Núi Thành', 15.4319, 108.659, 'Vietnam', 'VN', 'Quảng Nam', 0),
(583, 'Kon Plông', 14.6006, 108.291, 'Vietnam', 'VN', 'Kon Tum', 0),
(584, 'Bình Thủy', 10.0743, 105.74, 'Vietnam', 'VN', 'Cần Thơ', 0),
(585, 'Đoan Hùng', 21.6225, 105.185, 'Vietnam', 'VN', 'Phú Thọ', 0),
(586, 'Bình Mỹ', 20.4912, 106.01, 'Vietnam', 'VN', 'Hà Nam', 0),
(587, 'Ngã Sáu', 9.92303, 105.805, 'Vietnam', 'VN', 'Hậu Giang', 0),
(588, 'Hà Tiên', 10.3831, 104.488, 'Vietnam', 'VN', 'Kiến Giang', 0),
(589, 'Hòa Bình', 19.2639, 104.472, 'Vietnam', 'VN', 'Nghệ An', 0),
(590, 'Ninh Hòa', 12.4919, 109.125, 'Vietnam', 'VN', 'Khánh Hòa', 0),
(591, 'Ninh Giang', 20.7308, 106.398, 'Vietnam', 'VN', 'Hải Dương', 0),
(592, 'Phố Châu', 18.5133, 105.424, 'Vietnam', 'VN', 'Hà Tĩnh', 0),
(593, 'Phú Túc', 13.1968, 108.69, 'Vietnam', 'VN', 'Gia Lai', 0),
(594, 'Củ Chi', 10.9733, 106.493, 'Vietnam', 'VN', 'Hồ Chí Min', 0),
(595, 'Nghĩa Hành', 15.0457, 108.777, 'Vietnam', 'VN', 'Quảng Ngãi', 0),
(596, 'Quận Hai', 10.7916, 106.749, 'Vietnam', 'VN', 'Hồ Chí Min', 0),
(597, 'Cành Nàng', 20.348, 105.229, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(598, 'Lộc Thắng', 11.6284, 107.835, 'Vietnam', 'VN', 'Lâm Đồng', 0),
(599, 'Núi Đối', 20.7508, 106.669, 'Vietnam', 'VN', 'Hải Phòng', 0),
(600, 'Thị Trấn Tân Yên', 22.0655, 105.035, 'Vietnam', 'VN', 'Tuyên Quan', 0),
(601, 'Lai Châu', 22.3964, 103.458, 'Vietnam', 'VN', 'Lai Châu', 0),
(602, 'Vĩnh Thuận', 9.50802, 105.257, 'Vietnam', 'VN', 'Kiến Giang', 0),
(603, 'Vĩnh Tường', 21.2165, 105.512, 'Vietnam', 'VN', 'Vĩnh Phúc', 0),
(604, 'Chúc Sơn', 20.9237, 105.702, 'Vietnam', 'VN', 'Hà Nội', 0),
(605, 'Thị Trấn Phố Lu', 22.3192, 104.187, 'Vietnam', 'VN', 'Lào Cai', 0),
(606, 'Yên Phú', 22.7322, 105.371, 'Vietnam', 'VN', 'Hà Giang', 0),
(607, 'Thanh Bình', 10.5619, 105.484, 'Vietnam', 'VN', 'Đồng Tháp', 0),
(608, 'Hóc Môn', 10.8891, 106.595, 'Vietnam', 'VN', 'Hồ Chí Min', 0),
(609, 'Phú Mỹ', 10.5924, 105.356, 'Vietnam', 'VN', 'An Giang', 0),
(610, 'Quan Hóa', 20.3848, 105.1, 'Vietnam', 'VN', 'Thanh Hóa', 0),
(611, 'Ân Thi', 20.8184, 106.091, 'Vietnam', 'VN', 'Hưng Yên', 0),
(612, 'Gôi', 20.3334, 106.078, 'Vietnam', 'VN', 'Nam Định', 0),
(613, 'Thị Trấn Đồng Văn', 23.2784, 105.363, 'Vietnam', 'VN', 'Hà Giang', 0),
(614, 'Thị Trấn Vinh Quang', 22.7408, 104.68, 'Vietnam', 'VN', 'Hà Giang', 0),
(615, 'Yên Bình', 22.4099, 104.579, 'Vietnam', 'VN', 'Hà Giang', 0),
(616, 'Krông Kmar', 12.5045, 108.333, 'Vietnam', 'VN', 'Đắk Lắk', 0),
(617, 'Quỳ Châu', 19.5521, 105.094, 'Vietnam', 'VN', 'Nghệ An', 0),
(618, 'Quy Đạt', 17.8046, 105.97, 'Vietnam', 'VN', 'Quảng Bình', 0),
(619, 'Tây Trà', 15.1695, 108.36, 'Vietnam', 'VN', 'Quảng Ngãi', 0),
(620, 'Chợ Rã', 22.4511, 105.719, 'Vietnam', 'VN', 'Bắc Kạn', 0),
(621, 'Bằng Lũng', 22.1578, 105.596, 'Vietnam', 'VN', 'Bắc Kạn', 0),
(622, 'Phù Mỹ', 14.1718, 109.049, 'Vietnam', 'VN', 'Bình Định', 0),
(623, 'Chợ Gạo', 10.3498, 106.463, 'Vietnam', 'VN', 'Tiền Giang', 0),
(624, 'Than Uyên', 21.9591, 103.88, 'Vietnam', 'VN', 'Lai Châu', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_city` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `districts`
--

INSERT INTO `districts` (`id`, `name`, `id_city`) VALUES
(1, 'Hải Châu', 5),
(2, 'Cẩm Lệ', 5),
(3, 'Thanh Khê', 5),
(4, 'Liên Chiểu', 5),
(5, 'Ngũ Hành Sơn', 5),
(6, 'Sơn Trà', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categoryID` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `lat` double(10,6) NOT NULL,
  `lng` double(10,6) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `items`
--

INSERT INTO `items` (`id`, `name`, `categoryID`, `image`, `description`, `userID`, `address`, `lat`, `lng`, `status`, `created_at`, `update_at`) VALUES
(3, 'Ví da màu đen', 1, 'fileName1558570899.jpg', 'Nhặt được ví trên đoạn đường Quang Trung, ví có tiền đô và passport, có thể là người nước ngoài. Ai quen biết liên lạc giúp.', 3, '46 Thanh Thủy, Hải Châu, Đà Nẵng, Việt Nam', 16.080199, 108.212647, 1, '2019-05-23 00:21:40', NULL),
(4, 'Ví tiền', 1, 'fileName1559185816.jpg', 'Nhiều thứ trong ví, vui lòng liên lạc', 5, '226 Thanh Thủy, Thanh Bình, Hải Châu, Đà Nẵng, Việt Nam', 16.086065, 108.215434, 1, '2019-05-30 03:10:16', NULL),
(5, 'Laptop HP màu đen', 2, 'fileName1559837141.jpg', 'Core i5, nặng 1,5kg', 6, 'Ông Ích Đường, Cẩm Lệ, Đà Nẵng, Việt Nam', 16.016895, 108.204700, 1, '2019-06-06 16:05:42', NULL),
(6, 'Lap top ASUS', 2, 'fileName1559837290.jpg', 'core i7, fx570VM', 7, '25 Nguyễn Văn Linh, Đà Nẵng, Việt Nam', 16.060404, 108.215714, 1, '2019-06-06 16:08:10', NULL),
(7, 'Chó con Chihuahua màu vàng', 3, 'fileName1559837448.jpg', 'Nặng tầm 2kg, đeo vòng cổ màu trắng ghi ngày 14/06/2018', 8, '123 Trưng Nữ Vương, Hải Châu, Đà Nẵng, Việt Nam', 16.057202, 108.220444, 1, '2019-06-06 16:10:48', NULL),
(8, 'Chó Husky đen trắng', 3, 'fileName1559837593.jpg', 'Nặng 10kg', 9, '60 Nguyễn Thị Minh Khai, Hải Châu, Đà Nẵng, Việt Nam', 16.073747, 108.218072, 1, '2019-06-06 16:13:13', NULL),
(9, 'Chó Pug màu xám', 3, 'fileName1559837745.jpg', 'Giống đực, đeo vòng cổ màu đỏ', 10, '30 Ông Ích Khiêm, Thanh Bình, Hải Châu, Đà Nẵng, Việt Nam', 16.078066, 108.211723, 1, '2019-06-06 16:15:45', NULL),
(10, 'Laptop Dell màu trắng', 2, 'fileName1559837889.jpg', 'Core i7, 15.6\"', 11, '06 Cao Thắng, Thanh Bình, Hải Châu, Đà Nẵng, Việt Nam', 16.075837, 108.214971, 1, '2019-06-06 16:18:09', NULL),
(11, 'Mèo màu vàng', 3, 'fileName1559838064.jpg', 'Giống cái, nặng khoảng 1kg', 12, '60 Nguyễn Lương Bằng, Liên Chiểu, Đà Nẵng, Việt Nam', 16.074080, 108.149791, 1, '2019-06-06 16:21:05', NULL),
(12, 'Mèo màu xám', 3, 'fileName1559838168.jpg', 'Nặng 5kg, giống cái', 13, '34 Lê Duẩn, Đà Nẵng, Việt Nam', 16.070868, 108.219050, 1, '2019-06-06 16:22:48', NULL),
(13, 'Mèo màu vàng', 3, 'fileName1559838418.jpg', 'Giống đực, nặng 6kg, rất ú', 14, '30 Trần Hưng Đạo, An Hải Tây, Sơn Trà, Đà Nẵng, Việt Nam', 16.062222, 108.230200, 1, '2019-06-06 16:26:58', NULL),
(14, 'Iphone 7 plus', 4, 'fileName1559838668.png', 'Màu trắng, 64GB, hình nền là 1 giọt nước', 15, '20 Huyền Trân Công Chúa, Ngũ Hành Sơn, Đà Nẵng, Việt Nam', 16.003729, 108.265624, 1, '2019-06-06 16:31:08', NULL),
(15, 'SamSung Galaxy 8 Plus', 4, 'fileName1559838845.jpg', 'Màu vàng kim, bị vỡ camera sau', 16, '158 Võ Nguyên Giáp, Sơn Trà, Đà Nẵng, Việt Nam', 16.074771, 108.245011, 1, '2019-06-06 16:34:05', NULL),
(16, 'Huwei P30 pro', 4, 'fileName1559839040.png', 'Máy màu xanh biển, hình nền là Trái Đất có 1 chấm đỏ', 17, '55 Lý Thánh Tông, Sơn Trà, Đà Nẵng, Việt Nam', 16.071149, 108.237566, 1, '2019-06-06 16:37:20', NULL),
(17, 'ATM Vietcombank', 5, 'fileName1559839214.jpg', 'Có tên Huynh Diep Nhu Ngoc, Member Since 05/13', 18, 'ATM Vietcombank, Đường Trần Phú, Hải Châu 1, Hải Châu, Đà Nẵng, Việt Nam', 16.069888, 108.224169, 1, '2019-06-06 16:40:14', NULL),
(18, 'ATM Vietcombank', 5, 'fileName1559839214.jpg', 'Có tên Huynh Diep Nhu Ngoc, Member Since 05/13', 19, 'ATM Vietcombank, Đường Trần Phú, Hải Châu 1, Hải Châu, Đà Nẵng, Việt Nam', 16.069888, 108.224169, 1, '2019-06-06 16:40:15', NULL),
(19, 'ATM Sacombank', 5, 'fileName1559840113.jpg', 'Thẻ thanh toán Plus 9704 0300 1234 1234', 20, '20 Phạm Như Xương, Hòa Khánh Nam, Liên Chiểu, Đà Nẵng, Việt Nam', 16.062817, 108.157047, 0, '2019-06-06 16:55:13', NULL),
(20, 'CMND Lương Văn Phúc', 6, 'fileName1559840318.jpg', 'CMND số 063299162 ở Lào Cai', 21, '183 Hải Phòng, Thanh Khê, Đà Nẵng, Việt Nam', 16.071434, 108.212253, 1, '2019-06-06 16:58:38', NULL),
(21, 'Hộ chiếu', 6, 'fileName1559840456.jpg', 'Hộ chiếu tên Nguyễn Thị Như, ở Hà Nội', 22, '123 Phan Đăng Lưu, Hòa Cường Nam, Hải Châu, Đà Nẵng, Việt Nam', 16.036002, 108.216393, 1, '2019-06-06 17:00:57', NULL),
(22, 'Ví nữ màu đỏ', 1, 'fileName1559840617.jpg', 'Ví Gucci màu đỏ nữ, trong có tiền và CMND mang tên Nguyễn Thị Nga', 23, '450 Ngô Quyền, An Hải Bắc, Sơn Trà, Đà Nẵng, Việt Nam', 16.076700, 108.231000, 0, '2019-06-06 17:03:37', NULL),
(23, 'Lắc tay vàng nữ', 7, 'fileName1559840768.jpg', 'Có ghi ngày 20/10/1998 và ký tự đặc biệt', 24, '50 Nguyễn Văn Thoại, Mỹ An, Ngũ Hành Sơn, Đà Nẵng, Việt Nam', 16.054185, 108.239433, 1, '2019-06-06 17:06:08', NULL),
(24, 'Mèo con màu đen', 3, 'fileName1560646736.jpg', 'Mèo con màu đen đi lạc, không có vòng cổ', 25, 'Cao Thắng, Hải Châu, Đà Nẵng, Việt Nam', 16.076537, 108.213746, 1, '2019-06-16 00:58:56', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_05_22_144727_create_categolories_table', 1),
(2, '2019_05_22_144911_create_users_table', 1),
(3, '2019_05_22_150403_create_items_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rawname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `rawname`, `phone`, `image`, `gender`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'Anh Tài', '0981974393', NULL, NULL, 1, NULL, NULL, NULL),
(2, NULL, NULL, NULL, 'Khánh Lộc', '0905062492', NULL, NULL, 1, NULL, NULL, NULL),
(3, NULL, NULL, NULL, 'Anh Tài', '0935598763', NULL, NULL, 1, NULL, NULL, NULL),
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'nqat2003@gmail.com', 'Anh Tài', '0981974393', NULL, 1, 0, NULL, '2019-05-30 01:12:45', NULL),
(5, NULL, NULL, NULL, 'Anh Tài', '0981974393', NULL, NULL, 1, NULL, '2019-05-30 03:10:16', NULL),
(6, NULL, NULL, NULL, 'Nguyễn Văn A', '0123456789', NULL, NULL, 1, NULL, '2019-06-06 16:05:42', NULL),
(7, NULL, NULL, NULL, 'Lương Thị Như Ý', '0123987465', NULL, NULL, 1, NULL, '2019-06-06 16:08:10', NULL),
(8, NULL, NULL, NULL, 'Trần Thị Nhung', '0987321456', NULL, NULL, 1, NULL, '2019-06-06 16:10:48', NULL),
(9, NULL, NULL, NULL, 'Lê Xuân Thanh', '0852147639', NULL, NULL, 1, NULL, '2019-06-06 16:13:13', NULL),
(10, NULL, NULL, NULL, 'Lương Thị Mi', '0147852963', NULL, NULL, 1, NULL, '2019-06-06 16:15:45', NULL),
(11, NULL, NULL, NULL, 'Trần Quân', '0896532147', NULL, NULL, 1, NULL, '2019-06-06 16:18:09', NULL),
(12, NULL, NULL, NULL, 'Lê Văn Dương', '0987124563', NULL, NULL, 1, NULL, '2019-06-06 16:21:05', NULL),
(13, NULL, NULL, NULL, 'Dương Đình Thi', '0125463987', NULL, NULL, 1, NULL, '2019-06-06 16:22:48', NULL),
(14, NULL, NULL, NULL, 'Lê Xuân Ái', '0158963247', NULL, NULL, 1, NULL, '2019-06-06 16:26:58', NULL),
(15, NULL, NULL, NULL, 'Nguyễn Thành Đạt', '0147852369', NULL, NULL, 1, NULL, '2019-06-06 16:31:08', NULL),
(16, NULL, NULL, NULL, 'Huyền Trang', '0258963147', NULL, NULL, 1, NULL, '2019-06-06 16:34:05', NULL),
(17, NULL, NULL, NULL, 'Lương Anh Đức', '0741236589', NULL, NULL, 1, NULL, '2019-06-06 16:37:20', NULL),
(18, NULL, NULL, NULL, 'Thái Thị Trà', '0123987456', NULL, NULL, 1, NULL, '2019-06-06 16:40:14', NULL),
(19, NULL, NULL, NULL, 'Thái Thị Trà', '0123987456', NULL, NULL, 1, NULL, '2019-06-06 16:40:14', NULL),
(20, NULL, NULL, NULL, 'Nguyễn Tài', '0159632487', NULL, NULL, 1, NULL, '2019-06-06 16:55:13', NULL),
(21, NULL, NULL, NULL, 'Nguyễn Quang Thiên Kim', '0159632748', NULL, NULL, 1, NULL, '2019-06-06 16:58:38', NULL),
(22, NULL, NULL, NULL, 'Nguyễn Kim Thành', '0158742396', NULL, NULL, 1, NULL, '2019-06-06 17:00:56', NULL),
(23, NULL, NULL, NULL, 'Lương Xuân Trường', '0178932546', NULL, NULL, 1, NULL, '2019-06-06 17:03:37', NULL),
(24, NULL, NULL, NULL, 'Nguyễn Quang Thiên Bảo', '0145632897', NULL, NULL, 1, NULL, '2019-06-06 17:06:08', NULL),
(25, NULL, NULL, NULL, 'Anh Tài', '0981974393', NULL, NULL, 1, NULL, '2019-06-16 00:58:56', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wards`
--

CREATE TABLE `wards` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_district` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `wards`
--

INSERT INTO `wards` (`id`, `name`, `id_district`) VALUES
(1, 'Thanh Bình', 1),
(2, 'Thuận Phước', 1),
(3, 'Thạch Thang', 1),
(4, 'Hải Châu 1', 1),
(5, 'Hải Châu 2', 1),
(6, 'Phước Ninh', 1),
(7, 'Hòa Thuận Tây', 1),
(8, 'Hòa Thuận Đông', 1),
(9, 'Nam Dương', 1),
(10, 'Bình Hiên', 1),
(11, 'Bình Thuận', 1),
(12, 'Hòa Cường Bắc', 1),
(13, 'Hòa Cường Nam', 1),
(14, 'Hòa An', 2),
(15, 'Hòa Phát', 2),
(16, 'Hòa Thọ Đông', 2),
(17, 'Hòa Thọ Tây', 2),
(18, 'Hòa Xuân', 2),
(19, 'Khuê Trung', 2),
(20, 'An Khê', 3),
(21, 'Chính Gián', 3),
(22, 'Hòa Khê', 3),
(23, 'Tam Thuận', 3),
(24, 'Tân Chính', 3),
(25, 'Thạc Gián', 3),
(26, 'Thanh Khê Đông', 3),
(27, 'Thanh Khê Tây', 3),
(28, 'Vĩnh Trung', 3),
(29, 'Xuân Hà', 3),
(30, 'Hòa Hiệp Bắc', 4),
(31, 'Hòa Hiệp Nam', 4),
(32, 'Hòa Khánh Bắc', 4),
(33, 'Hòa Khánh Nam', 4),
(34, 'Hòa Minh', 4),
(35, 'Liên Chiểu', 4),
(36, 'Hòa Hải', 5),
(37, 'Hòa Quý', 5),
(38, 'Khuê Mỹ', 5),
(39, 'Mỹ An', 5),
(40, 'An Hải Bắc', 6),
(41, 'An Hải Đông', 6),
(42, 'An Hải Tây', 6),
(43, 'Mân Thái', 6),
(44, 'Nại Hiên Đông', 6),
(45, 'Phước Mỹ', 6),
(46, 'Thọ Quang', 6);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_city` (`id_city`);

--
-- Chỉ mục cho bảng `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryID` (`categoryID`),
  ADD KEY `userID` (`userID`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_district` (`id_district`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=625;

--
-- AUTO_INCREMENT cho bảng `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `wards`
--
ALTER TABLE `wards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_ibfk_1` FOREIGN KEY (`id_city`) REFERENCES `city` (`id`);

--
-- Các ràng buộc cho bảng `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `wards`
--
ALTER TABLE `wards`
  ADD CONSTRAINT `wards_ibfk_1` FOREIGN KEY (`id_district`) REFERENCES `districts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
