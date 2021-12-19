-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 03, 2021 lúc 01:13 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `datn_gr20`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_details`
--

CREATE TABLE `bill_details` (
  `Id` int(255) NOT NULL,
  `name_product` char(255) NOT NULL,
  `price` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'IPHONE'),
(2, 'OPPO'),
(3, 'REALME'),
(4, 'SAMSUNG'),
(5, 'NOKIA'),
(6, 'HUAWEI'),
(7, 'PHỤ KIỆN'),
(8, 'BỘ SẠC'),
(9, 'TAI NGHE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `unit_price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `item`
--

INSERT INTO `item` (`item_id`, `product_id`, `unit_price`, `quantity`, `order_id`) VALUES
(9, 51, 77, 1, 14),
(10, 88, 50, 1, 14),
(11, 49, 52, 2, 15),
(12, 50, 54, 1, 15),
(13, 88, 50, 3, 15),
(14, 89, 48, 1, 15),
(15, 51, 77, 3, 16),
(16, 47, 60, 1, 16),
(17, 49, 52, 2, 17),
(18, 58, 59, 1, 17),
(19, 49, 52, 2, 21),
(20, 60, 68, 1, 22),
(21, 50, 54, 1, 23),
(22, 88, 49, 3, 23),
(23, 89, 48, 2, 23),
(24, 51, 76, 2, 24),
(25, 52, 64, 1, 24),
(26, 58, 59, 5, 25),
(27, 47, 60, 3, 25),
(28, 50, 54, 1, 26),
(29, 89, 48, 2, 26),
(30, 64, 71, 1, 27),
(31, 51, 76, 4, 27),
(32, 77, 53, 1, 27),
(33, 51, 76, 1, 28),
(34, 47, 60, 3, 28),
(35, 52, 64, 1, 29),
(36, 47, 60, 1, 30),
(37, 81, 42, 2, 31),
(38, 60, 68, 1, 31),
(39, 81, 42, 3, 32),
(40, 98, 42, 1, 33),
(41, 77, 53, 1, 33),
(42, 49, 52, 3, 34),
(43, 95, 44, 2, 34),
(44, 98, 70, 5, 35),
(45, 55, 67, 2, 35),
(46, 72, 70, 3, 35),
(47, 47, 60, 2, 36),
(48, 51, 76, 1, 37),
(49, 51, 76, 1, 38),
(50, 60, 68, 1, 39),
(51, 1, 108000, 1, 40),
(52, 1, 108000, 1, 41),
(53, 109, 108000, 1, 42),
(54, 111, 108000, 1, 43),
(55, 112, 108000, 1, 44),
(56, 129, 108000, 1, 44),
(57, 110, 108000, 3, 45),
(58, 113, 108000, 1, 46),
(59, 209, 1000, 1, 47),
(60, 211, 117, 1, 47),
(61, 201, 1000, 1, 48),
(62, 212, 1000, 1, 49),
(63, 213, 119, 1, 50),
(64, 201, 1000, 3, 50),
(65, 210, 119, 1, 51),
(66, 213, 119, 1, 52),
(67, 204, 1010, 3, 53),
(68, 201, 1000, 2, 54),
(69, 204, 1010, 1, 55),
(70, 182, 45, 1, 56),
(71, 192, 333, 1, 57),
(72, 190, 900, 1, 58),
(73, 209, 1000, 1, 59),
(74, 192, 333, 1, 60),
(75, 192, 333, 1, 61),
(76, 192, 333, 2, 62),
(77, 198, 390, 1, 63),
(78, 198, 390, 1, 64),
(79, 192, 333, 5, 66),
(80, 192, 333, 1, 67),
(81, 198, 390, 1, 67),
(82, 192, 333, 1, 68),
(83, 203, 281, 1, 68),
(84, 201, 1000, 1, 69),
(85, 190, 900, 1, 69),
(86, 192, 333, 1, 70),
(87, 197, 399, 1, 70);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_user`
--

CREATE TABLE `order_user` (
  `order_id` bigint(20) NOT NULL,
  `buy_date` datetime NOT NULL,
  `status` varchar(100) NOT NULL,
  `price_total` float NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_user`
--

INSERT INTO `order_user` (`order_id`, `buy_date`, `status`, `price_total`, `user_id`) VALUES
(47, '2021-11-20 00:00:00', 'SUCCESS', 1122, 98),
(48, '2021-11-20 00:00:00', 'SUCCESS', 1005, 98),
(49, '2021-11-20 00:00:00', 'PENDING', 1005, 98),
(50, '2021-11-20 00:00:00', 'PENDING', 3124, 99),
(51, '2021-11-20 00:00:00', 'SUCCESS', 124, 99),
(52, '2021-11-20 00:00:00', 'SUCCESS', 124, 99),
(53, '2021-11-23 00:00:00', 'SUCCESS', 3035, 96),
(54, '2021-11-24 00:00:00', 'PENDING', 2005, 98),
(55, '2021-11-24 00:00:00', 'SUCCESS', 1015, 98),
(56, '2021-11-24 00:00:00', 'SUCCESS', 50, 98),
(57, '2021-12-01 00:00:00', 'PENDING', 338, 98),
(58, '2021-12-02 00:00:00', 'SUCCESS', 30900, 98),
(59, '2021-12-02 00:00:00', 'SUCCESS', 31000, 98),
(60, '2021-12-02 00:00:00', 'PENDING', 30333, 98),
(61, '2021-12-02 00:00:00', 'SUCCESS', 30333, 98),
(62, '2021-12-02 00:00:00', 'PENDING', 30666, 98),
(63, '2021-12-02 00:00:00', 'PENDING', 30390, 98),
(64, '2021-12-02 00:00:00', 'PENDING', 30390, 98),
(65, '2021-12-02 00:00:00', 'PENDING', 30000, 98),
(66, '2021-12-02 00:00:00', 'PENDING', 31665, 96),
(67, '2021-12-02 00:00:00', 'PENDING', 30723, 98),
(68, '2021-12-02 00:00:00', 'PENDING', 30614, 96),
(69, '2021-12-02 00:00:00', 'PENDING', 31900, 96),
(70, '2021-12-02 00:00:00', 'PENDING', 30732, 96);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sale_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `description`, `image`, `price`, `product_name`, `quantity`, `category_id`, `sale_id`) VALUES
(182, ' 7 MP\r\nChip: CPU\r\nRAM: 3 GB\r\nB&#7897; nh&#7899; trong: 256 GB\r\nSIM: 1 Nano SIM', '1637424019614.jpg', 50, 'IPhone 7s', 123, 1, 's10pc'),
(183, 'CPU RAM: 3 GB B&#7897; nh&#7899; trong: 256 GB SIM: 1 Nano SIM', '1637424046638.png', 50, 'iPhone 6s/6s', 123, 1, 'default'),
(184, 'CPU RAM: 3 GB B&#7897; nh&#7899; trong: 256 GB SIM: 1 Nano SIM', '1637424072372.jpg', 123, 'IPhone 7s', 100, 1, 'default'),
(185, '\r\nH&#7879; &#273;i&#7873;u hành:	OS 11\r\nMàn hình:	Retina HD 5.5 inch\r\n&#272;&#7897; phân gi&#7843;i:	Full HD (1080 x 1920 pixels)', '1637424157821.jpg', 123, 'IPhone 8 plus', 100, 1, 's10pc'),
(186, 'B&#7897; nh&#7899; trong:	64GB\r\nCPU:	Apple A11 Bionic 6 nhân\r\nCamera Sau:	2 camera 12 MP\r\nCamera tr&#432;&#7899;c:	7 MP', '1637424198881.jpg', 132, 'iPhone SE ', 123, 1, 's20pc'),
(187, '&#272;&#7897; phân gi&#7843;i: 12 MP, f/1.8, 28mm, 1.4µm, OIS, PDAF và 12 MP, f/2.4, 52mm, 1.0µm, OIS, PDAF, 2x optical zoom\r\nQuay phim: 2160p@24/30/60fps', '1637424274642.jpg', 130, 'IPhone X ', 100, 1, 's10pc'),
(188, '1080p@30/60/120/240fps, HDR, stereo sound rec.\r\n&#272;èn Flash: 4 &#273;èn LED (2 tông màu)', '1637424370959.png', 123, 'iPhone 11 PRO', 123, 1, 'default'),
(189, '1080p@30/60/120/240fps, HDR, stereo sound rec.\r\n&#272;èn Flash: 4 &#273;èn LED (2 tông màu)', '1637424454893.jpg', 123, 'iPhone 12 PRO MAX', 123, 1, 's20pc'),
(190, 'Công ngh&#7879; màn hình: IPS LCD\r\n&#272;&#7897; phân gi&#7843;i: 750 x 1334 pixels\r\nMàn hình r&#7897;ng: 4.7 inches', '1637424507461.jpg', 1000, 'iPhone 13 PRO', 123, 2, 's10pc'),
(191, 'Màn hình:\r\n\r\nAMOLED6.43\"Full HD+\r\nH&#7879; &#273;i&#7873;u hành:\r\n\r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 64 MP & Ph&#7909; 8 MP, 2 MP\r\nCamera tr&#432;&#7899;c:\r\n\r\n32 MP', '1637424581416.jpg', 123, 'OPPO ZENO 6', 100, 2, 'default'),
(192, 'Màn hình:\r\n\r\nIPS LCD6.5\"HD+\r\nH&#7879; &#273;i&#7873;u hành:\r\n\r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 50 MP & Ph&#7909; 2 MP, 2 MP\r\nCamera tr&#432;&#7899;c:\r\n\r\n16 MP', '1637424636475.jpg', 333, 'OPPO A55', 123, 2, 'default'),
(193, 'Camera sau	Camera chính góc r&#7897;ng 48 MP (F/1.7)\r\nCamera góc siêu r&#7897;ng 8 MP (F/2.2)\r\nCamera macro 2 MP (F/2.4)\r\nCamera &#273;&#417;n s&#7855;c 2 MP (F/2.4)\r\n', '1637424704583.jpg', 130, 'OPPO A15S', 123, 2, 'default'),
(194, 'Camera tr&#432;&#7899;c	32 MP\r\nKh&#7849;u &#273;&#7897; F/2.4\r\nChipset	Helio P95, t&#7889;i &#273;a 2.2GHz\r\nDung l&#432;&#7907;ng RAM	8 GB\r\nB&#7897; nh&#7899; trong	128 GB', '1637424761375.jpg', 160, 'OPPO A94', 100, 2, 's10pc'),
(195, ' \r\nChipset	Helio P95, t&#7889;i &#273;a 2.2GHz\r\nDung l&#432;&#7907;ng RAM	8 GB\r\nB&#7897; nh&#7899; trong	128 GB', '1637424817815.jpg', 123, 'OPPO F9', 123, 2, 's10pc'),
(196, 'MediaTek Dimensity 800U 5G\r\nRAM:\r\n\r\n8 GB\r\nB&#7897; nh&#7899; trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMH&#7895; tr&#7907; 5G', '1637425001729.jpg', 123, 'OPPO A16', 100, 2, 's10pc'),
(197, ' \r\nRAM:\r\n8 GB\r\nB&#7897; nh&#7899; trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMH&#7895; tr&#7907; 5G', '1638205568165.jpg', 443, 'OPPO A53', 100, 2, 's10pc'),
(198, ' Dimensity 800U 5G\r\nRAM:\r\n\r\n8 GB\r\nB&#7897; nh&#7899; trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMH&#7895; tr&#7907; 5G', '1638198239001.jpg', 433, 'OPPO A74', 123, 2, 's10pc'),
(199, 'Th&#432;&#417;ng hi&#7879;u: Realme\r\nModel: C3I RMX2027 XANH\r\nMã SP: GS.003908', '1637425185156.jpg', 130, 'Realme C3', 211, 3, 'default'),
(200, 'Xu&#7845;t x&#7913;	Trung Qu&#7889;c\r\n2	B&#7843;o hành	12 tháng\r\n3	Kích th&#432;&#7899;c màn hình	6.5\"', '1637425246760.jpg', 132, 'Realme 3 PRO', 211, 3, 's10pc'),
(201, '	Công ngh&#7879; màn hình	IPS LCD\r\n5	&#272;&#7897; phân gi&#7843;i	HD+ (720 x 1600 Pixels)', '1637425289464.jpg', 1111, 'Realme 6 PRO', 100, 3, 's10pc'),
(202, '16	RAM	2GB\r\n17	B&#7897; nh&#7899; trong (ROM)	32GB\r\n18	Th&#7867; nh&#7899; ngoài	MicroSD', '1637425348369.png', 312, 'Realme C11', 100, 3, 's10pc'),
(203, ' \r\n17	B&#7897; nh&#7899; trong (ROM)	32GB\r\n18	Th&#7867; nh&#7899; ngoài	MicroSD', '1637425421047.jpg', 312, 'Realme Q', 123, 3, 's10pc'),
(206, '13	Chipset	MediaTek Helio G70 8 nhân\r\n14	T&#7889;c &#273;&#7897; CPU	2 nhân 2.0 GHz & 6 nhân 1.7 GHz\r\n15	Chip &#273;&#7891; h&#7885;a (GPU)	Mali-G52 MC2', '1637425576046.jpg', 130, 'Samsung A70', 100, 4, 's10pc'),
(207, '13	Chipset	MediaTek Helio G70 8 nhân\r\n14	T&#7889;c &#273;&#7897; CPU	2 nhân 2.0 GHz & 6 nhân 1.7 GHz\r\n15	Chip &#273;&#7891; h&#7885;a (GPU)	Mali-G52 MC2', '1637425655434.jpg', 123, 'Samsung A30', 100, 4, 's10pc'),
(208, 'Video Call	H&#7895; tr&#7907; VideoCall thông qua &#7913;ng d&#7909;ng\r\n12	H&#7879; &#273;i&#7873;u hành	Android 10', '1637425820786.jpg', 123, 'Samsung 9S', 123, 4, 's10pc'),
(209, '13	Chipset	MediaTek Helio G70 8 nhân\r\n14	T&#7889;c &#273;&#7897; CPU	2 nhân 2.0 GHz & 6 nhân 1.7 GHz', '1637425873079.jpg', 1111, 'Nokia 2110i', 100, 5, 's10pc'),
(210, ' 	MediaTek Helio G70 8 nhân\r\n14	T&#7889;c &#273;&#7897; CPU	2 nhân 2.0 GHz & 6 nhân 1.7 GHz', '1637425904236.jpg', 132, 'Nokia 2220 slide', 211, 5, 's10pc'),
(211, 'Công ngh&#7879; màn hình: LTPS IPS LCD\r\n&#272;&#7897; phân gi&#7843;i: 1080 x 2280 pixels\r\nMàn hình r&#7897;ng: 5.84 inches', '1638526825675.jpg', 130, 'Huawei Mate 20 Pro', 123, 6, 's10pc'),
(213, '  Ch&#7841;m l&#7845;y nét, Nh&#7853;n di&#7879;n khuôn m&#7863;t, HDR, Toàn c&#7843;nh (Panorama), Chuyên nghi&#7879;p (Pro)', '1637426067560.jpg', 132, 'Huawei P40 Pro PLUS', 1321, 6, 's10pc'),
(214, 'ram5g - 180 GB \r\nCAMERA 14PX', '1638282256553.jpg', 123, 'Realme Q', 123, 3, 's10pc'),
(222, 'Tai nghe bluetooth không dây Inpods i12 TWS nút c&#7843;m &#7913;ng âm thanh HIFI có mic &#273;àm tho&#7841;i', '1638530225671.jpg', 79000, 'Tai nghe i12', 123, 9, 's10pc'),
(223, 'Tai Nghe Bluetooth SAMSUNG U Flex Không Dây &#272;eo C&#7893; Có Micro Th&#7875; Thao Ch&#7889;ng R&#417;i Cao C&#7845;p Pin Tai Nghe Hay B&#7843;o Hành 1 &#272;&#7893;i 1', '1638530292692.jpg', 179000, 'Tai nghe Bluetooth Samsung', 123, 9, 'default'),
(224, '[HOT] Tai Nghe Bluetooth Gaming Ch&#7909;p Tai Cao C&#7845;p,Headphone Bluetooth Tai Nghe Máy Tính,Laptop Không Dây Có Mic Ch&#417;i Game', '1638530335070.jpg', 350000, 'Tai Nghe Bluetooth Gaming ', 123, 9, 'default'),
(225, 'Tai Nghe Bluetooth Headphone HAVIT i62, Driver 40mm, BT 5.0, Nghe &#272;&#7871;n 8H, G&#7853;p G&#7885;n 90 - Chính Hãng BH 12 Tháng Dizigear', '1638530382340.jpg', 449000, 'Tai Nghe Headphone', 123, 9, 's10pc'),
(226, 'Tai Nghe Bluetooth Headphone Soul Ultra Wireless Âm Bass &#272;i&#7879;n T&#7917;, BT 5.0, Nghe &#272;&#7871;n 36H - Chính Hãng BH 12 Tháng Dizigear', '1638530425129.jpg', 790000, 'Headphone Soul Ultra', 123, 9, 's10pc'),
(227, '\r\n\r\n\r\nChia s&#7867;:\r\n\r\n&#272;ã thích (1,8k)\r\nTai Nghe Gaming Headphone HAVIT H2232D, Driver 50, &#272;èn RGB, Mic Kh&#7917; &#7890;n, &#272;a T&#432;&#417;ng Thích - Chính Hãng BH 12 Tháng Dizigear', '1638530466308.png', 479000, 'Headphone HAVIT H2232D', 123, 9, 'default'),
(228, 'Tai Nghe Gaming MPOW Air SE BH439A Mic Kh&#7917; &#7890;n, C&#7843;m Giác &#272;eo Êm Ái, Âm L&#432;&#7907;ng L&#7899;n - Chính Hãng BH 24 Tháng Dizigear', '1638530501836.jpg', 649000, 'Gaming MPOW Air', 123, 9, 's10pc'),
(229, '\r\n\r\n\r\nChia s&#7867;:\r\n\r\n&#272;ã thích (625)\r\nTai Nghe Bluetooth Headphone Soul Ultra Wireless Âm Bass &#272;i&#7879;n T&#7917;, BT 5.0, Nghe &#272;&#7871;n 36H - Chính Hãng BH 12 Tháng Dizigear', '1638530545155.webp', 790000, 'Headphone Soul Ultra', 123, 9, 's10pc'),
(230, 'aaaa', 'aaa', 35000, 'qưeee', 123, 9, 'default'),
(231, 'aaaa', 'aaa', 35000, 'qưeee', 123, 9, 'default'),
(232, 'Tai nghe bluetooth Gaming Apro366 TWS, bass m&#7841;nh m&#7869; có mic , &#273;&#7897; tr&#7877; c&#7921;c th&#7845;p khi ch&#417;i game (bh 6 tháng)', '1638530580092.jpg', 185000, ' Gaming Apro366 TWS,', 123, 9, 's10pc'),
(233, ' Tai nghe bluetooth không dây B39 cao c&#7845;p, headphone bluetooth ch&#7909;p tai g&#7853;p g&#7885;n ti&#7879;n l&#7907;i (M&#7846;U &#272;EN CÓ &#272;ÈN LED &#272;&#7892;I M&#7846;U)', '1638530641682.jpg', 541000, 'ch&#7909;p tai Led B39', 123, 9, 'default'),
(234, 'Tai Nghe Ch&#7909;p Tai Gaming PC Có Mic Có dây Máy Tính Ch&#417;i Game th&#7911; Chuyên D&#7909;ng Có &#272;èn Led Nhi&#7873;u Màu', '1638530696717.jpg', 219000, ' Gaming PC', 123, 9, 'default'),
(235, 'Tai Nghe Mèo Bluetooth Ch&#7909;p Tai ,Tai Mèo D&#7877; Th&#432;&#417;ng Có Mic, Âm Bass M&#7841;nh M&#7869; B&#7843;o Hành 1 N&#259;m', '1638530790299.jpg', 800000, 'Tai Nghe Mèo', 123, 9, 's10pc'),
(236, 'Tai Nghe Nhét Tai Dây D&#7865;t BYZ S389 [ B&#7843;o Hành Chính Hãng 12 Tháng]-Ph&#7909; Ki&#7879;n Nh&#7853;t Linh', '1638530859948.jpg', 420000, ' D&#7865;t BYZ S389', 123, 9, 's10pc'),
(242, 'B&#7897; c&#7911; cáp s&#7841;c nhanh SD Design C66, có 3 lo&#7841;i chân s&#7841;c &#273;i&#7879;n tho&#7841;i iPhone Lightning Micro TypeC B&#7843;o hành 12 Tháng', '1638531024830.jpg', 200000, 's&#7841;c nhanh SD', 123, 8, 'default'),
(243, ' Thi&#7871;t k&#7871; &#272;&#7871; s&#7841;c không dây Anker PowerPort Wireless 10 m&#7887;ng và nh&#7865; &#272;&#7871; s&#7841;c không dây Anker  ', '1638531078764.jpg', 500000, 's&#7841;c anker (Không Dây)', 123, 8, 's10pc'),
(244, ' Thi&#7871;t k&#7871; tinh t&#7871; - Nh&#7887; g&#7885;n, ti&#7879;n d&#7909;ng\r\nC&#7889;c s&#7841;c USB type C Anker PowerPort A2014 s&#7903; h&#7919;u màu &#273;en nhám sang tr&#7885;ng, kích th&#432;&#7899;c 51 x 58 x 29mm ', '1638531109803.jpg', 40000, ' PD 30W ANKER ', 123, 8, 's10pc'),
(245, 's&#7841;c nhanh chu&#7849;n 18w , b&#7873;n b&#7881;, ch&#7855;c ch&#7855;n, không nóng khi s&#7841;c\r\n \r\nThông s&#7889; &#273;&#7847;u vào c&#7911; s&#7841;c:\r\n+ &#272;i&#7879;n th&#7871; auto AC t&#7915; 100v - 220v.\r\n+ T&#7847;n s&#7889;: 50 - 60Hz', '1638531140291.jpg', 350000, 'QC 3.0 Blackberry', 123, 8, 's10pc'),
(246, 'Apple MagSafe trên iPhone 12 là m&#7897;t công ngh&#7879; m&#7899;i, &#273;&#432;&#7907;c phát tri&#7875;n nh&#7857;m gia t&#259;ng tr&#7843;i nghi&#7879;m s&#7841;c pin không dây.', '1638531178660.jpg', 600000, 'không dây MagSafe', 123, 8, 's10pc'),
(247, '&#272;&#432;&#7907;c bi&#7871;t, chu&#7849;n MagSafe mang l&#7841;i t&#7889;c &#273;&#7897; s&#7841;c lên &#273;&#7871;n 15W. V&#7899;i công ngh&#7879; này,  ', '1638531249710.jpg', 400000, 'S&#7841;c Nhanh 20W', 123, 8, 's10pc'),
(248, '[X&#7842; HÀNG - Giao h&#7887;a t&#7889;c n&#7897;i thành Hà N&#7897;i]S&#7841;c laptop asus giá r&#7867; TechShop công su&#7845;t 19V-1.75A/19V-2.37A/19v-3.42A', '1638531308081.jpg', 490000, 'S&#7841;c Máy Tính ASUS', 123, 8, 's10pc'),
(249, 'có nhi&#7873;u lo&#7841;i chân, th&#432;&#7901;ng là chân to và chân nh&#7887;,  &#128683;khách hàng r&#7845;t hay &#273;&#7863;t nh&#7847;m&#128683;, hãy vui lòng Chát v&#7899;i shop và g&#7917;i mã máy phía sau thân máy cho shop &#273;i &#7841;!', '1638531345519.jpg', 580000, 'S&#7840;C MÁY TÍNH TOSI', 123, 8, 's10pc'),
(252, 'aaaa', 'aaa', 35000, 'qưeee', 123, 8, 'default'),
(253, 'aaaa', 'aaa', 35000, 'qưeee', 123, 8, 'default'),
(266, '&#7888;p l&#432;ng iphone trong l&#7895; vi&#7873;n camera hình in xgirl 6splus/7/7plus/8/8plus/x/xr/xs/11/12/pro/max/plus/promax- Awifi G3-1', '1638531436981.jpg', 50000, '&#7888;p L&#432;ng Iphone 6/6s', 123, 7, 'default'),
(267, 'Kính c&#432;&#7901;ng l&#7921;c iphone 21D full màn 6/6s/7/7plus/8/8plus/plus/x/xr/xs/11/12/pro/max/Shin Case', '1638531484525.jpg', 29000, 'Kính c&#432;&#7901;ng L&#7921;c IP', 123, 7, 'default'),
(268, '- Mang l&#7841;i cho quý khách nh&#7919;ng s&#7843;n ph&#7849;m t&#7889;t nh&#7845;t,   Shin Case cam k&#7871;t s&#7869; hoàn ti&#7873;n ho&#7863;c g&#7917;i l&#7841;i s&#7843;n m&#7899;i thay th&#7871; cho quý khách.', '1638531534076.jpg', 20000, 'Kính C&#432;&#7901;ng L&#7921;c Realme', 123, 7, 's10pc'),
(269, 'Giá &#273;&#7905; &#273;i&#7879;n tho&#7841;i giá &#273;&#7905; ipad máy tính b&#7843;ng cao c&#7845;p &#273;&#7875; bàn g&#7845;p g&#7885;n dùng livestream h&#7885;c online - Ph&#7909; Ki&#7879;n Ch&#7845;n Thiên', '1638531584525.jpg', 190000, 'Giá &#272;&#7905; &#272;i&#7879;n Tho&#7841;i', 123, 7, 's10pc'),
(270, 'giá &#273;&#7905; &#273;i&#7879;n tho&#7841;i &#273;&#7875; bàn, giá &#273;&#7875; máy tính b&#7843;ng, ipad ch&#7889;ng tr&#432;&#7907;t, ti&#7879;n d&#7909;ng  ', '1638531641786.jpg', 140000, 'Giá &#272;&#7905; 2m Phone', 123, 7, 's10pc'),
(281, 'B&#7843;o hành chính hãng 12 tháng\r\nMua tr&#7843; góp th&#7911; t&#7909;c &#273;&#417;n gi&#7843;n ch&#7881; c&#7847;n CMND + GPLX\r\nGiao hàng t&#7853;n n&#417;i trên toàn qu&#7889;c. Ship', '1638531793381.jpg', 4900000, 'Huawei Nova 3e', 123, 6, 's10pc'),
(282, 'Huawei Nova 3e chính hãng s&#7905; h&#7919;u thi&#7871;t k&#7871; cao c&#7845;p cùng c&#7845;u hình m&#7841;nh m&#7869; ch&#417;i game m&#432;&#7907;t mà.', '1638531829173.jpg', 6900000, 'Huawei P40 Pro PLUS', 123, 6, 's10pc'),
(283, 'Huawei Nova 3e: Thi&#7871;t k&#7871; &#7845;n t&#432;&#7907;ng\r\nChi&#7871;c Huawei Nova 3e chính th&#7913;c ra m&#7855;t', '1638531866772.png', 9800000, 'Huawei Nova 3E ', 123, 6, 's10pc'),
(284, 'Công ngh&#7879; màn hình: LTPS IPS LCD\r\n&#272;&#7897; phân gi&#7843;i: 1080 x 2280 pixels\r\nMàn hình r&#7897;ng: 5.84 inches', '1638531906687.jpg', 5700000, 'Huawei 5Z', 123, 6, 's10pc'),
(285, '&#272;&#7897; phân gi&#7843;i: Dual: 16 MP + 2 MP, phase detection autofocus, LED flash\r\nQuay phim: 1080p@30fps', '1638531950131.jpg', 7700000, 'Huawei Mate 20 Pro', 123, 6, 's10pc'),
(286, 'H&#7879; &#273;i&#7873;u hành: Android 8.0 (Oreo)\r\nChipset (hãng SX CPU): HiSilicon Kirin 659\r\nT&#7889;c &#273;&#7897; CPU: Octa-core (4x2.36', '1638531976693.png', 5900000, 'Huawei P40V', 123, 6, 'default'),
(307, 'RAM 4 GB, ROM 64 GB\r\n\r\nCamera sau: Chính 13 MP & Ph&#7909; 5 MP, 2 MP\r\n\r\nCamera tr&#432;&#7899;c: 8 MP\r\n\r\nPin 4000 mAh, S&#7841;c 10 W\r\n ', '1638532054558.jpg', 450000, 'Nokia 2110i', 123, 5, 'default'),
(308, 'Màn hình 6.82\", Chip Spreadtrum SC9863A\r\n\r\nRAM 3 GB, ROM 32 GB\r\n\r\nCamera sau: Chính 13 MP & Ph&#7909; 2 MP\r\n\r\nCamera tr&#432;&#7899;c: 5 MP', '1638532083964.jpg', 4000000, 'Nokia 1280', 123, 5, 'default'),
(309, 'Màn hình 6.39\", Chip Snapdragon 460\r\n\r\nRAM 4 GB, ROM 64 GB\r\n\r\nCamera sau: Chính 13 MP & Ph&#7909; 5 MP, 2 MP', '1638532108979.jpg', 5500000, 'Nokia 636', 123, 5, 'default'),
(310, 'Màn hình 6.39\", Chip Snapdragon 460\r\n\r\nRAM 4 GB, ROM 64 GB\r\n\r\nCamera sau: Chính 13 MP & Ph&#7909; 5 MP, 2 MP', '1638532132700.jpg', 4900000, 'Nokia 34', 123, 5, 's10pc'),
(318, 'Màn hình:\r\n\r\nSuper AMOLED6.4\"Full HD+\r\nH&#7879; &#273;i&#7873;u hành:\r\n\r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 64 MP & Ph&#7909; 8 MP, 5', '1638532221790.jpg', 5000000, 'Samsung 9S PLUS', 123, 4, 'default'),
(319, 'Màn hình:\r\n\r\nSuper AMOLED6.4\"Full  \r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 64 MP & Ph&#7909; 8 MP, 5', '1638532247181.jpg', 4900000, 'Samsung C70', 123, 4, 's10pc'),
(320, 'Camera tr&#432;&#7899;c:\r\n\r\n20 MP\r\nChip:\r\n\r\nMediaTek Helio G80\r\nRAM:\r\n\r\n6 GB\r\nB&#7897; nh&#7899; trong:\r\n\r\n128 GB', '1638532283788.png', 120000000, 'Samsung GE', 123, 4, 's10pc'),
(325, 'Camera tr&#432;&#7899;c:\r\n\r\n20 MP\r\nChip:\r\n\r\nMediaTek Helio G80\r\nRAM:\r\n\r\n6 GB\r\nB&#7897; nh&#7899; trong:\r\n\r\n128 GB', '1638532323508.jpg', 4900000, 'Samsung CC', 123, 4, 'default'),
(333, 'Camera tr&#432;&#7899;c:\r\n\r\n20 MP\r\nChip:\r\n\r\nMediaTek Helio G80\r\nRAM:\r\n\r\n6 GB\r\nB&#7897; nh&#7899; trong:\r\n\r\n128 GB', '1638532414928.jpg', 6800000, 'Realme 4 PRO s', 123, 3, 'default'),
(334, 'Camera tr&#432;&#7899;c:\r\n\r\n20 MP\r\nChip:\r\n\r\nMediaTek Helio G80\r\nRAM:\r\n\r\n6 GB\r\nB&#7897; nh&#7899; trong:\r\n\r\n128 GB', '1638532456333.jpg', 23000000, 'Realme XX', 123, 3, 'default'),
(335, 'Chip:\r\n\r\nSnapdragon 460\r\nRAM:\r\n\r\n6 GB\r\nB&#7897; nh&#7899; trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMH&#7895; tr&#7907; 4G', '1638532486700.jpg', 35000, 'Realme C10', 123, 3, 's10pc'),
(336, 'Chip:\r\n\r\nSnapdragon 460\r\nRAM:\r\n\r\n6 GB\r\nB&#7897; nh&#7899; trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMH&#7895; tr&#7907; 4G', '1638532519422.jpg', 6900000, 'Realme C15', 123, 3, 's10pc'),
(345, 'Chip:\r\n\r\nSnapdragon 460\r\nRAM:\r\n\r\n6 GB\r\nB&#7897; nh&#7899; trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMH&#7895; tr&#7907; 4G', '1638532574671.jpg', 35000, 'OPPO A55 PLUSS', 123, 2, 's20pc'),
(354, 'Chip:\r\n\r\nSnapdragon 460\r\nRAM:\r\n\r\n6 GB\r\nB&#7897; nh&#7899; trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMH&#7895; tr&#7907; 4G', '1638532663573.jpg', 22000000, 'iPhone 11 S', 123, 1, 'default'),
(355, ' \r\nRAM:\r\n\r\n6 GB\r\nB&#7897; nh&#7899; trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMH&#7895; tr&#7907; 4G', '1638532708426.jpg', 25900000, 'iPhone 11 PLUS', 123, 1, 's10pc'),
(356, 'Cupertino, California  Apple today announced a new generation of iPhone: iPhone 8 and iPhone 8 Plus. The new iPhone features a new', '1638532759357.png', 9000000, 'Iphone 8 ', 123, 1, 's10pc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `receipt`
--

CREATE TABLE `receipt` (
  `Id` int(255) NOT NULL,
  `name_bill` char(255) NOT NULL,
  `id_user` int(255) DEFAULT NULL,
  `date_bill` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_MEMBER'),
(3, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` varchar(255) NOT NULL,
  `sale_percent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sale`
--

INSERT INTO `sale` (`sale_id`, `sale_percent`) VALUES
('default', 0),
('s10pc', 10),
('s20pc', 20),
('s30pc', 30),
('s40pc', 40),
('s50', 50);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `verify` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `address`, `full_name`, `gender`, `image`, `password`, `phone`, `role_id`, `avatar`, `email`, `verify`) VALUES
(96, 'Ba Vi,Ba Vi', 'Phan Nam', b'0', NULL, '$2a$10$yxSwlrvC74U776/oFj554OaunxVfpWc5/jJwB7OEQY45ADrWDj8Pa', '123123123', 1, '1637426268276.jpg', 'MINHMINH9811@GMAIL.COM', b'1'),
(98, '123 ha noi', 'Nam', b'1', NULL, '$2a$10$reqy.58ziM6MaUxLVQAPlOe2C7TTbuRhZElYJzjs.VgaL5T0KSZFi', '034644548', 3, '1637426315363.png', 'Nguyenok2001@gmail.com', b'1'),
(99, 'Ba Vi, ,99,99', 'Phan Nam 1', b'1', NULL, '$2a$10$H1Fkft.8VAKqbKwb3cRHWu8agp9X4/97S4to/7aj0oQGcjlqZS/y.', '123123123', 3, '1638521046668.png', 'phanvannnam2001@gmail.com', b'1'),
(101, '123 ha noi', 'Nguyen duc kien', b'0', NULL, '$2a$10$4kyOJGexZaJHV0rMHRCTYOIT/hnNtAMKi9mReFpKSgQpMMO9vXZHa', '0378713332', 3, '1638433016790.jpg', 'phanvannnam2a001@gmail.com', b'0'),
(102, NULL, NULL, b'0', NULL, '$2a$10$FF5w.hTVsFnJVjEb4AVude59C11odSjPZt7rENwTj4fYW.IgzkgN.', NULL, 3, 'themeforest.png', 'phanvannnam211001@gmail.com', b'1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `order_user`
--
ALTER TABLE `order_user`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id_idx` (`user_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
  ADD KEY `FKtgpfnkn7etmfumakc3iq75e95` (`sale_id`);

--
-- Chỉ mục cho bảng `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `FKn82ha3ccdebhokx3a8fgdqeyy` (`role_id`),
  ADD KEY `idx_user_password` (`password`(20));

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `order_user`
--
ALTER TABLE `order_user`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT cho bảng `receipt`
--
ALTER TABLE `receipt`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_user`
--
ALTER TABLE `order_user`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `FKtgpfnkn7etmfumakc3iq75e95` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`sale_id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FKn82ha3ccdebhokx3a8fgdqeyy` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
