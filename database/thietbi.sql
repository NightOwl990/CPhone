-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 03, 2022 lúc 03:25 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thietbi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(10000) NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `soluongsanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `madonhang`, `masanpham`, `tensanpham`, `giasanpham`, `soluongsanpham`) VALUES
(1, 8, 8, 'Điện thoại OPPO Reno5 5G', 11390000, 1),
(2, 7, 7, 'Điện thoại iPhone 11 64GB', 17490000, 3),
(31, 18, 8, 'Điện thoại OPPO Reno5 5G', 113900000, 10),
(32, 18, 7, 'Điện thoại iPhone 11 64GB', 34980000, 2),
(33, 19, 8, 'Điện thoại OPPO Reno5 5G', 22780000, 2),
(34, 20, 8, 'Điện thoại OPPO Reno5 5G', 11390000, 1),
(35, 21, 3, 'Điện thoại Xiaomi Mi 11 Lite', 68310000, 9),
(36, 22, 1, 'Điện thoại iPhone 12 Pro Max 128GB', 32990000, 1),
(37, 22, 7, 'Điện thoại iPhone 11 64GB', 17490000, 1),
(38, 23, 1, 'Điện thoại iPhone 12 Pro Max 128GB', 65980000, 2),
(39, 24, 1, 'Điện thoại iPhone 12 Pro Max 128GB', 131960000, 4),
(40, 25, 1, 'Điện thoại iPhone 12 Pro Max 128GB', 131960000, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `diachigiaohang` varchar(2000) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `tenkhachhang`, `sodienthoai`, `diachigiaohang`, `email`) VALUES
(1, 'abcxyz', 123456789, 'zyxcba', 'phat@gmail.com'),
(2, 'chinh', 906181931, 'TDP 3 - Thịnh Long - Hải Hậu - Nam Định', 'chinh999ccc@gmail.com'),
(19, 'fjwkckjw', 89159, 'dqkkcj', 'fjqkkfj@gmail.com'),
(20, 'aaa', 999999999, 'aaaaaaaaaa', 'aaaaaa@gmail.com'),
(21, 'cc', 11111111, 'ccccccc', 'ccccccc@gmail.com'),
(22, 'loocccho', 891, 'xjajcnsk', 'akcjwjj@gmail.com'),
(23, 'Chinh', 1234, 'sdgdfh312', 'ffdsg@gmail.com'),
(24, 'CHINHDEPZAIKHOAITO', 123456, 'KHOAITO-NAM DINH', 'khoaito@gmail.com'),
(25, 'CHINHKHOAITO', 123456, 'KHOAITO - NAM DINH', 'khoaito@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(200) NOT NULL,
  `hinhanhloaisanpham` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisanpham`, `hinhanhloaisanpham`) VALUES
(0, 'Điện thoại', 'https://www.freeiconspng.com/uploads/mobile-phone-cell-icon-25.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(15) NOT NULL,
  `hinhanhsanpham` varchar(200) NOT NULL,
  `motasanpham` varchar(10000) NOT NULL,
  `idsanpham` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `giasanpham`, `hinhanhsanpham`, `motasanpham`, `idsanpham`) VALUES
(1, 'Điện thoại iPhone 12 Pro Max 128GB', 32990000, 'https://hc.com.vn/i/ecommerce/media/GS.006136_FEATURE_70912.jpg', 'iPhone 12 Pro Max sở hữu diện mạo mới mới với khung viền được vát thẳng và mạnh mẽ như trên iPad Pro 2020, chấm dứt hơn 6 năm với kiểu thiết kế bo cong trên iPhone 6 được ra mắt lần đầu tiên vào năm 2014. Nếu iPad Pro 2020 sử dụng chất liệu nhôm nguyên khối, thì iPhone 12 Pro Max sẽ là chất liệu mặt kính cùng khung viền thép, làm người dùng gợi nhớ nhiều hơn về bộ đôi iPhone 4 /4s huyền thoại với thiết kế đẹp nhất trong lịch sử thiết kế của Apple.\r\n\r\n', 1),
(2, 'Điện thoại Samsung Galaxy S20 FE (8GB/256GB)', 11990000, 'https://phuongtung.vn/pt/images/detailed/21/samsung-galaxy-20-fe_3__deax-c1.jpg', 'Samsung đã giới thiệu đến người dùng thành viên mới của dòng điện thoại thông minh S20 Series đó chính là Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.', 1),
(3, 'Điện thoại Xiaomi Mi 11 Lite', 7590000, 'https://www.powerplanetonline.com/cdnassets/xiaomi_mi_11_lite_5g_02_negro_ad_l.jpg', 'Xiaomi Mi 11 Lite là phiên bản thu gọn của Xiaomi Mi 11 5G được ra mắt trước đó. Thừa hưởng nhiều ưu điểm của đàn anh, Mi 11 Lite hoàn toàn có thể đáp ứng tốt các tác vụ thông thường một cách dễ dàng và đặc biệt hơn máy có thiết kế vô cùng mỏng nhẹ và thời trang.', 1),
(4, 'Điện thoại Vivo Y20s', 4690000, 'https://cdn.nguyenkimmall.com/images/thumbnails/696/522/detailed/683/10047340-dien-thoai-vivo-y20s-6gb-128gb-den-thuy-tinh-1.jpg', 'Sau Y20 thì Vivo đã tung ra mẫu điện thoại Y20s. Mẫu smartphone được nâng cấp dung lượng bộ nhớ và RAM cao hơn mang đến trải nghiệm mượt mà, lưu trữ thoải mái, đi kèm thiết kế đẹp mắt ấn tượng, dung lượng pin lớn đáp ứng nhu cầu giải trí cả ngày dài.', 1),
(5, 'Điện thoại Realme 8 5G', 7690000, 'https://gagadget.com/media/uploads/Realme-8.png', 'Không dừng lại ở Realme 8 và Realme 8 Pro, Realme tiếp tục gây ấn tượng khi ra mắt Realme 8 5G. Mẫu điện thoại sở hữu cấu hình phần cứng mới và hỗ trợ kết nối 5G hiện đại mang đến cho bạn những trải nghiệm tuyệt vời với tốc độ mạng cực nhanh dù ở bất cứ đâu.', 1),
(6, 'Điện thoại Samsung Galaxy A52 (8GB/128GB)', 8790000, 'https://cdn.nguyenkimmall.com/images/detailed/716/10048676-dien-thoai-samsung-galaxy-a52-4g-128gb-xanh-7.jpg', 'Galaxy A52 (8GB/128GB) mẫu smartphone thuộc dòng Galaxy A của Samsung, với nhiều sự thay đổi lớn về thiết kế lẫn cấu hình, cung cấp những công nghệ đột phá, thiết lập tiêu chuẩn trải nghiệm mới cho người dùng ở phân khúc tầm trung.', 1),
(7, 'Điện thoại iPhone 11 64GB', 17490000, 'https://assets.swappie.com/iPhone-11-red-back.png', 'Tháng 09/2019, Apple đã chính thức trình làng bộ 3 siêu phẩm iPhone 11, trong đó phiên bản iPhone 11 64GB có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như iPhone Xr ra mắt trước đó.', 1),
(8, 'Điện thoại OPPO Reno5 5G', 11390000, 'https://www.refurboffers.com/wp-content/uploads/2021/05/61xMMGkGwFL._SL1500_.jpg', 'MÀN HÌNH\r\nCông nghệ màn hình: AMOLED\r\nĐộ phân giải: Full HD+ (1080 x 2340 Pixels)\r\nMàn hình rộng: 6.4\"\r\nMặt kính cảm ứng: Kính cường lực Corning Gorilla Glass 6\r\n\r\nCAMERA SAU\r\nĐộ phân giải: Chính 48 MP & Phụ 5 MP\r\nQuay phim: - FullHD 1080p@30fps\r\n           - FullHD 1080p@60fps\r\n           - FullHD 1080p@120fps\r\n           - 4K 2160p@30fps\r\nĐèn Flash: Đèn LED kép\r\nTính năng: - AI Camera\r\n           - Xóa phông\r\n           - Tự động lấy nét (AF)\r\n           - Chạm lấy nét\r\n           - Nhận diện khuôn mặt\r\n           - HDR\r\n           - Toàn cảnh (Panorama)\r\n\r\nCAMERA TRƯỚC\r\nĐộ phân giải: 16 MP\r\nTính năng: - Góc rộng (Wide)\r\n           - Làm đẹp\r\n           - Nhận diện khuôn mặt\r\n           - Quay video Full HD\r\n           - Quay video HD\r\n           - Tự động lấy nét (AF)\r\n\r\nHỆ ĐIỀU HÀNH & CPU\r\nHệ điều hành: - Android 9 (Android One)\r\n              - Chip xử lý (CPU): Snapdragon 710 8 nhân\r\n              - Tốc độ CPU: 2 nhân 2.2 GHz & 6 nhân 1.7 GHz\r\n              - Chip đồ họa (GPU): Adreno 616\r\nBộ nhớ & lưu trữ\r\nRAM: 6 GB\r\nBộ nhớ trong: 128 GB\r\nDanh bạ: Không giới hạn\r\n\r\nKẾT NỐI\r\nMạng di động: Hỗ trợ 5G\r\nSIM: 2 Nano SIM\r\nWifi: - Wi-Fi 802.11 a/b/g/n/ac\r\n      - Dual-band (2.4 GHz/5 GHz)\r\n      - Wi-Fi Direct\r\n      - Wi-Fi hotspot\r\nGPS: A-GPSGLONASS\r\nBluetooth: - apt-X\r\n           - A2DP\r\n           - LE\r\nCổng kết nối/sạc: Type-C\r\nJack tai nghe: 3.5 mm\r\n\r\nPIN & SẠC\r\nLoại pin: Li-Ion\r\nDung lượng pin: 3765 mAh\r\nCông nghệ pin: - Tiết kiệm pin\r\n               - Sạc nhanh VOOC\r\n\r\nTIỆN ÍCH\r\nBảo mật nâng cao: - Mở khoá khuôn mặt\r\n                  - Mở khoá vân tay dưới màn hình\r\nTính năng đặc biệt: Chặn cuộc gọiChặn tin nhắn\r\nGhi âm: Có (microphone chuyên dụng chống ồn)\r\nXem phim: - WMV\r\n          - H.263\r\n          - H.264(MPEG4-AVC)\r\nNghe nhạc: - MP3\r\n           - WAV\r\n           - WMA\r\n\r\nTHÔNG TIN CHUNG\r\nThiết kế: Nguyên khối\r\nChất liệu: Khung kim loại & Mặt lưng kính\r\nKích thước, khối lượng: Nặng 185 g', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
