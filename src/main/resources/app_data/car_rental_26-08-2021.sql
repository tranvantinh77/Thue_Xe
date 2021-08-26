/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : car_rental

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 26/08/2021 21:56:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active_fag` int(11) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1, 0, 'admin', '2021-08-13 22:30:36', 'admin', '2021-08-13 22:59:57', '1321321', 'okela', NULL, 'djada', 0);
INSERT INTO `banner` VALUES (2, 0, 'admin', '2021-08-13 23:19:28', 'admin', '2021-08-13 23:19:44', 'w', 'w', NULL, 'wrrrr', 0);
INSERT INTO `banner` VALUES (3, 0, 'admin', '2021-08-16 19:13:21', 'admin', '2021-08-16 19:18:09', '147', 'Sài Gòn mưa', 'z2584825496252_b2309901727065cf02c626d877b82a2a.jpg', 'Sài Gòn', 1);

-- ----------------------------
-- Table structure for car_company
-- ----------------------------
DROP TABLE IF EXISTS `car_company`;
CREATE TABLE `car_company`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active_fag` int(11) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car_company
-- ----------------------------
INSERT INTO `car_company` VALUES (1, 0, 'admin', '2021-08-10 19:56:09', 'admin', '2021-08-10 19:56:09', 'BMW', '', 'BMW.jpg', 'BMW', 0);
INSERT INTO `car_company` VALUES (2, 0, 'admin', '2021-08-10 20:16:23', 'admin', '2021-08-16 15:33:22', 'CHEVROLET', '', 'Chevrolet.jpg', 'Chevrolet', 0);
INSERT INTO `car_company` VALUES (3, 0, 'admin', '2021-08-10 20:18:23', 'admin', '2021-08-10 20:43:36', 'DAEWOO', '', 'Daewoo.jpg', 'Daewoo', 0);
INSERT INTO `car_company` VALUES (4, 0, 'admin', '2021-08-10 20:21:23', 'admin', '2021-08-10 20:40:43', 'FORD', '', 'Ford.jpg', 'Ford', 0);
INSERT INTO `car_company` VALUES (5, 0, 'admin', '2021-08-10 20:33:10', 'admin', '2021-08-10 20:33:10', 'HONDA', '', 'Honda.jpg', 'Honda', 0);
INSERT INTO `car_company` VALUES (6, 0, 'admin', '2021-08-13 10:07:54', 'admin', '2021-08-13 10:07:54', 'HYUNDAI', '', 'Hyundai.jpg', 'Hyundai', 0);
INSERT INTO `car_company` VALUES (7, 0, 'admin', '2021-08-13 21:00:51', 'admin', '2021-08-13 21:00:51', 'ISUZU', '', 'Isuzu.jpg', 'Isuzu', 0);
INSERT INTO `car_company` VALUES (8, 0, 'admin', '2021-08-16 15:16:16', 'admin', '2021-08-16 15:54:20', 'KIA', '', 'KIA.jpg', 'KIA', 0);
INSERT INTO `car_company` VALUES (9, 0, 'admin', '2021-08-16 15:55:18', 'admin', '2021-08-16 15:56:55', 'MAZDA', '', 'Mazda.jpg', 'Mazda', 0);
INSERT INTO `car_company` VALUES (10, 0, 'admin', '2021-08-20 15:04:41', 'admin', '2021-08-20 15:04:50', 'MERCEDES', NULL, 'Mercedes.jpg', 'Mercedes-Benz', 0);
INSERT INTO `car_company` VALUES (11, 0, 'admin', '2021-08-20 15:05:29', 'admin', '2021-08-20 15:05:35', 'MITSUBISHI', NULL, 'Mitsubishi.jpg', 'Mitsubishi', 0);
INSERT INTO `car_company` VALUES (12, 0, 'admin', '2021-08-20 15:06:18', 'admin', '2021-08-20 15:06:24', 'NISSAN', NULL, 'Nissan.jpg', 'Nissan', 0);
INSERT INTO `car_company` VALUES (13, 0, 'admin', '2021-08-20 15:06:50', 'admin', '2021-08-20 15:06:54', 'SUZUKI', NULL, 'Suzuki.jpg', 'Suzuki', 0);
INSERT INTO `car_company` VALUES (14, 0, 'admin', '2021-08-20 15:07:20', 'admin', '2021-08-20 15:07:26', 'TOYOTA', NULL, 'Toyota.jpg', 'Toyota', 0);
INSERT INTO `car_company` VALUES (15, 0, 'admin', '2021-08-20 15:08:37', 'admin', '2021-08-20 15:08:42', 'VINFAST', NULL, 'Vinfast.jpg', 'Vinfast', 0);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active_fag` int(11) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 0, 'admin', '2021-08-14 10:53:39', 'admin', '2021-08-14 16:03:36', '4CN', '', '4 chỗ', 0);
INSERT INTO `category` VALUES (2, 0, 'admin', '2021-08-14 10:57:32', 'admin', '2021-08-14 16:39:38', '4CM', '', '4 chỗ mini', 0);
INSERT INTO `category` VALUES (3, 0, 'admin', '2021-08-20 14:51:52', 'admin', '2021-08-20 14:52:04', '4CS', NULL, '4 chỗ Sedan', 0);
INSERT INTO `category` VALUES (4, 0, 'admin', '2021-08-20 14:53:05', 'admin', '2021-08-20 14:53:11', '4CH', NULL, '4 chỗ Hatchback', 0);
INSERT INTO `category` VALUES (5, 0, 'admin', '2021-08-20 14:53:45', 'admin', '2021-08-20 14:53:51', '5CN', NULL, '5 chỗ', 0);
INSERT INTO `category` VALUES (6, 0, 'admin', '2021-08-20 14:54:34', 'admin', '2021-08-20 14:54:41', '5CC', NULL, '5 chỗ gầm cao', 0);
INSERT INTO `category` VALUES (7, 0, 'admin', '2021-08-20 14:55:23', 'admin', '2021-08-20 14:55:29', '6CN', NULL, '6 chỗ', 0);
INSERT INTO `category` VALUES (8, 0, 'admin', '2021-08-20 14:56:02', 'admin', '2021-08-20 14:56:09', '7CN', NULL, '7 chỗ', 0);
INSERT INTO `category` VALUES (9, 0, 'admin', '2021-08-20 14:56:44', 'admin', '2021-08-20 14:56:55', '7CC', NULL, '7 chỗ gầm cao', 0);
INSERT INTO `category` VALUES (10, 0, 'admin', '2021-08-20 14:57:22', 'admin', '2021-08-20 14:57:27', '7CT', NULL, '7 chỗ gầm thấp', 0);
INSERT INTO `category` VALUES (11, 0, 'admin', '2021-08-20 14:58:05', 'admin', '2021-08-20 14:58:10', '9CN', NULL, '9 chỗ', 0);
INSERT INTO `category` VALUES (12, 0, 'admin', '2021-08-22 09:38:15', 'admin', '2021-08-22 09:38:22', 'BTN', NULL, 'Bán tải', 0);

-- ----------------------------
-- Table structure for checkout
-- ----------------------------
DROP TABLE IF EXISTS `checkout`;
CREATE TABLE `checkout`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active_fag` int(11) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `checkout_date` date NULL DEFAULT NULL,
  `due_date` date NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `total_money` double NULL DEFAULT NULL,
  `oto_id_id` bigint(20) NULL DEFAULT NULL,
  `user_id_id` bigint(20) NULL DEFAULT NULL,
  `penalty` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKnlcf4hxao09hq27dkevulixub`(`oto_id_id`) USING BTREE,
  INDEX `FK9329kd8wd1lxvf0j04f4ke9wf`(`user_id_id`) USING BTREE,
  CONSTRAINT `FK9329kd8wd1lxvf0j04f4ke9wf` FOREIGN KEY (`user_id_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKnlcf4hxao09hq27dkevulixub` FOREIGN KEY (`oto_id_id`) REFERENCES `oto` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for circulation
-- ----------------------------
DROP TABLE IF EXISTS `circulation`;
CREATE TABLE `circulation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active_fag` int(11) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `checkout_date` date NULL DEFAULT NULL,
  `due_date` date NULL DEFAULT NULL,
  `total_money` double NULL DEFAULT NULL,
  `oto_id_id` bigint(20) NULL DEFAULT NULL,
  `user_id_id` bigint(20) NULL DEFAULT NULL,
  `action` int(11) NULL DEFAULT NULL,
  `penalty` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKnftqqc0v5qrhm0c3iwrwprogr`(`oto_id_id`) USING BTREE,
  INDEX `FKkrev6sfnpbj7v91kvbapkjlat`(`user_id_id`) USING BTREE,
  CONSTRAINT `FKkrev6sfnpbj7v91kvbapkjlat` FOREIGN KEY (`user_id_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKnftqqc0v5qrhm0c3iwrwprogr` FOREIGN KEY (`oto_id_id`) REFERENCES `oto` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for discount
-- ----------------------------
DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active_fag` int(11) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `price_discount` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discount
-- ----------------------------
INSERT INTO `discount` VALUES (1, 0, 'admin', '2021-07-29 11:04:46', 'admin', '2021-08-06 21:09:52', '12900', 'Khánh', 10, 0);
INSERT INTO `discount` VALUES (2, 0, 'admin', '2021-07-31 15:26:19', 'admin', '2021-07-31 15:26:37', 'g', 'g', 58, 1);
INSERT INTO `discount` VALUES (3, 0, 'admin', '2021-08-06 21:09:23', 'admin', '2021-08-06 21:09:23', '561720', 'Toyota', 15, 1);

-- ----------------------------
-- Table structure for oto
-- ----------------------------
DROP TABLE IF EXISTS `oto`;
CREATE TABLE `oto`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active_fag` int(11) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `license_plates` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `car_company_id_id` bigint(20) NULL DEFAULT NULL,
  `category_id_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKfd4330pkiw5kt9kjxd4wp62u2`(`car_company_id_id`) USING BTREE,
  INDEX `FKa5efc81fe69uvv8nvgd6q29kt`(`category_id_id`) USING BTREE,
  CONSTRAINT `FKa5efc81fe69uvv8nvgd6q29kt` FOREIGN KEY (`category_id_id`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKfd4330pkiw5kt9kjxd4wp62u2` FOREIGN KEY (`car_company_id_id`) REFERENCES `car_company` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 151 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oto
-- ----------------------------
INSERT INTO `oto` VALUES (1, 0, 'admin', '2021-08-16 14:49:25', 'admin', '2021-08-23 09:45:43', 'CAR-RENTAL683104566', '\"Dù đã cũ BMW nhưng Series 3 đời E46 vẫn đủ cuốn hút để nhắc nhở chúng ta định nghĩa đích thực của cụm từ “The Ultimate Driving Machine”\r\nTừng đường nét đều là một phần nhỏ góp phần tạo nên một thiết kế tổng thể gọn gàng và thể thao. Bao quanh thân xe là một dải nhựa đen – thiết kế tương đồng với đàn anh Series 5 E39, tạo vẻ đứng đắn, gọn gàng cho chiếc 325i. Tôi gọi đường nẹp đen này là một chiếc thắt lưng da cao cấp của một quý ông gọn gàng, chỉn chu. Phần đầu xe cũng rất gọn gàng với mặt ca lăng quả thận màu đen, 2 cụm đèn pha xenon với các dải LED tròn “Angel Eyes” đặc trưng. Sau 15 năm, đây vẫn là 1 bộ mặt có thể thu hút sự chú ý trên đường phố.\"\r\n', 'bmw_325i2002_4c_1.jpg', '51F-17043', 'BMW 325I 2002', 900000, 0, 1, 3);
INSERT INTO `oto` VALUES (2, 0, 'admin', '2021-08-20 22:36:23', 'admin', '2021-08-23 09:47:17', 'CAR-RENTAL911656350', '\"BMW 325I SẢN XUẤT TẠI ĐỨC NHẬP KHẨU TỪ THỊ TRƯỜNG MỸ.\r\n- CẢM GIÁC LÁI CỰC SƯỚNG, ĐẦM CHẮC ĐẶC TRƯNG CỦA DÒNG XE BMW.\r\n- ĐỘNG CƠ MẠNH MẼ, THỂ THAO, TĂNG TỐC VƯỢT TRỘI.\r\n- XE SỬ DỤNG GIA ĐÌNH NỘI THẤT DA SẠCH SẼ NHIỀU OPTION.\r\n- XE TRANG BỊ ĐỘNG CƠ N52 3.06 MÁY HUYỀN THOẠI  MẠNH MẼ CỦA BMW.\r\n- XE GIA ĐÌNH BẢO DƯỠNG ĐỊNH KỲ.\r\n- OPTION THEO XE\r\n+ GA TỰ ĐỘNG\r\n+ CỬA SỔ TRỜI\r\n+ CAMERA LÙI\r\nXE RẤT ĐÁNG ĐỂ MỌI NGƯỜI THỬ TRẢI NGHIỆM.\"\r\n', 'bmw_325i2010_4c_1.jpg', '29A-00599', 'BMW 325i 2010', 750000, 0, 1, 3);
INSERT INTO `oto` VALUES (3, 0, 'admin', '2021-08-20 16:55:06', 'admin', '2021-08-23 09:48:01', 'CAR-RENTAL533581866', 'BMW 320i số tự động nhà sử dụng. Đầy đồ chơi như bơm hơi xe tự động, keo vá lốp, bình xông hơi khử mùi. Xe vệ sinh thường xuyên sạch sẽ\r\n', 'bmw_320i2016_4c_1.jpg', '51F-89456', 'BMW 320I 2016', 1800000, 0, 1, 3);
INSERT INTO `oto` VALUES (4, 0, 'admin', '2021-08-20 17:04:48', 'admin', '2021-08-23 09:55:12', 'CAR-RENTAL477687696', 'BMW 320i 2013\r\n', 'bmw_320i2013_4c_3.jpg', '51A-66326', 'BMW-320I 2013', 1200000, 0, 1, 3);
INSERT INTO `oto` VALUES (5, 0, 'admin', '2021-08-21 20:05:37', 'admin', '2021-08-23 09:57:08', 'CAR-RENTAL390631736', 'CHEVROLET AVEO 2018 mới va đẹp. ít hao xăng. bảo dưỡng định kì. Chủ xe dễ tính nếu khách hàng hợp tác dễ thương. hân hạnh được phục vụ\r\n', 'chevrolet_aveo2018_4c_1.jpg', '67A-09029', 'Chevrolet Aveo 2018', 550000, 0, 2, 3);
INSERT INTO `oto` VALUES (6, 0, 'admin', '2021-08-20 17:18:13', 'admin', '2021-08-23 09:57:51', 'CAR-RENTAL136575333', 'Xe Aveo Màu trắng 2017 số sàn. Xe bảo dưỡng hãng định kỳ.\r\n', 'chevrolet_aveo2017_4c_1.jpg', '67A-06998', 'Chevrolet Aveo 2017', 600000, 0, 2, 3);
INSERT INTO `oto` VALUES (7, 0, 'admin', '2021-08-20 21:49:58', 'admin', '2021-08-23 09:58:47', 'CAR-RENTAL577218237', 'Xe Captiva màu đen 2017 số tự động, xe gia đình ít sử dụng, được trang bị đầy đủ option\r\n', 'chevrolet_captiva2009_7c_1.jpg', '51F-37968', 'Chevrolet Captiva 2009', 750000, 0, 2, 9);
INSERT INTO `oto` VALUES (8, 0, 'admin', '2021-08-21 20:16:12', 'admin', '2021-08-23 10:00:07', 'CAR-RENTAL148934406', '\"Xe Captiva kiểu dáng thể thao, nam tính, mạnh mẽ, rộng rãi 7 chỗ, nhiều trang bị an toàn hiện đại như: số tự động, ga tự động, cảm biến áp suất lốp, ABS, hỗ trợ đổ đèo, camera lùi, cảm biến trước sau, cảnh báo điểm mù, camera hành trình, bản đồ vietmap, chế độ lái Eco giúp tiết kiệm nhiên liệu, cửa sổ trời, gạt mưa & đèn pha tự động... Đặc biệt xe có hệ thống điều hoà lọc ion khử khuẩn giúp không khí trong xe sạch và dễ chịu hơn.\r\nXe gia đình chăm sóc & bảo dưỡng kỹ lưỡng, đầy đủ, sạch sẽ. \r\nPhù hợp đi công tác, du lịch khắp nơi cùng gia đình 7 người. Gầm cao, máy khoẻ sẽ mang lại những cảm giác thích thú & hài lòng khi cầm lái Captiva.\"\r\n', 'chevrolet_captiva2016_7c_1.jpg', '51F-70954', 'Chevrolet Captiva 2016', 890000, 0, 2, 9);
INSERT INTO `oto` VALUES (9, 0, 'admin', '2021-08-21 20:17:44', 'admin', '2021-08-23 10:01:09', 'CAR-RENTAL170133423', 'Xe Chevolet bán tải 2 cầu khoẻ mạnh.\r\nChạy máy dầu tiết kiệm \r\n', 'chevrolet_colorado2020_4c_3.jpg', '51D-34171', 'Chevrolet Colorado LTZ 2020 ', 1050000, 0, 2, 12);
INSERT INTO `oto` VALUES (10, 0, 'admin', '2021-08-21 20:18:58', 'admin', '2021-08-23 10:01:51', 'CAR-RENTAL200161962', '\"Xe bán tải Colorado, đăng ký tháng 3 năm 2019. Xe mới ít đi, đầy đủ đăng ký, bảo hiểm vật chất... \r\nGhế bọc da, camera lùi đầy đủ.\r\nNội thất và khoang cabin rộng rãi, sạch sẽ. \r\nXe chạy mượt, cao ráo, an toàn, chở đồ cá nhân đi phượt rất good. \r\nXe máy dầu nên rất tiết kiệm nhiên liệu.\"\r\n', 'chevrolet_colorado2019_4c_3.jpg', '51D-50249', 'Chevrolet Colorado LT 2019', 1100000, 0, 2, 12);
INSERT INTO `oto` VALUES (11, 0, 'admin', '2021-08-22 09:19:16', 'admin', '2021-08-23 10:02:51', 'CAR-RENTAL353006155', '\"Xe Cruze số sàn đăng ký tháng 8/2018\r\nXe gia đình ít chạy còn mới, nội thất nguyên bản sạch sẽ, bảo dưỡng thường xuyên.\r\nXe rộng rãi nhất dòng Sedan hạng C, an toàn , tiện nghi\r\nXe đã lên rất nhiều trang bị : camera lùi, camera hành trình, cảm biến áp suất lốp, tay lái carbon, cảm biến va chạm, nâng cấp hệ thống 6 loa + sub nghe cực đã, màn hình cảm ứng Zestech, ....\r\nMới ra hãng Ford kiểm tra 167 hạng mục cực an toàn\"\r\n', 'chevrolet_cruze2018_4c_1.jpg', '60A-93287', 'Chevrolet Cruze 2018', 600000, 0, 2, 3);
INSERT INTO `oto` VALUES (12, 0, 'admin', '2021-08-22 09:21:03', 'admin', '2021-08-23 10:03:31', 'CAR-RENTAL793293216', 'CHEVROLET CRUZE 2016\r\n', 'chevrolet_cruze2016_4c_3.jpg', '51H-41920', 'Chevrolet Cruze 2016', 700000, 0, 2, 3);
INSERT INTO `oto` VALUES (13, 0, 'admin', '2021-08-22 09:21:59', 'admin', '2021-08-23 10:07:01', 'CAR-CAR-RENTAL108716907', 'Chevrolet Orlando 7 chõ số tự động đăng ký 2018 xe gia đình đời mới, sạch sẽ, rộng rãi, nội thất da. Lốp xe và bình acquy đã thay mới cho quý khách thêm yên tâm.\r\nXe trang bị camera lùi, bản đồ Vietmap, camera hành trình, cảm biến áp suất lốp\r\n', 'chevrolet_orlando2018_7c_4.jpg', '51F-88410', 'Chevrolet Orlando 2018', 900000, 0, 2, 10);
INSERT INTO `oto` VALUES (14, 0, 'admin', '2021-08-22 09:23:11', 'admin', '2021-08-23 10:08:18', 'CAR-RENTAL838686894', 'CHEVROLET ORLANDO 2015\r\n', 'chevrolet_orlando2015_7c_2.jpg', '14A-18295', 'Chevrolet Orlando 2015', 800000, 0, 2, 10);
INSERT INTO `oto` VALUES (15, 0, 'admin', '2021-08-22 09:24:16', 'admin', '2021-08-23 10:09:17', 'CAR-RENTAL721949209', 'Thuê 2 ngày sẽ được Chủ xe giảm trực tiếp thêm 50K, 3 ngày giảm 100k\r\nXe gia đình sử dụng, còn như mới, xe thương hiệu Mỹ, chạy rất tốt và đầm \r\nBảo hiểm 2 chiều theo xe. Bảo hiểm bắt buộc\r\nXe mới chạy rất mạnh, xe 1.2L, mạnh hơn các dòng 1.0L\r\nChủ xe nhiệt tình thân thiện vui vẻ.\r\nGiá cho thuê tốt nhất phân khúc.\r\n', 'chevrolet_spark2018_4c_1.jpg', '51G-09319', 'Chevrolet Spark 2018', 500000, 0, 2, 2);
INSERT INTO `oto` VALUES (16, 0, 'admin', '2021-08-22 09:25:25', 'admin', '2021-08-23 10:10:35', 'CAR-RENTAL310928981', 'Xe êm ru, nội thất mới, không giới hạn quãng đường, không phụ thu tiền, đặc biệt có thể cho người ngoài tỉnh thuê.\r\n', 'chevrolet_spark2015_4c_1.jpg', '51F-35901', 'Chevrolet Spark 2015', 450000, 0, 2, 2);
INSERT INTO `oto` VALUES (17, 0, 'admin', '2021-08-22 09:26:11', 'admin', '2021-08-23 10:12:37', 'CAR-RENTAL343955620', 'Xe 7 chỗ gia đình, mới, đẹp. Đăng ký 06/2019. Xe êm ko ồn ù do đã gắn đối trọng. Bản full Options :\r\n- 2 cầu\r\n- Cảnh báo điểm mù\r\n- Cảnh báo va chạm\r\n- Cảnh báo có vật thể cắt ngang khi lùi xe\r\n- Hỗ trợ lên dốc/ đổ dốc\r\n- 2 dàn lạnh\r\n- Cân bằng điện tử\r\n- Hệ thống chống lật\r\n- Hệ thống MyLink kết nối được với điện thoại, xem youtube\r\n', 'chevrolet_traiblazer2019_7c_2.jpg', '51H-07521', 'Chevrolet Traiblazer 2019', 1000000, 0, 2, 9);
INSERT INTO `oto` VALUES (18, 0, 'admin', '2021-08-22 09:27:17', 'admin', '2021-08-23 10:14:53', 'CAR-RENTAL201253160', 'Trailblazer nhà sử dụng. Sạch sẽ , máy mạnh. Đi đường dài thoải mái. Chủ xe nhiệt tình. vui vẻ, thân thiện.\r\n', 'chevrolet_traiblazer2018_7c_3.jpg', '51G-82499', 'Chevrolet Traiblazer 2018', 900000, 0, 2, 9);
INSERT INTO `oto` VALUES (19, 0, 'admin', '2021-08-22 09:28:13', 'admin', '2021-08-23 10:15:38', 'CAR-RENTAL731089647', 'Xe gia đình, sạch sẽ, chủ xe nhiệt tình. Hoạt động êm ái. Số tự động dễ vận hành\r\n', 'daewoo_lacetti2011_4c_2.jpg', '51A-90846', 'Daewoo Lacetti 2011', 550000, 0, 3, 3);
INSERT INTO `oto` VALUES (20, 0, 'admin', '2021-08-22 09:31:00', 'admin', '2021-08-23 10:16:37', 'CAR-RENTAL579812774', 'Xe Lacetti 2010 còn mới, xe nhà đi ít, nội thất sạch sẽ, máy chạy êm, tiết kiệm nhiên liệu. Khoang xe rộng rãi cho 5 người, cốp xe rộng 500 lit.\r\n', 'daewoo_lacetti2010_4c_1.jpg', '61A-88296', 'Daewoo Lacetti 2010', 500000, 0, 3, 3);
INSERT INTO `oto` VALUES (21, 0, 'admin', '2021-08-22 09:32:06', 'admin', '2021-08-23 10:17:37', 'CAR-RENTAL506251542', 'FORD ECOSPORT 2019 mới và đẹp\r\n', 'ford_ecosport2019_4c_1.jpg', '51H-53909', 'Ford Ecosport 2019', 750000, 0, 4, 1);
INSERT INTO `oto` VALUES (22, 0, 'admin', '2021-08-22 09:33:25', 'admin', '2021-08-23 10:18:31', 'CAR-RENTAL796298051', 'Xe Ford Ecosport số tự động đăng ký 6/2018\r\nXe gia đình xử dụng, dọn vệ sinh khử trùng xe thường xuyên tại đại lý.\r\nXe rộng rãi, an toàn, tiện nghi, gầm cao thuộc dòng xe B-CUV\r\nXe trang bị đầy đủ camera hành trình, cam de, …\r\n', 'ford_ecosport2018_4c_1.jpg', '51G-19184', 'Ford Ecosport 2018', 850000, 0, 4, 6);
INSERT INTO `oto` VALUES (23, 0, 'admin', '2021-08-22 09:34:45', 'admin', '2021-08-23 10:23:52', 'CAR-RENTAL108119877', 'FORD EVEREST TITANIUM 2021\r\n', 'ford_everest2020_7c_2.jpg', '51H-48861', 'Ford Everest Titanium 2020 ', 1200000, 0, 4, 9);
INSERT INTO `oto` VALUES (24, 0, 'admin', '2021-08-22 09:35:53', 'admin', '2021-08-23 10:24:49', 'CAR-RENTAL989678141', 'Ford Everest Sport số tự động đăng ký tháng 5/2021\r\nXe gia đình mới, nội thất có sach sẽ, có dầu thơm dễ chịu, xe bảo dưỡng đúng số.\r\nKhông gian rộng rãi, ngồi đủ7 người đi xa không bị mệt, gầm cao, đã dán phim cách nhiệt bao mát.\r\nXe trang bị cảm biến lùi, cam lùi, camera hành trình có Việt map cảnh báo tốc độ, bluetooth kết nối dàn loa 8 loa nghe nhạc bass treble đầy đủ\"\r\n', 'ford_everest2021_7c_2.jpg', '51H-91019', 'Ford Everest 2021', 1200000, 0, 4, 9);
INSERT INTO `oto` VALUES (25, 0, 'admin', '2021-08-22 09:36:54', 'admin', '2021-08-23 10:25:40', 'CAR-RENTAL386887159', 'Ford Fiesta Hachback 1.6 AT đăng ký cuối 2013,5 chỗ màu đỏ.\r\nSố tự động, ít hao xăng. Máy lạnh hoạt động tốt.\r\nCốp xe rất rộng, phù hợp cho gia đình có nhiều hành lý.\r\nXe nhỏ gọn, dễ lái trong khu vực nhỏ, đông dân cư.\r\nNhiên liệu 6l/100km đi bình thường, 10l/100km khi đi trong nội thành TPHCM.\r\nXe nhà sử dụng, ít dùng nên sạch sẽ,  an toàn. không va đập.\r\nXe mới chạy hơn 70.000 km\"\r\n', 'ford_fiesta2013_5c_1.jpg', '51A-62145', 'Ford Fiesta 2013', 700000, 0, 4, 5);
INSERT INTO `oto` VALUES (26, 0, 'admin', '2021-08-22 09:39:13', 'admin', '2021-08-23 10:26:22', 'CAR-RENTAL148257682', 'Xe gia đình, đẹp, mức tiêu thụ nhiên liệu 8 lít/ 100 km!\r\n', 'ford_fiesta2018_5c_2.jpg', '51G-80738', 'Ford Fiesta 2018', 650000, 0, 4, 5);
INSERT INTO `oto` VALUES (27, 0, 'admin', '2021-08-22 09:40:05', 'admin', '2021-08-23 10:27:30', 'CAR-RENTAL677191423', 'Xe gia đình mua mới hãng đăng ký 12/2018. Hạng C ngồi  rộng rãi, Xe Ford Focus hatback thể thao số tự động. 7L/100km rất tiết kiệm xăng. Tăng tốc 6-7 giây đạt tốc độ \r\nTrên xe phát Wifi- internet là điều tất yếu cho cuộc hành trình cùng bạn kết nối thông tin công việc và giải trí mọi lúc mọi nơi.100km/1giờ. Hãy lái và cảm nhận sự khác biệt.\r\nBản đồ VIETMAP cảnh báo tốc độ khi di chuyển theo tuyến đường di chuyển, Thông báo số KM chạy giới hạn, hạn chế bị CA bắn tốc độ..\r\n', 'ford_focus2018_4c_2.jpg', '51G-09938', 'Ford Focus 2018', 800000, 0, 4, 3);
INSERT INTO `oto` VALUES (28, 0, 'admin', '2021-08-22 09:41:02', 'admin', '2021-08-23 10:28:08', 'CAR-RENTAL959772475', 'FORD FOCUS 2019\r\nXe mới năm 2019\r\nXe gia đình, mới, mạnh, êm mượt, an toàn, cách âm rất tốt.\r\n', 'ford_focus2019_4c_1.jpg', '51G-95154', 'Ford Focus 2019', 900000, 0, 4, 3);
INSERT INTO `oto` VALUES (29, 0, 'admin', '2021-08-22 09:42:01', 'admin', '2021-08-23 10:29:11', 'CAR-RENTAL429032778', 'Xe Ford Ranger XLS máy dầu, xe nhà mọi thứ được bảo dưỡng kiểm tra thường xuyên. Chi phí nhiên liệu rẻ: khoảng 1200 đồng/1 km. Xe vận hành trơn trú, cảm giác lái tốt. Xe dành cho việc đi xa, công tác tỉnh.\r\n', 'ford_ranger2016_5c_4.jpg', '61C-24124', 'Ford Ranger XLS 2016', 750000, 0, 4, 12);
INSERT INTO `oto` VALUES (30, 0, 'admin', '2021-08-22 09:43:11', 'admin', '2021-08-23 10:30:17', 'CAR-RENTAL817909193', 'Ford Ranger Wildtrack bản 2 cầu 2021 mới \r\nXe gia đình đi , sạch sẽ . Đầy đủ tiện nghi , có rửa xe miễn phí cho khách hàng\r\nXe gia đình , bảo dưỡng định kỳ .\r\nĐã nâng cấp âm thanh, kết nối Apple Carplay, Android Auto, xem videos qua usb\r\nMáy dầu , tiết kiệm nhiên liệu\r\n', 'ford_ranger2021_5c_3.jpg', '51D-67455', 'Ford Ranger Wildtrak 2021', 1050000, 0, 4, 12);
INSERT INTO `oto` VALUES (31, 0, 'admin', '2021-08-22 09:44:44', 'admin', '2021-08-23 10:37:28', 'CAR-RENTAL905686958', 'HONDA BRIO RS OP1 2/2021\r\nXe đẹp, tiết kiệm êm ái, dáng thể thao\r\nCamera de, cam cặp lề, cam hành trình cho bạn chuyến đi an toàn\r\n', 'honda_brio2021_5c_1.jpg', '60A-92356', 'Honda Brio RS 2021', 650000, 0, 5, 5);
INSERT INTO `oto` VALUES (32, 0, 'admin', '2021-08-22 09:47:29', 'admin', '2021-08-23 10:36:50', 'CAR-RENTAL306419215', 'Honda BRIO G AT- nhập khẩu Indonesia. Xe số tự động - cảm biến lốp \r\n- Cam hành trình\r\n- Led sàn- màn hình giải trí Android \r\n- Camera lùi\r\n- Ghế da. Tiết kiệm xăng, êm ái trên mọi nẻo đường \r\n', 'honda_brio2019_5c_4.jpg', '51H-22894', 'Honda Brio G 2019', 500000, 0, 5, 5);
INSERT INTO `oto` VALUES (33, 0, 'admin', '2021-08-22 09:48:25', 'admin', '2021-08-23 10:40:10', 'CAR-RENTAL863974908', 'XE MỚI BẢN TOP CỦA HONDA CITY\r\nMÀU XANH ĐẬM\r\nCÓ THỂ GIAO XE TẠI BÃI XE HOẶC ĐẾN TẬN NHÀ CỦA QUÝ KHÁCH HÀNG\r\n', 'honda_city2019_4c_1.jpg', '51H-03643', 'Honda City 2019', 800000, 0, 5, 3);
INSERT INTO `oto` VALUES (34, 0, 'admin', '2021-08-22 09:49:31', 'admin', '2021-08-23 10:41:34', 'CAR-RENTAL864906754', 'Honda City số tự động đăng ký tháng 5/2018. \r\nXe gia đình sử dụng, mới đẹp, nội thất nguyên bản, sạch sẽ, bảo dưỡng thường xuyên, rửa xe miễn phí cho khách.\r\n Xe rộng rãi, an toàn, tiện nghi, phù hợp cho bạn đi công tác, tiếp đón khách tại sân bay, hoặc gia đình đi du lịch. \r\nXe trang bị hệ thống cảm biến lùi, camera lùi, gạt mưa tự động, đèn pha tự động, camera hành trình, hệ thống giải trí AV cùng nhiều tiện nghi khác.\r\n', 'honda_city2018_5c_1.jpg', '51G-59903', 'Honda City 2018', 700000, 0, 5, 5);
INSERT INTO `oto` VALUES (35, 0, 'admin', '2021-08-22 09:50:26', 'admin', '2021-08-23 10:42:59', 'CAR-RENTAL516721283', 'Civic bản rs 2018 đã thêm nhiều option mới rất đẹp\r\n', 'honda_civic2018_4c_1.jpg', '51G-62881', 'Honda Civic 2018', 1150000, 0, 5, 3);
INSERT INTO `oto` VALUES (36, 0, 'admin', '2021-08-22 09:51:20', 'admin', '2021-08-23 10:44:42', 'CAR-RENTAL951406522', 'Civic 2020 mang phong cách fastback, hiện đại theo xu hướng thể thao. được nhập khẩu nguyên chiếc từ Thái Lan. Động cơ 1.8 hút khí tự nhiên phun xăng điện tử, Civic sẽ sở hữu tốc độ tối đa là 200 (Km/h), với thời gian tăng tốc từ 0-100 (Km/h) chỉ trong vòng 10 (giây).\r\nCác ghế trên xe đều được bọc da cao cấp, công nghệ hỗ trợ như ga tự động Cruise Control, lẫy chuyển số thể thao…\r\nChính giữa khoang lái là bảng điều khiển trung tâm, Civic sở hữu một màn hình thông tin giải trí đa phương tiện, điều chỉnh cảm ứng, tích hợp công nghệ IPS đem đến hình ảnh rõ ràng và chính xác.\r\nMàn hình này có thể kết nối điện thoại thông minh, cho phép nghe nhạc, gọi điện, nhắn tin, sử dụng bản đồ hay ra lệnh bằng giọng nói, kết nối wifi và lướt web, nghe đài AM/FM. \r\nWifi miễn phí tốc độ cao.\"\r\n', 'honda_civic2020_5c_1.jpg', '51H-47416', 'Honda Civic 2020', 1100000, 0, 5, 5);
INSERT INTO `oto` VALUES (37, 0, 'admin', '2021-08-22 09:52:25', 'admin', '2021-08-23 10:45:45', 'CAR-RENTAL339830933', 'Xe mới - Tiện nghi đầy đủ- Hiện đại - Cá tính\r\n', 'honda_crv2020_4c_3.jpg', '51H-69689', 'Honda CRV-L 2020', 1400000, 0, 5, 1);
INSERT INTO `oto` VALUES (38, 0, 'admin', '2021-08-22 09:53:30', 'admin', '2021-08-23 10:46:43', 'CAR-RENTAL756026736', 'HONDA CRV-L 2018\r\n', 'honda_crv2018_7c_3.jpg', '51G-85308', 'Honda CRV-L 2018', 1200000, 0, 5, 9);
INSERT INTO `oto` VALUES (39, 0, 'admin', '2021-08-22 09:54:26', 'admin', '2021-08-23 10:48:18', 'CAR-RENTAL827136440', 'Mùa hè luôn là thời điểm lý tưởng để mọi người có thể tận hưởng những chuyến du lịch hấp dẫn và đáng nhớ cùng gia đình hoặc bạn bè.\r\nVới dịch vụ thuê xe có tài và tự lái tiện lợi, tiết kiệm. Chúng tôi luôn sẵn sàng đồng hành cùng bạn trong những chuyến đi đầy kỉ niệm và đáng nhớ.\r\nĐặc biệt, để chào đón mùa Hè năm nay, chúng tôi xin giảm giá trực tiếp đến Quý khách. Khi thuê xe tự lái hoặc có tài xế,Quý khách sẽ được giảm ngay 50k/ngày cho mọi giao dịch thuê xe.\"\r\n', 'honda_jazz2019_5c_2.jpg', '51G-95517', 'Honda Jazz 2019', 800000, 0, 5, 5);
INSERT INTO `oto` VALUES (40, 0, 'admin', '2021-08-22 09:55:12', 'admin', '2021-08-23 10:48:55', 'CAR-RENTAL187217807', 'Honda Jazz 2020 bản rs số tự động, xe mới mua chính hãng, không giới hạn km.\r\n', 'honda_jazz2020_5c_1.jpg', '51H-52746', 'Honda Jazz 2020', 800000, 0, 5, 5);
INSERT INTO `oto` VALUES (41, 0, 'admin', '2021-08-22 09:55:53', 'admin', '2021-08-23 10:55:03', 'CAR-RENTAL515016324', 'Huynhdai Accent số tự động lẫy số tay , đăng kí 12/2018, xe gia đình mới đẹp , nội thất đẹp trẻ trung thể thao, sạch sẽ bảo dưỡng thường xuyên, xe rộng rãi, an toàn, tiện nghi, phù hợp cho gia đình đi du lịch, xe trang bị cảm biến lùi, cam 360, cam hành trình , gạt mưa, đèn sáng auto hết , hệ thống giải trí mà hình zechtech, sim 4G, bản đồ việt map...\r\n', 'hyundai_accent2018_4c_2.jpg', '77A-11877', 'Hyundai Accent 2018', 750000, 0, 6, 3);
INSERT INTO `oto` VALUES (42, 0, 'admin', '2021-08-22 09:59:16', 'admin', '2021-08-23 10:56:08', 'CAR-RENTAL847637765', 'Huyandai Accent số tự động. Lấy tháng 9/2020 mới toanh.\r\nXe gia đình, nội thất bọc ghế da sang trọng, sạch sẽ, xe có tượng Đức Mẹ ban ơn, xe mới lấy từ hãng ra nên máy móc yên tâm, vững tay lái trên mọi nẻo đường, có Đức Mẹ song hành cùng anh em \r\nXe có trang bị cảm biến áp suất lốp, camera hành trình, camera và cảm biến lùi, đèn pha tự động, gạt mưa tự động, đèn led ban ngày. Đầu AV tích hợp nhiều tính năng nên nghe nhạc, xem phim, radio thoải mái, chế độ đàm thoại rảnh tay tích hợp apple, android.\r\nXe rộng rãi đủ chỗ cho 4 người lớn +1 tài xế\"\r\n', 'hyundai_accent2020_5c_1.jpg', '51H-67304', 'Hyundai Accent 2020', 750000, 0, 6, 5);
INSERT INTO `oto` VALUES (43, 0, 'admin', '2021-08-22 10:00:09', 'admin', '2021-08-23 10:56:44', 'CAR-RENTAL195757087', 'HYUNDAI ELANTRA 2017\r\n', 'hyundai_elantra2017_4c_1.jpg', '51G-38144', 'Hyundai Elantra 2017', 750000, 0, 6, 3);
INSERT INTO `oto` VALUES (44, 0, 'admin', '2021-08-22 10:02:08', 'admin', '2021-08-23 10:57:40', 'CAR-RENTAL140120214', 'HYUNDAI ELANTRA 2020\r\n', 'hyundai_elantra2020_4c_1.jpg', '51H-26006', 'Hyundai Elantra 2020', 650000, 0, 6, 3);
INSERT INTO `oto` VALUES (45, 0, 'admin', '2021-08-22 10:02:53', 'admin', '2021-08-23 10:58:37', 'CAR-RENTAL813729386', 'Huyndai Grand i10 5 cửa. Full option. Có bảo hiểm 2 chiều ( thân vỏ )\r\n', 'hyundai_grand2016_4c_3.jpg', '51F-70941', 'Hyundai Grand I10 2016', 500000, 0, 6, 2);
INSERT INTO `oto` VALUES (46, 0, 'admin', '2021-08-22 10:03:54', 'admin', '2021-08-23 10:59:17', 'CAR-RENTAL695911210', 'HYUNDAI GRAND I10 2020\r\n', 'hyundai_grand2020_4c_1.jpg', '81A-20336', 'Hyundai Grand I10 2020', 500000, 0, 6, 2);
INSERT INTO `oto` VALUES (47, 0, 'admin', '2021-08-22 10:04:50', 'admin', '2021-08-23 11:00:03', 'CAR-RENTAL391671287', 'HYUNDAI GRAND I10 SEDAN 2017\r\n', 'hyundai_sedan2017_5c_2.jpg', '38A-16283', 'Hyundai Grand I10 Sedan 2017', 650000, 0, 6, 5);
INSERT INTO `oto` VALUES (48, 0, 'admin', '2021-08-22 10:05:53', 'admin', '2021-08-23 11:00:38', 'CAR-RENTAL697126102', 'HYUNDAI GRAND I10 SEDAN 2020\r\n', 'hyundai_sedan2020_4c_2.jpg', '51H-74572', 'Hyundai Grand I10 Sedan 2020', 700000, 0, 6, 3);
INSERT INTO `oto` VALUES (49, 0, 'admin', '2021-08-22 10:06:48', 'admin', '2021-08-23 11:01:51', 'CAR-RENTAL165719647', 'Huyndai Grand Starex 9 chỗ , xe sạch đẹp tiết kiệm nhiên liệu, đi êm xe rộng 2 cửa 1 cửa lùa điện 1 cửa cơ. \r\n', 'hyundai_starex2018_9c_3.jpg', '51G-65495', 'Hyundai Grand Starex 2018', 1200000, 0, 6, 11);
INSERT INTO `oto` VALUES (50, 0, 'admin', '2021-08-22 10:07:46', 'admin', '2021-08-23 11:02:47', 'CAR-RENTAL873287871', 'HYUNDAI KONA đời cuối năm 2019 ngoài các tính năng có sẵn của xe thì đã nâng cấp 4 lốp Mic chạy êm ái, màn hình DVD Zectech tích hợp âm thanh 2 Way , các tiện ích google map, vietmap, youtube,,có sẵn trên màn hình. Tích hợp sim data 4g , wifi miễn phí cho khách thuê,, đảm bảo làm hài lòng quý khách hàng.\r\n', 'hyundai_kona2019_5c_1.jpg', '51H-16921', 'Hyundai Kona 2019', 800000, 0, 6, 6);
INSERT INTO `oto` VALUES (51, 0, 'admin', '2021-08-22 10:09:29', 'admin', '2021-08-23 11:03:24', 'CAR-RENTAL317302716', 'Xe đời mới, sạch sẽ, sẵn sàng phục vụ quý khách.\r\n', 'hyundai_kona2021_5c_3.jpg', '72A-51043', 'Hyundai Kona 2021', 750000, 0, 6, 6);
INSERT INTO `oto` VALUES (52, 0, 'admin', '2021-08-22 10:17:09', 'admin', '2021-08-23 11:04:22', 'CAR-RENTAL987843643', 'Xe gia đình mới đẹp, nguyên bản, mãnh mẽ, êm ái\r\nMáy dầu tiết kiệm hơn máy xăng\r\nBản máy dầu full option\r\nCó dẫn đường cảnh báo tốc độ vietmap, giảm thiểu vi phạm giao thông do tốc độ\r\n', 'hyundai_santa2015_7c_2.jpg', '51F-17888', 'Hyundai Santa FE 2015', 900000, 0, 6, 9);
INSERT INTO `oto` VALUES (53, 0, 'admin', '2021-08-22 10:18:30', 'admin', '2021-08-23 11:05:04', 'CAR-RENTAL277605226', 'HYUNDAI SANTA FE 2020 full option bản cao cấp nhất, mới nhận xe tháng 5/2020\r\n', 'hyundai_santa2020_7c_3.jpg', '51H-29718', 'Hyundai Santa FE 2020', 1500000, 0, 6, 9);
INSERT INTO `oto` VALUES (54, 0, 'admin', '2021-08-22 10:19:23', 'admin', '2021-08-23 11:05:49', 'CAR-RENTAL994716171', 'Xe cho thuê cần những giấy tờ uy tín\r\nXe 5 chỗ , nhưng có thể đi 6 người\r\n', 'hyundai_tucson2020_6c_1.jpg', '61A-76324', 'Hyundai Tucson 2020', 1200000, 0, 6, 7);
INSERT INTO `oto` VALUES (55, 0, 'admin', '2021-08-22 10:20:19', 'admin', '2021-08-23 11:06:29', 'CAR-RENTAL546039645', 'Tucson 2021 xe mới mua . Sạch và đẹp . Đội ngũ đưa xe nhanh lẹ . Giấy tờ nhanh gọn\r\n', 'hyundai_tucson2021_5c_1.jpg', '73A-20651', 'Hyundai Tucson 2021', 1100000, 0, 6, 6);
INSERT INTO `oto` VALUES (56, 0, 'admin', '2021-08-22 10:21:08', 'admin', '2021-08-23 11:07:26', 'CAR-RENTAL537231883', 'ISUZU D-MAX số sàn, xe gia đình, đăng kí lần đầu 2012. Có ghế trẻ em, camera hành trình, bluetooth, cáp sạc, điều hòa lạnh run, thùng xe rộng rãi thích hợp gia đình đi cắm trại, picnic, xe tiêu hao nhiên liệu ít (5-6l/100km đường hỗn hợp). chấp nhận passport.\r\n', 'isuzu_dmax2012_bt_1.jpg', '51A-12345', 'Isuzu D-MAX LS 2012', 700000, 0, 7, 12);
INSERT INTO `oto` VALUES (57, 0, 'admin', '2021-08-22 10:34:30', 'admin', '2021-08-23 11:08:22', 'CAR-RENTAL708004880', 'Xe bán tải Isuzu Dmax LS Prestige 1.9 AT 4x2\r\nXe 5 người ngồi thoải mái.\r\nMáy dầu siêu tiết kiệm. Máy chỉ 1.9 nhưng có Turbo, bao mạnh, vượt xe khác vô tư.\r\nXe có sẵn các tính năng an toàn như phanh ABS, cân bằng điện tử, hỗ trợ đỗ đèo, phân bố lực phanh điện tử.\r\nMức tiêu thụ nhiên liệu lúc kẹt xe rơi vào tầm 8.5l/100km - đường trường đều chân ga 7l/100km.\r\n', 'isuzu_dmax2020_bt_1.jpg', '43C-24401', 'Isuzu D-MAX LS Prestige 2020', 900000, 0, 7, 12);
INSERT INTO `oto` VALUES (58, 0, 'admin', '2021-08-22 10:35:22', 'admin', '2021-08-23 11:09:20', 'CAR-RENTAL482178034', 'Mu-X 2019 số tự động máy dầu 1.9, rất tiết kiệm 5-8l/100km, xe mới ra biển tháng 1/2020\r\nXe gầm cao, máy thoáng, đi đường dài rất nhàn, nhưng trong phố hơi nặng vô lăng.\r\nXe chạy hơi ì lúc chuyển số ở 2 cấp số đầu (tự động 6 cấp), còn lại xe rất vọt, hàng 2 ngồi cực êm & sướng.\r\nHệ thống giải trí 6 loa kèm 2 màn hình, có thể kết nối Apple carplay & android auto.\"\r\n', 'isuzu_mux2018_7c_1.jpg', '51H-25400', 'Isuzu MUX 2018', 1100000, 0, 7, 9);
INSERT INTO `oto` VALUES (59, 0, 'admin', '2021-08-22 10:36:20', 'admin', '2021-08-23 11:10:27', 'CAR-RENTAL959186533', 'Xe Isuzu Mux OnyX Limited màu đỏ, lăn bánh tháng-2019, trang bị an toàn đầy đủ với 6 túi khí, cân bằng điện tử, phanh khẩn cấp, khởi hành ngang dốc.., hệ thống giải trí với 6 loa, màn hình ốp trần xua tan cảm giác nhàm chán khi đi xa.\r\nMáy dầu 1.9 Tubo công xuất 150 mã lực, tiết kiệm nhiên liệu 6.5l/ 100km\r\nXe luôn sạch sẽ trước khi giao, hỗ trợ giao tận nhà bán kính 7km.\r\nĐể phuc vụ tốt tốt hơn, quý khách có thể yêu cầu phim, nhạc để mình chuẩn bị sẵn giúp chuyến đi thêm thú vị.\r\n', 'isuzu_mux2019_7c_2.jpg', '51H-55700', 'Isuzu MUX 2019', 1100000, 0, 7, 9);
INSERT INTO `oto` VALUES (60, 0, 'admin', '2021-08-22 10:37:01', 'admin', '2021-08-23 11:11:18', 'CAR-RENTAL430275914', 'KIA CARENS xe nhà sử dụng nội thất pull option.\r\n', 'kia_carens2015_7c_1.jpg', '51F-97101', 'KIA Carens 2015', 700000, 0, 8, 10);
INSERT INTO `oto` VALUES (61, 0, 'admin', '2021-08-22 10:37:57', 'admin', '2021-08-23 15:06:32', 'CAR-RENTAL543750462', 'Kia Carens 7 chỗ, số tự động , máy dầu , tiết kiệm nhiên liệu, nội thất da sạch đẹp, có cửa sổ trời, máy êm , đầm chắc\r\n', 'kia_carens2007_7c_2.jpg', '50Z-9293', 'KIA Carens 2007', 650000, 0, 8, 10);
INSERT INTO `oto` VALUES (62, 0, 'admin', '2021-08-22 10:38:39', 'admin', '2021-08-23 15:07:49', 'CAR-RENTAL721017470', 'Kia Carnival 2009 AT V6 2.5\r\n', 'kia_carnival2009silver_7c_1.jpg', '51A-78956', 'KIA Carnival 2009 Bạc', 750000, 0, 8, 10);
INSERT INTO `oto` VALUES (63, 0, 'admin', '2021-08-22 10:42:04', 'admin', '2021-08-23 15:08:54', 'CAR-RENTAL992003705', 'Kia Carnival số tự động máy xăng, nội, ngoại thất sạch đẹp không mùi hôi, nội thất cực kỳ rộng rãi, bọc trần lót sàn 5d, DVD android nghe nhạc giải trí 4G, xe đi cực kỳ êm ái rộng rãi , thoải mái. phù hợp cho gia đình cuối tuần đi nghỉ mát.\r\n', 'kia_carnival2009black_7c_2.jpg', '51A-51378', 'KIA Carnival 2009 Đen', 700000, 0, 8, 10);
INSERT INTO `oto` VALUES (64, 0, 'admin', '2021-08-22 10:43:22', 'admin', '2021-08-23 15:10:55', 'CAR-RENTAL554598040', 'Xe ít đi lại Kia Cerato màu trắng bản Full 2.0 2020( xăng ) odo 10.000km ( như new ) an toàn 6 túi khí . Có 4 chế độ lái eco-comfort-smart-sport . xe cá nhân còn bảo hành hãng , phù hợp chạy đám cưới hoặc đi hèn hò .đã nâng cấp áo ghế ferrari , nội thất led siêu đẹp , tựa lưng cao su non , tựa cổ cao su non , vô lăng da lộn . dán nóc đen cực thể thao .có cửa sổ trời để lấy gió . xe nước hoa Dior cực thơm . màn hình kết nối apple carlay tiện xem phim youtube khi trải nghiệm.\r\n', 'kia_cerato2020_5c_1.jpg', '51H-72736', 'KIA Cerato 2020', 900000, 0, 8, 5);
INSERT INTO `oto` VALUES (65, 0, 'admin', '2021-08-22 10:44:11', 'admin', '2021-08-23 15:13:23', 'CAR-RENTAL999445236', 'Kia Cerato 2018 xe 5 chỗ rộng rãi thoải mái, động cơ êm ái, tiết kiệm nhiên liệu, trang bị đầy đủ tính năng, sạc không dây, cruise control, camera hành trình, màn hình android.\r\n', 'kia_cerato2018_5c_2.jpg', '51G-72745', 'KIA Cerato 2018', 800000, 0, 8, 5);
INSERT INTO `oto` VALUES (66, 0, 'admin', '2021-08-22 10:47:20', 'admin', '2021-08-23 15:15:12', 'CAR-RENTAL286587839', 'Kia Forte số sàn đăng ký tháng 10/2012.\r\nXe gia đình mới đẹp, nội thất nguyên bản, sạch sẽ, bảo dưỡng thường xuyên, rửa xe miễn phí cho khách. Xe thuộc phân khúc C nên rộng rãi, an toàn, tiện nghi, phù hợp cho gia đình du lịch. Xe trang bị hệ thống điều hoà tự động, cảm biến trước sau, gương chiếu hậu chống chói, đèn pha tự động, camera hành trình trước sau, hệ thống giải trí cùng nhiều tiện nghi khác...\r\n', 'kia_forte2012_4c_1.jpg', '72A-42575', 'KIA Forte 2012', 600000, 0, 8, 3);
INSERT INTO `oto` VALUES (67, 0, 'admin', '2021-08-22 10:48:19', 'admin', '2021-08-23 15:16:04', 'CAR-RENTAL523600714', 'Xe mới bảo dưỡng kỹ, khách thuê giữ gìn vệ sinh xe\r\n', 'kia_forte2015_4c_1.jpg', '51A-08554', 'KIA Forte 2015', 800000, 0, 8, 3);
INSERT INTO `oto` VALUES (68, 0, 'admin', '2021-08-22 10:49:11', 'admin', '2021-08-23 15:16:55', 'CAR-RENTAL912020041', 'Mùa hè luôn là thời điểm lý tưởng để mọi người có thể tận hưởng những chuyến du lịch hấp dẫn và đáng nhớ cùng gia đình hoặc bạn bè.\r\nVới dịch vụ thuê xe có tài và tự lái tiện lợi, tiết kiệm. Chúng tôi luôn sẵn sàng đồng hành cùng bạn trong những chuyến đi đầy kỉ niệm và đáng nhớ.\r\nĐặc biệt, để chào đón mùa Hè năm nay, chúng tôi xin giảm giá trực tiếp đến Quý khách. Khi thuê xe tự lái hoặc có tài xế,Quý khách sẽ được giảm ngay 50k/ngày cho mọi giao dịch thuê xe.\r\n', 'kia_k32014_5c_3.jpg', '51A-75331', 'KIA K3 2014', 850000, 0, 8, 5);
INSERT INTO `oto` VALUES (69, 0, 'admin', '2021-08-22 10:50:02', 'admin', '2021-08-23 15:17:52', 'CAR-RENTAL787633846', 'Xe số tự động, màn hình android, cam lùi, cảm biến trước-sau,  bảo hiểm 2 chiều đầy đủ.\r\n', 'kia_k32016_5c_3.jpg', '51F-20868', 'KIA K3 2016', 600000, 0, 8, 5);
INSERT INTO `oto` VALUES (70, 0, 'admin', '2021-08-22 10:51:37', 'admin', '2021-08-23 15:19:28', 'CAR-RENTAL344733425', 'KIA Morning mới đập hộp, tất cả đều ngon lành.\r\n', 'kia_morning2020_5c_2.jpg', '94A-05703', 'KIA Morning 2020', 550000, 0, 8, 5);
INSERT INTO `oto` VALUES (71, 0, 'admin', '2021-08-22 10:52:36', 'admin', '2021-08-23 15:20:08', 'CAR-RENTAL570449234', 'Xe kia morning, màu vàng, 2015, xe chạy gia đình, sạch sẽ, bảo dưỡng định kỳ\r\n', 'kia_morning2015_5c_1.jpg', '51F-28593', 'KIA Morning 2015', 450000, 0, 8, 5);
INSERT INTO `oto` VALUES (72, 0, 'admin', '2021-08-22 10:53:43', 'admin', '2021-08-23 15:21:11', 'CAR-RENTAL815092826', 'Kia Morning 12/2015, xe mới đẹp, nội thất sạch sẽ, có DVD giải trí siêu tiện lợi...\r\n', 'kia_morningsi2015_4c_2.jpg', '51F-54047', 'KIA Morning SI 2015', 500000, 0, 8, 2);
INSERT INTO `oto` VALUES (73, 0, 'admin', '2021-08-22 10:54:40', 'admin', '2021-08-23 15:22:12', 'CAR-RENTAL631849356', 'KIA MORNING SI 2016\r\n', 'kia_morningsi2016_5c_2.jpg', '60A-33179', 'KIA Morning SI 2016', 500000, 0, 8, 5);
INSERT INTO `oto` VALUES (74, 0, 'admin', '2021-08-22 10:55:30', 'admin', '2021-08-23 15:23:08', 'CAR-RENTAL654620742', 'Xe KIA Optima là dòng sedan cao cấp hạng D, xe gia đình ít đi, êm, sang trọng\r\n', 'kia_optima2017_5c_2.jpg', '51G-90217', 'KIA Optima 2017', 1100000, 0, 8, 5);
INSERT INTO `oto` VALUES (75, 0, 'admin', '2021-08-22 10:56:14', 'admin', '2021-08-23 15:23:53', 'CAR-RENTAL468280887', 'Kia Rio Sedan AT đăng ký 12/2016\r\n', 'kia_rio2016_4c_1.jpg', '51G-20575', 'KIA RIO 2016', 600000, 0, 8, 3);
INSERT INTO `oto` VALUES (76, 0, 'admin', '2021-08-22 10:57:05', 'admin', '2021-08-23 15:24:39', 'CAR-RENTAL809608439', 'KIA RIO số tự động, xe gia đình, sạch sẽ, tiết kiệm xăng, Cammera hành trình, Cammera lùi, màn hình giải trí, trần bọc 5d, ghế da\r\n', 'kia_rio2017_5c_2.jpg', '62A-07815', 'KIA RIO 2017', 700000, 0, 8, 5);
INSERT INTO `oto` VALUES (77, 0, 'admin', '2021-08-22 10:57:45', 'admin', '2021-08-23 15:25:40', 'CAR-RENTAL219803340', 'KIA RONDO số tự động, đăng ký tháng 3/2020\r\nXe gia đình mới đẹp, nội thất nguyên bản, sạch sẽ, bảo dưỡng thường xuyên\r\nXe rộng rãi, an toàn, tiện nghi phù hợp cho gia đình đi du lịch\r\nXe trang bị camera lùi,  gạt mưa tự động, đèn pha tự động, camera hành trình, định vị GPS, hệ thống giải tri cùng nhiều tiện nghi khác\r\n', 'kia_rondo2020_7c_2.jpg', '61A-74763', 'KIA RONDO 2020', 900000, 0, 8, 10);
INSERT INTO `oto` VALUES (78, 0, 'admin', '2021-08-22 10:58:44', 'admin', '2021-08-23 15:26:40', 'CAR-RENTAL127435413', 'KIA RONDO Số tự động máy xăng mới lấy 19/09/2019 êm ái sạch sẽ. Xe nhà đi nên rất kỹ\r\n', 'kia_rondo2019_7c_3.jpg', '51G-96268', 'KIA RONDO 2019', 850000, 0, 8, 10);
INSERT INTO `oto` VALUES (79, 0, 'admin', '2021-08-22 10:59:45', 'admin', '2021-08-23 15:27:37', 'CAR-RENTAL152135679', 'KIA SEDONA 2018\r\n', 'kia_sedona2018_7c_1.jpg', '51G-03327', 'KIA SEDONA 2018', 1400000, 0, 8, 10);
INSERT INTO `oto` VALUES (80, 0, 'admin', '2021-08-22 11:00:35', 'admin', '2021-08-23 15:28:29', 'CAR-RENTAL689110649', 'Kia Sedona số tự động sản xuất 2019 đăng ký 2020.\r\n', 'kia_sedona2019_7c_1.jpg', '51H-03120', 'KIA SEDONA 2019', 1500000, 0, 8, 10);
INSERT INTO `oto` VALUES (81, 0, 'admin', '2021-08-22 14:53:49', 'admin', '2021-08-23 15:30:21', 'CAR-RENTAL818984085', 'Xe ít đi lại Kia Seltos premium sport 2021 5 chỗ màu cam bản Full 2021( xăng ) odo 2000km ( như new ) an toàn 6 túi khí . Có 4 chế độ lái eco-comfort-smart-sport . xe cá nhân còn bảo hành hãng , phù hợp chạy đám cưới hoặc đi hẹn hò . Đã nâng cấp áo ghế ferrari , nội thất led siêu đẹp , tựa lưng cao su non , tựa cổ cao su non , vô lăng da lộn . dán nóc đen cực thể thao . có cửa sổ trời để lấy gió. xe nước hoa Dior cực thơm. màn hình kết nối apple carlay tiện xem phim youtube khi trải nghiệm , dán kính Blue 3M siêu mát .\r\n', 'kia_seltos2021_5c_2.jpg', '51H-40729', 'KIA Seltos Premium 2021', 1100000, 0, 8, 6);
INSERT INTO `oto` VALUES (82, 0, 'admin', '2021-08-22 14:57:40', 'admin', '2021-08-23 15:32:21', 'CAR-RENTAL819460102', 'Xe KIA SELTOS DELUXE xe gia đình sạch sẽ , xe  đẹp\r\n', 'kia_deluxe2021_5c_4.jpg', '35A-22153', 'KIA Seltos Deluxe 2021', 700000, 0, 8, 6);
INSERT INTO `oto` VALUES (83, 0, 'admin', '2021-08-22 14:58:42', 'admin', '2021-08-23 15:33:11', 'CAR-RENTAL169326741', 'Xe mới gia đình sử dụng tiện nghi giải trí đầy đủ.\r\n', 'kia_soluto2020_4c_2.jpg', '51H-65951', 'KIA Soluto Deluxe 2020', 650000, 0, 8, 3);
INSERT INTO `oto` VALUES (84, 0, 'admin', '2021-08-22 14:59:34', 'admin', '2021-08-23 15:33:54', 'CAR-RENTAL692419120', 'KIA SOLUTO 2019\r\n', 'kia_soluto2019_4c_4.jpg', '51G-99443', 'KIA Soluto 2019', 650000, 0, 8, 3);
INSERT INTO `oto` VALUES (85, 0, 'admin', '2021-08-22 15:00:19', 'admin', '2021-08-23 15:34:46', 'CAR-RENTAL901929232', 'Xe trang bị đầy đủ nhu cầu sử dụng\r\n', 'kia_sorento2018_7c_2.jpg', '51G-68035', 'KIA Sorento 2018', 1200000, 0, 8, 9);
INSERT INTO `oto` VALUES (86, 0, 'admin', '2021-08-22 15:02:12', 'admin', '2021-08-23 15:37:31', 'CAR-RENTAL963049198', 'Xe KIA Sorento máy dầu số tự động đăng ký năm 2019 xe gia đình mới đẹp. nội thất nguyên bản,sặch sẽ, bảo dưỡng theo điịnh kỳ\r\nTrang bị hệ thống cảm biến lùi, gạt mưa tự động, đèn pha tự động, camera hành trình, hệ thống giải trí cùng nhiều tiện nghi khác. Xe rộng rãi, an toàn, tiện nghi, phù hợp cho gia đình du lịch\r\n', 'kia_sorento2019_7c_1.jpg', '60A-65093', 'KIA Sorento 2019', 1100000, 0, 8, 9);
INSERT INTO `oto` VALUES (87, 0, 'admin', '2021-08-22 15:03:35', 'admin', '2021-08-23 15:38:29', 'CAR-RENTAL385086915', 'Xe đẹp, giữ gìn kĩ\r\n', 'mazda_22018_5c_2.jpg', '51F-64840', 'Mazda 2 2018', 700000, 0, 9, 5);
INSERT INTO `oto` VALUES (88, 0, 'admin', '2021-08-22 15:05:16', 'admin', '2021-08-23 15:39:23', 'CAR-RENTAL600183509', 'Mazda 2 AT luxury đăng ký 10/2020\r\n2 chế độ lái eco - sport\r\nĐèn tự động - gạt mưa tự động - tự động chỉnh góc chiếu đèn\r\nĐèn trước pha cos bi led - sương mù bi led - daylight led \r\nCam hành trình - cam lùi , cảm biến lùi\r\nCruise control - limited speed control - android auto (không có apple carplay)\r\n', 'mazda_22020_5c_2.jpg', '61A-82903', 'Mazda 2 2020', 750000, 0, 9, 5);
INSERT INTO `oto` VALUES (89, 0, 'admin', '2021-08-22 15:06:04', 'admin', '2021-08-23 15:40:38', 'CAR-RENTAL253437828', 'MAZDA 3 2019\r\n', 'mazda_32019_4c_3.jpg', '51G-79731', 'Mazda 3 2019', 900000, 0, 9, 3);
INSERT INTO `oto` VALUES (90, 0, 'admin', '2021-08-22 15:06:50', 'admin', '2021-08-23 15:41:54', 'CAR-RENTAL664015812', 'Mazda 3 xe đăng kí 12/2016 xe gia đình , rộng rãi sạch sẽ, lên số đồ chơi. Cam hành trình, cảm biết áp suất lốp, cảm biến xung quanh xe , pô on off , volang carbon xe nhìn rất sang và đẹp\r\nXe ít đi nên còn như mới , ai có nhu cầu đi xe hoa hoặc du lịch vài ngày rất thích hợp \r\n', 'mazda_32016_5c_1.jpg', '51G-21857', 'Mazda 3 2016', 850000, 0, 9, 5);
INSERT INTO `oto` VALUES (91, 0, 'admin', '2021-08-22 15:07:41', 'admin', '2021-08-23 16:40:21', 'CAR-RENTAL365662935', 'MAZDA 3 Hatchback 2020\r\n', 'mazda_3hatchback2020_4c_1.jpg', '51H-75479', 'Mazda 3 Hatchback 2020', 1000000, 0, 9, 4);
INSERT INTO `oto` VALUES (92, 0, 'admin', '2021-08-22 15:47:43', 'admin', '2021-08-23 16:41:34', 'CAR-RENTAL671482373', 'Mazda 3 Hatchback đời 2016\r\nNội thất còn mới, sạch sẽ, mát mẻ, thơm tho\r\nNgoại thất được chăm chút và lau rửa thường xuyên sạch đẹp\r\nKhoang chở người rộng rãi, thoải mái, khoang chứa đồ rộng tương đối\r\nĐộng cơ 1.5 mạnh mẽ, bão dưỡng định kỳ không bị ỳ\r\nTiêu hao nhiên liệu thấp : 6.7l/100km đường hỗn hợp\r\nCó rèm che nắng, có ghế tựa đầu và lưng tài, tựa đầu tất cả các ghế còn lại, cửa sổ thời trang\"\r\n', 'mazda_3hatchback2016_5c_1.jpg', '51H-70158', 'Mazda 3 Hatchback 2016', 800000, 0, 9, 5);
INSERT INTO `oto` VALUES (93, 0, 'admin', '2021-08-22 15:48:40', 'admin', '2021-08-23 16:42:50', 'CAR-RENTAL356987833', 'Mazda 6, mua mới và đăng ký 7/2020, máy 2.0\r\nNội thất sang trọng và ngoại thất lịch lãm cho những chuyến công tác và mang lại nhiều thành công\r\nPhù hợp cho xe cưới và đưa đón khách hotel, resort, sân bay\r\n', 'mazda_62019_5c_2.jpg', '51H-32364', 'Mazda 6 2019', 1150000, 0, 9, 5);
INSERT INTO `oto` VALUES (94, 0, 'admin', '2021-08-22 15:49:23', 'admin', '2021-08-23 16:44:22', 'CAR-RENTAL918946838', 'MAZDA 6 2018\r\n', 'mazda_62018_5c_2.jpg', '18A-23062', 'Mazda 6 2018', 1000000, 0, 9, 5);
INSERT INTO `oto` VALUES (95, 0, 'admin', '2021-08-22 15:50:17', 'admin', '2021-08-23 16:45:04', 'CAR-RENTAL148622613', 'Mazda CX5 2.0L Premium 2020 sản xuất năm 2020. Xe mới bảo dưỡng thường xuyên, sạch sẽ gọn gàng. Trang bị thêm cảm biến áp suất lốp, camera hành trình Vietmap có cảnh báo giao thông giúp lái xe an toàn. Bản Premium đầy đủ trang bị như cảm biến toàn thân xe, camera lùi, HUD, 10 loa Bose.\r\n', 'mazda_cx52020_5c_2.jpg', '86A-14776', 'Mazda CX5 2020 ', 1300000, 0, 9, 6);
INSERT INTO `oto` VALUES (96, 0, 'admin', '2021-08-22 15:51:10', 'admin', '2021-08-23 16:45:38', 'CAR-RENTAL486483122', 'MAZDA CX5 2019\r\n', 'mazda_cx52019_5c_2.jpg', '51H-17908', 'Mazda CX5 2019', 1300000, 0, 9, 6);
INSERT INTO `oto` VALUES (97, 0, 'admin', '2021-08-22 15:52:11', 'admin', '2021-08-23 16:46:25', 'CAR-RENTAL782624589', 'MERCEDES C250 2013\r\n', 'mercedes_c2502013_4c_2.jpg', '51A-68157', 'Mercedes C250 2013', 1500000, 0, 10, 3);
INSERT INTO `oto` VALUES (98, 0, 'admin', '2021-08-22 15:53:00', 'admin', '2021-08-23 16:47:41', 'CAR-RENTAL230961510', 'Xe đẹp, nội thất sang trọng phù hợp với các giám đốc hoặc các lễ đám cưới sang trọng. \r\nXe nhà mới đẹp, giữ gìn sạch sẽ rửa xe thường xuyên, đi xa rất êm chống shock tốt. Bảo hiểm hai chiều\r\n', 'mercedes_glc2019_4c_1.jpg', '51H-10064', 'Mercedes GLC300 2019', 3100000, 0, 10, 6);
INSERT INTO `oto` VALUES (99, 0, 'admin', '2021-08-22 15:54:03', 'admin', '2021-08-23 16:49:22', 'CAR-RENTAL335140890', 'Xe Mexcedes GLK 250 đời 2013, xe còn mới do gia đình đi. Dễ sử dụng,  chất lượng xe còn rất tốt, máy tốt và ít hao xăng\r\n', 'mercedes_glk2013_4c_2.jpg', '51A-67170', 'Mercedes GLK250 2013', 1300000, 0, 10, 3);
INSERT INTO `oto` VALUES (100, 0, 'admin', '2021-08-22 15:54:45', 'admin', '2021-08-23 16:50:14', 'CAR-RENTAL986178235', 'Mec C180 được trang bị ghế da cao cấp,kết nối Apple Car Play/Android Auto, USB và Bluetooth\r\nC180 trang bị động cơ i4 tăng áp dung tích 1.Đi kèm với đó là hộp số tự động 9 cấp G-Tronic. Xe có khả năng tăng tốc từ 0-100km/h trong 8,6 giây trước khi đạt tốc độ tối đa 223 km/h.\r\nTrang bị hệ thống chống bó cứng phanh ABS, hệ thống chống trơn trượt ASR, hệ thống cân bằng điện tử ESP, hệ thống hỗ trợ phanh ADAPTIVE, 7 túi khí, lốp xe run-flat, camera lùi, cảm biến va chạm xung quanh xe\r\nMercedes-Benz C 1802020 vẫn là mẫu sedan hạng sang hội tụ đầy đủ nhất những tố nhất của hãng xe Đức: cảm giác lái mạnh mẽ, trang bị tiện nghi ngập tràn cùng sự êm ái mỗi khi di chuyển\r\nWifi miễn phí tốc độ cao\r\n', 'mercedes_c1802020_5c_3.jpg', '51H-47065', 'Mercedes C180 2020', 2000000, 0, 10, 5);
INSERT INTO `oto` VALUES (101, 0, 'admin', '2021-08-22 15:55:34', 'admin', '2021-08-23 16:52:21', 'CAR-RENTAL523585790', 'Xe Triton màu xám, mẫu 2019, bản 2 cầu, số tự động, trên xe có sẵn thang dắt xe máy, gá nóc.\r\n', 'mitsubishi_triton2019grey_bt_3.jpg', '70C-14366', 'Mitsubishi Triton 2019 Xám', 1100000, 0, 11, 12);
INSERT INTO `oto` VALUES (102, 0, 'admin', '2021-08-22 15:56:33', 'admin', '2021-08-23 16:53:03', 'CAR-RENTAL527429244', 'Xe bán tải Triton, số sàn, máy dầu 2.5, xe mới, đẹp, thuận lợi đi tỉnh, thăm quê...\r\n', 'mitsubishi_triton2019silver_bt_1.jpg', '51D-35532', 'Mitsubishi Triton 2019 Bạc', 900000, 0, 11, 12);
INSERT INTO `oto` VALUES (103, 0, 'admin', '2021-08-22 15:57:20', 'admin', '2021-08-23 16:54:04', 'CAR-RENTAL664030232', 'Xe Attrage 11/2020 tự động, có trang bị camera lùi, camera hành trình, xe gia đình đi sạch sẽ, được bảo dưỡng định kỳ\r\n', 'mitsubishi_attrage2020_4c_3.jpg', '51H-68965', 'Mitsubishi Attrage 2020', 800000, 0, 11, 3);
INSERT INTO `oto` VALUES (104, 0, 'admin', '2021-08-22 15:58:02', 'admin', '2021-08-23 16:54:55', 'CAR-RENTAL825213590', 'Xe mới lấy về 3/2021. xe chạy êm, rộng rãi nhiều tiện nghi ,sạch sẽ và  ít hao xăng . gầm cao rất tiện đi đường gồ ghề .\r\n', 'mitsubishi_attrage2021_4c_1.jpg', '50E-00791', 'Mitsubishi Attrage 2021', 700000, 0, 11, 3);
INSERT INTO `oto` VALUES (105, 0, 'admin', '2021-08-22 15:58:47', 'admin', '2021-08-23 16:55:40', 'CAR-RENTAL853928688', 'Xe Mitsubishi Mirage 2019\r\n', 'mitsubishi_mirage2019_4c_1.jpg', '51H-21498', 'Mitsubishi Mirage 2019', 500000, 0, 11, 2);
INSERT INTO `oto` VALUES (106, 0, 'admin', '2021-08-22 15:59:32', 'admin', '2021-08-23 16:56:17', 'CAR-RENTAL108162399', 'Xe Mitsubishi Mirage AT 2016 màu xám,sạch đẹp còn mới ít hao xăng\r\n', 'mitsubishi_mirage2016_4c_1.jpg', '51F-94393', 'Mitsubishi Mirage 2016', 600000, 0, 11, 2);
INSERT INTO `oto` VALUES (107, 0, 'admin', '2021-08-22 16:00:28', 'admin', '2021-08-23 16:57:14', 'CAR-RENTAL952281047', 'Mitsubishi Outlander 2019, màu đỏ bản Premium, Thiết kế Dynamic Shield Outlander với những đường nét đặc trưng ở phía trước của xe, mang lại ấn tượng về sự mạnh mẽ linh hoạt và khả năng bảo vệ toàn diện.\r\nXe gia đình mới đẹp ít đi, nội thất nguyên bản, lót thảm 5D sạch sẽ dễ vệ sinh, bảo dưỡng thường xuyên!\r\nXe đã trang bị và nâng cấp full option đầy đủ tính năng: cam360, cảm biến gạt mưa, tự động bật đèn, cốp điện... màn hình giải trí 10,8 inch với đầy đủ tính năng dẫn đường cùng phát wifi free.\r\n', 'mitsubishi_outlander2019_7c_2.jpg', '51H-07544', 'Mitsubishi Outlander 2019', 1200000, 0, 11, 9);
INSERT INTO `oto` VALUES (108, 0, 'admin', '2021-08-22 16:01:20', 'admin', '2021-08-23 16:57:59', 'CAR-RENTAL878824451', 'Outlander CVT Trang bị cam 360, nàn hình andrroid và cảm biến lùi. Xe mới\r\n', 'mitsubishi_outlander2020_7c_1.jpg', '51H-69238', 'Mitsubishi Outlander 2020', 1100000, 0, 11, 9);
INSERT INTO `oto` VALUES (109, 0, 'admin', '2021-08-22 16:02:12', 'admin', '2021-08-23 16:58:46', 'CAR-RENTAL204425110', 'MITSUBISHI PAJERO SPORT 2016\r\n', 'mitsubishi_sport2016_7c_2.jpg', '51F-69325', 'Mitsubishi Pajero Sport 2016', 900000, 0, 11, 9);
INSERT INTO `oto` VALUES (110, 0, 'admin', '2021-08-22 16:02:59', 'admin', '2021-08-23 16:59:26', 'CAR-RENTAL177599347', 'MITSUBISHI PAJERO SPORT 2021\r\n', 'mitsubishi_sport2021_7c_1.jpg', '51H-91017', 'Mitsubishi Pajero Sport 2021', 1300000, 0, 11, 9);
INSERT INTO `oto` VALUES (111, 0, 'admin', '2021-08-22 16:03:46', 'admin', '2021-08-23 17:00:03', 'CAR-RENTAL411877688', 'MITSUBISHI XPANDER 2021\r\n', 'mitsubishi_xpander2021_7c_1.jpg', '51H-46724', 'Mitsubishi Xpander 2021', 800000, 0, 11, 9);
INSERT INTO `oto` VALUES (112, 0, 'admin', '2021-08-22 16:04:48', 'admin', '2021-08-23 17:00:43', 'CAR-RENTAL369894701', 'Xe Xpander số tự động đời 2020 mới mua\r\n', 'mitsubishi_xpander2020_7c_2.jpg', '51H-64545', 'Mitsubishi Xpander 2020', 900000, 0, 11, 9);
INSERT INTO `oto` VALUES (113, 0, 'admin', '2021-08-22 16:05:39', 'admin', '2021-08-23 17:01:48', 'CAR-RENTAL578989956', 'Xe mới mua tháng 4/2020, sử dụng cá nhân nên mọi thứ còn rất mới và sạch\r\nXe sử dụng hệ thống treo đa điểm thay cho phuộc nhíp nên êm như xe 7 chỗ, âm thanh cực chất.\r\nMáy mạnh, gầm cao, thể thao, cá tính!\r\n', 'nissan_navara2020_bt_3.jpg', '71C-09139', 'Nissan Navara EL 2020', 900000, 0, 12, 12);
INSERT INTO `oto` VALUES (114, 0, 'admin', '2021-08-22 16:06:30', 'admin', '2021-08-23 17:02:54', 'CAR-RENTAL439493787', 'Xe Nissan Navara EL -2017 màu xanh, số tự động, máy dầu.\r\nÍt sử dụng nên còn rất mới, động cơ 2.5, vận hành êm ái mạnh mẽ nhưng đầm chắc như SUV, có thùng chở hàng phía sau, chở được khối lượng hàng lên đến 650kg, có nắp đậy kín mà không bị cấm tải.\r\nĐây là chiếc bán tải gầm cao êm ái nhất, thực dụng, kinh tế nhất cho người sử dụng.\r\nXe tự tin vận hành trên nhiều địa hình phức tạp.\"\r\n', 'nissan_navara2017_bt_2.jpg', '51D-11208', 'Nissan Navara EL 2017', 900000, 0, 12, 12);
INSERT INTO `oto` VALUES (115, 0, 'admin', '2021-08-22 16:07:15', 'admin', '2021-08-23 17:03:31', 'CAR-RENTAL577655799', 'Nissan Sunny 2018 số tự động, đời 2018, đầy đủ đồ chơi, bảo dưỡng định kỳ\r\n', 'nissan_sunny2018_4c_2.jpg', '70A-15364', 'Nissan Sunny 2018', 650000, 0, 12, 3);
INSERT INTO `oto` VALUES (116, 0, 'admin', '2021-08-22 16:07:57', 'admin', '2021-08-23 17:03:59', 'CAR-RENTAL707155096', 'NISSAN SUNNY 2017\r\n', 'nissan_sunny2017_5c_2.jpg', '51G-00741', 'Nissan Sunny 2017', 700000, 0, 12, 5);
INSERT INTO `oto` VALUES (117, 0, 'admin', '2021-08-22 16:08:40', 'admin', '2021-08-23 17:05:00', 'CAR-RENTAL258908712', 'Xe Suzuki Celerio sản xuất 2018 hộp số tự động CVT, nội thất sạch đẹp, dọn từ a-z. Đặc biệt cực kì tiết kiệm xăng (khoảng 4,5l đường hỗn hợp) mình đã test vài lần An Giang - Sài Gòn, xe 1.0 nhưng 800kg nên khá bốc nha!\r\n', 'suzuki_celerio2018_5c_2.jpg', '67A-14294', 'Suzuki Celerio 2018', 600000, 0, 13, 5);
INSERT INTO `oto` VALUES (118, 0, 'admin', '2021-08-22 16:09:30', 'admin', '2021-08-23 17:05:25', 'CAR-RENTAL857625822', 'SUZUKI CELERIO 2019\r\n', 'suzuki_celerio2019_5c_2.jpg', '62A-16494', 'Suzuki Celerio 2019', 600000, 0, 13, 5);
INSERT INTO `oto` VALUES (119, 0, 'admin', '2021-08-22 16:10:42', 'admin', '2021-08-23 17:06:19', 'CAR-RENTAL205966498', 'Suzuki Ciaz rất tiết kiệm nhiên liệu 5_7 lit/100km. Xe rất mới, động cơ mạnh mẽ, hàng ghế sau rộng rãi ,nói chung sử dụng 1 lần sẽ thấy thích.\r\n', 'suzuki_ciaz2019_5c_1.jpg', '51H-54300', 'Suzuki Ciaz 2019', 750000, 0, 13, 5);
INSERT INTO `oto` VALUES (120, 0, 'admin', '2021-08-22 16:11:24', 'admin', '2021-08-23 17:06:49', 'CAR-RENTAL950535945', 'Suzuki Ciaz 2017\r\n', 'suzuki_ciaz2017_5c_3.jpg', '51G-26431', 'Suzuki Ciaz 2017', 750000, 0, 13, 5);
INSERT INTO `oto` VALUES (121, 0, 'admin', '2021-08-22 16:12:14', 'admin', '2021-08-24 10:13:00', 'CAR-RENTAL867129703', 'Suzuki Ertiga Sport 2021 số tự động 7 chỗ, sạch sẽ, thoải mái, vui vẻ cùng bà con cô bác.\r\n', 'suzuki_ertiga2021_7c_1.jpg', '51H-86338', 'Suzuki Ertiga 2021', 1000000, 0, 13, 10);
INSERT INTO `oto` VALUES (122, 0, 'admin', '2021-08-22 16:13:17', 'admin', '2021-08-24 10:13:45', 'CAR-RENTAL811050182', 'Suzuki Ertiga 2019\r\n', 'suzuki_ertiga21019_7c_2.jpg', '51H-17803', 'Suzuki Ertiga 2019', 1000000, 0, 13, 10);
INSERT INTO `oto` VALUES (123, 0, 'admin', '2021-08-22 16:13:57', 'admin', '2021-08-24 10:14:24', 'CAR-RENTAL428913081', 'Xe Suzuki Swift chạy gia đình, đăng kí tháng 11/2019\r\nXe xăng chạy siêu tiết kiệm 3,6k/100km là thật\r\nXe gia đình sạch sẽ an toàn\r\n', 'suzuki_swift2020_5c_1.jpg', '51H-19452', 'Suzuki Swift 2020', 850000, 0, 13, 5);
INSERT INTO `oto` VALUES (124, 0, 'admin', '2021-08-22 16:14:38', 'admin', '2021-08-24 10:14:54', 'CAR-RENTAL544689938', 'SUZUKI SWIFT 2016\r\n', 'suzuki_swift2016_4c_3.jpg', '51F-40021', 'Suzuki Swift 2016', 800000, 0, 13, 4);
INSERT INTO `oto` VALUES (125, 0, 'admin', '2021-08-22 16:15:26', 'admin', '2021-08-24 10:15:31', 'CAR-RENTAL389886642', 'Suzuk XL7. Xe mới, vệ sinh sạch sẽ. Thích hợp đi gia đình\r\n', 'suzuki_xl72020_7c_1.jpg', '51H-68143', 'Suzuki XL7 2020', 1000000, 0, 13, 9);
INSERT INTO `oto` VALUES (126, 0, 'admin', '2021-08-22 16:16:19', 'admin', '2021-08-24 10:16:16', 'CAR-RENTAL597397646', 'Susuki XL7 số tự động, xe mới sản xuất năm 2021\r\n', 'suzuki_xl72021_7c_2.jpg', '38A-33562', 'Suzuki XL7 2021', 900000, 0, 13, 9);
INSERT INTO `oto` VALUES (127, 0, 'admin', '2021-08-22 16:17:01', 'admin', '2021-08-24 10:17:09', 'CAR-RENTAL873925792', 'Toyota Avanza 7 chỗ đời 2019. Xe đầy đủ tiện nghi: màn hình giải trí xem phim nghe nhạc thoải mái, camera hành trình, camera lùi, vệ sinh xe miễn phí cho khách. Là lựa chọn cho gia đình đi nghỉ dưỡng.\r\n', 'toyota_avanza2019_7c_2.jpg', '51H-57287', 'Toyota Avanza 2019', 850000, 0, 14, 10);
INSERT INTO `oto` VALUES (128, 0, 'admin', '2021-08-22 16:20:02', 'admin', '2021-08-24 10:18:11', 'CAR-RENTAL886700992', 'TOYOTA CAMRY 2020\r\n', 'toyota_camry2020_4c_4.jpg', '51A-75974', 'Toyota Camry 2020', 1200000, 0, 14, 3);
INSERT INTO `oto` VALUES (129, 0, 'admin', '2021-08-22 16:21:14', 'admin', '2021-08-24 10:19:12', 'CAR-RENTAL677917181', 'Xe Camry 2.0G 2019, xe gia đình , số tự động, mới đi hơn 8000km, màu trắng, nội thất màu kem.\r\n', 'toyota_camry2019_4c_1.jpg', '72A-37870', 'Toyota Camry 2019', 1190000, 0, 14, 3);
INSERT INTO `oto` VALUES (130, 0, 'admin', '2021-08-22 16:21:55', 'admin', '2021-08-24 10:19:51', 'CAR-RENTAL562744960', 'Xe Toyota Altis 2017 số tự động\r\n', 'toyota_corollar2017_4c_3.jpg', '61A-76640', 'Toyota Corollar Altis G 2017', 900000, 0, 14, 3);
INSERT INTO `oto` VALUES (131, 0, 'admin', '2021-08-22 16:22:46', 'admin', '2021-08-24 10:20:59', 'CAR-RENTAL983440513', 'Corolla Altis số sàn đăng kí 12/2009\r\nXe rộng rãi, an toàn, tiện nghi, phù hợp cho gia đình đi du lịch\r\nXe gia đình mới đẹp, nội thất nguyên bản, sạch sẽ, bảo dưỡng thường xuyên, rửa xe miễn phí cho khách\r\nXe trang bị hệ thống cảm biến lùi, camera hành trình, hệ thống giải trí vs nhiều tiện nghi khác.\r\n', 'toyota_corollar2009_4c_3.jpg', '56P-0069', 'Toyota Corollar Altis G 2009', 610000, 0, 14, 3);
INSERT INTO `oto` VALUES (132, 0, 'admin', '2021-08-22 16:23:39', 'admin', '2021-08-24 10:22:08', 'CAR-RENTAL218994198', 'Toyota Corolla Cross 5 chỗ, gầm cao, số tự động, đăng kí tháng 12/2020.\r\nXe gia đình rất mới đẹp, Odo 2300km. Nội thất nguyên bản, sạch sẽ, bảo dưỡng, rửa xe thường xuyên.\r\nHàng ghế sau rộng rãi, cốp siêu rộng, Tiện nghi full options, rất phù hợp cho gia đình đi du lịch.\r\nXe trang bị 7 túi khí, hệ thống cảm biến cảnh báo trc,sau; đèn pha auto, cruise control, cam lùi, cam hành trình; màn hình giải trí tích hợp android auto/apple carplay, dán film cách nhiệt xịn xe siêu mát.\r\n', 'toyota_cross2020_4c_4.jpg', '51H-45273', 'Toyota Corollar Cross G 2020', 900000, 0, 14, 6);
INSERT INTO `oto` VALUES (133, 0, 'admin', '2021-08-22 16:24:26', 'admin', '2021-08-24 10:23:16', 'CAR-RENTAL574542944', 'SỐ SÀN SIÊU BỀN BỈ, SIÊU TIẾT KIỆM VÀ CỰC KỲ ĐÁNG TIN CẬY TRÊN MỌI HÀNH TRÌNH\r\nLà một trong những mẫu xe bán chạy nhất thị trường và liên tục dẫn đầu trong phân khúc SUV, Fortuner được nhiều khách hàng tin tưởng lựa chọn đồng hành trên mọi hành trình.\r\n\"\r\n', 'toyota_fortuner2021_7c_bac_2.jpg', '70A-15880', 'Toyota Fortuner 2021', 1200000, 0, 14, 9);
INSERT INTO `oto` VALUES (134, 0, 'admin', '2021-08-22 16:25:38', 'admin', '2021-08-24 10:23:50', 'CAR-RENTAL561569005', 'TOYOTA FORTUNER 2018\r\n', 'toyota_fortune2018_7c_2.jpg', '51G-75395', 'Toyota Fortuner 2018', 1050000, 0, 14, 8);
INSERT INTO `oto` VALUES (135, 0, 'admin', '2021-08-22 16:26:45', 'admin', '2021-08-24 10:24:34', 'CAR-RENTAL294446670', 'Xe đi mạnh mẽ tiết kiệm nhiên liệu\r\n', 'toyota_hilux2017_4c_2.jpg', '51D-61960', 'Toyota Hilux E 2017', 1000000, 0, 14, 12);
INSERT INTO `oto` VALUES (136, 0, 'admin', '2021-08-22 16:28:12', 'admin', '2021-08-24 10:25:07', 'CAR-RENTAL863463022', 'Toyota Innova E 2018\r\n', 'toyota_innova2018_7c_1.jpg', '51G-04083', 'Toyota Innova E 2018', 840000, 0, 14, 10);
INSERT INTO `oto` VALUES (137, 0, 'admin', '2021-08-22 16:29:33', 'admin', '2021-08-24 10:27:07', 'CAR-RENTAL942876833', 'Xe Toyota Innova bản Venture màu đỏ, xe gia đình mới sạch đẹp, đi là ghiền!\r\n', 'toyota_innova2017_7c_3.jpg', '51H-45765', 'Toyota Innova Venturer 2018', 900000, 0, 14, 10);
INSERT INTO `oto` VALUES (138, 0, 'admin', '2021-08-22 16:30:43', 'admin', '2021-08-24 10:27:54', 'CAR-RENTAL875300827', 'Xe Toyota Rush, đăng ký tháng 1/2019. Xe mới, sạch sẽ, bảo dưỡng định kỳ tại Toyota Đông Sài Gòn. Xe đi nhẹ nhàng, tiết kiệm nhiên liệu.\r\n', 'toyota_rush2019_7c_1.jpg', '35A-13164', 'Toyota Rush 2019', 850000, 0, 14, 9);
INSERT INTO `oto` VALUES (139, 0, 'admin', '2021-08-22 16:32:11', 'admin', '2021-08-24 10:28:26', 'CAR-RENTAL662670260', 'TOYOTA RUSH 2020\r\n', 'toyota_rush2020_4c_3.jpg', '51H-37007', 'Toyota Rush 2020', 900000, 0, 14, 1);
INSERT INTO `oto` VALUES (140, 0, 'admin', '2021-08-22 16:33:00', 'admin', '2021-08-24 10:29:05', 'CAR-RENTAL337829116', 'Xe mới đời 2020, xe có camera lùi, camera bên hông hai bên, có camera hành trình.\r\n', 'toyota_vios2020_4c_1.jpg', '61A-75339', 'Toyota Vios E 2020', 700000, 0, 14, 3);
INSERT INTO `oto` VALUES (141, 0, 'admin', '2021-08-22 16:33:50', 'admin', '2021-08-24 10:29:49', 'CAR-RENTAL389423089', 'TOYOTA VIOS phiên bản 2020, số Tự Động, 7 túi khí, 4 thắng đĩa.\r\nTiết kiệm xăng: chỉ khoảng 5L/100km.\r\n Nội thất bọc da sáng màu, sang trọng và sạch sẽ.\r\nTrang bị đầy đủ các hệ thống an toàn: Cân bằng điện tử, Chống cứng bó phanh ABS, Hỗ trợ phanh khẩn cấp BA, Phân phối lực phanh điện tử EBD, Cân bằng điện tử VSC, Khởi hành ngang dốc HAC, kiểm soát lực kéo chống trượt TRC, Cảm biến va chạm sau.\r\nTiện ích trên xe: Dẫn đường Vietmap, Camera hành trình, Lọc không khí, Bơm hơi điện.\r\n', 'toyota_vios2019_4c_1.jpg', '51H-58851', 'Toyota Vios E 2019', 700000, 0, 14, 3);
INSERT INTO `oto` VALUES (142, 0, 'admin', '2021-08-22 16:35:30', 'admin', '2021-08-24 10:31:02', 'CAR-RENTAL542995076', 'Toyota Wigo 2021 đăng kí tháng1/2021, mẫu HB đời mới nhất của Wigo trang bị camera de, cảm biến lùi, đề start/stop, màn hình đầy đủ. Xe bảo dưỡng định kì còn mùi xe mới, khoang rộng rãi so với các xe cùng phân khúc.\r\n', 'toyota_wigo2021_4c_4.jpg', '51H- 45892', 'Toyota Wigo 2021', 550000, 0, 14, 2);
INSERT INTO `oto` VALUES (143, 0, 'admin', '2021-08-22 16:38:25', 'admin', '2021-08-24 10:31:41', 'CAR-RENTAL141157438', 'Toyota wigo màu đen, số tự động sản xuất năm 2021.\r\n', 'toyota_wigo2020_4c_1.jpg', '50E-00562', 'Toyota Wigo 2020', 500000, 0, 14, 1);
INSERT INTO `oto` VALUES (144, 0, 'admin', '2021-08-22 16:39:26', 'admin', '2021-08-24 10:32:28', 'CAR-RENTAL220250419', 'TOYOTA YARIS 2019 mới và đẹp.\r\nXe rất mới, sạch sẽ, thơm tho.\r\nÂm thanh nghe là ghiền.\r\nXe gọn gàng, dễ dàng xoay trở trong phố đông,\r\n', 'toyota_yaris2018_4c_1.jpg', '51G-72544', 'Toyota Yaris G Hatchback 2018', 800000, 0, 14, 4);
INSERT INTO `oto` VALUES (145, 0, 'admin', '2021-08-22 16:40:22', 'admin', '2021-08-24 10:33:12', 'CAR-RENTAL306335928', 'Xe Vinfast Fadil bản Plus đăng kí tháng 1-2021 đã trang bị carmera hành trình A50, phim cách nhiệt.\r\nNội thất ghế da, camera lùi, cân bằng điện tử, tay lái trợ lực, khởi hành ngang dốc.\r\nXe gia đình đi nên rất sạch sẽ.\r\n', 'vinfast_fadil2020_4c_4.jpg', '51H-49245', 'Vinfast Fadil 2020', 700000, 0, 15, 2);
INSERT INTO `oto` VALUES (146, 0, 'admin', '2021-08-22 16:41:45', 'admin', '2021-08-24 10:33:49', 'CAR-RENTAL982630690', 'Vinfast Fadil bản nâng cấp màu trắng đăng ký tháng 02/2021.\r\nXe của gia đình dùng đi, nội thất sạch sẽ.\r\nVô lăng bộc da, ghế da, hệ thống đóng cửa tự động khi chạy, có cam lùi xe.\r\n', 'vinfast_fadil2021_4c_3.jpg', '67A-16668', 'Vinfast Fadil 2021', 650000, 0, 15, 2);
INSERT INTO `oto` VALUES (147, 0, 'admin', '2021-08-22 16:42:43', 'admin', '2021-08-24 10:34:25', 'CAR-RENTAL848024437', 'VINFAST LUX A 2.0 2021\r\n', 'vinfast_luxa2021_4c_1.jpg', '49A-40258', 'Vinfast Lux A 2.0 2021', 1150000, 0, 15, 3);
INSERT INTO `oto` VALUES (148, 0, 'admin', '2021-08-22 16:43:29', 'admin', '2021-08-24 10:35:03', 'CAR-RENTAL253193142', 'Xe Vinfast Lux A 2.0 đời 2020 mới 100%\r\n', 'vinfast_luxa2020_5c_2.jpg', '51H-45093', 'Vinfast Lux A 2.0 2020', 1500000, 0, 15, 5);
INSERT INTO `oto` VALUES (149, 0, 'admin', '2021-08-22 16:44:23', 'admin', '2021-08-24 10:35:35', 'CAR-RENTAL279602080', 'Xe Vinfast Lux SA.20 turbo\r\n', 'vinfast_luxsa2019_7c_1.jpg', '30G-22645', 'Vinfast Lux SA 2.0 2019', 1800000, 0, 15, 9);
INSERT INTO `oto` VALUES (150, 0, 'admin', '2021-08-22 16:45:12', 'admin', '2021-08-24 10:36:08', 'CAR-RENTAL506558182', 'Xe Vinfat Lux SA2.0 đăng ký 2021\r\n', 'vinfast_luxsa2021_7c_1.jpg', '51H-80780', 'Vinfast Lux SA 2.0 2021', 1450000, 0, 15, 9);

-- ----------------------------
-- Table structure for persistent_logins
-- ----------------------------
DROP TABLE IF EXISTS `persistent_logins`;
CREATE TABLE `persistent_logins`  (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `series` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_used` timestamp(0) NOT NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`series`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of persistent_logins
-- ----------------------------
INSERT INTO `persistent_logins` VALUES ('admin', 'A7NXETLD0624krkccElwlg==', 'O3Kw9oZVtlEqGU9iTn3U+Q==', '2021-08-24 10:11:16');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active_fag` int(11) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 0, 'admin', '2021-07-25 00:00:00', 'admin', '2021-07-25 00:00:00', 'ROLE_USER');
INSERT INTO `role` VALUES (2, 0, 'admin', '2021-07-25 00:00:00', 'admin', '2021-07-25 00:00:00', 'ROLE_ADMIN');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active_fag` int(11) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `role_id_id` bigint(20) NULL DEFAULT NULL,
  `user_info_id_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKkcj5o3e0pdog14e18g3v9pvy4`(`role_id_id`) USING BTREE,
  INDEX `FKl85arr77qbyao7jrenwbxrdul`(`user_info_id_id`) USING BTREE,
  CONSTRAINT `FKkcj5o3e0pdog14e18g3v9pvy4` FOREIGN KEY (`role_id_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKl85arr77qbyao7jrenwbxrdul` FOREIGN KEY (`user_info_id_id`) REFERENCES `user_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 0, 'admin', '2021-07-25 00:00:00', 'admin', '2021-07-25 00:00:00', '$2a$10$93F1YwKq2qmhKSIaKoaoB.J8YX3xr75N7PWxZWF0.zcZFGa1uQF2S', 0, 'admin', 2, 1);
INSERT INTO `user` VALUES (2, 0, 'admin', '2021-07-25 00:00:00', 'admin', '2021-07-25 00:00:00', '$2a$10$oFRBb2oMzpHIaaJWH0Rr.uvSai12c/YuibhsLTrbv2sxFy7mphbPe', 0, 'vantinh77', 1, 2);
INSERT INTO `user` VALUES (3, 0, 'admin', '2021-08-17 15:05:34', 'admin', '2021-08-17 15:05:34', '$2a$10$VSJ1TahjREAaAXzOgLlviu7K/bDHZFlSHsxYzFYyZWz2PPO2RuGDe', 0, 'admin123', 2, 3);
INSERT INTO `user` VALUES (4, 0, 'admin', '2021-08-17 15:47:39', 'admin', '2021-08-17 15:47:39', '$2a$10$s2VmNBeqxBmsJusvlwkhHOko/ydKu.JiGh4pckYQVQCegCDut/BFu', 0, 'demo', 2, 4);
INSERT INTO `user` VALUES (5, 0, 'admin', '2021-08-17 16:07:21', 'admin', '2021-08-17 16:07:21', '$2a$10$AJbgXkTU4DV9OiO7EFWpludXOOKX9HECRg7Q1atV6PwaKcvdQNbi.', 0, 'demo1', 2, 5);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active_fag` int(11) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `cmnd_cccd` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `gender` int(11) NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, 0, 'admin', '2021-07-25 00:00:00', 'admin', '2021-07-25 00:00:00', '215478777', 'Tây Sơn Bình Định', '1999-06-02', 'admin@gmail.com', 0, NULL, 'admin', '0398756117');
INSERT INTO `user_info` VALUES (2, 0, 'admin', '2021-07-25 00:00:00', 'admin', '2021-07-25 00:00:00', '123654788', 'Bình Định', '1999-06-02', 'tranvantinh@gmail.com', 0, NULL, 'Trần Văn Tình', '0398756117');
INSERT INTO `user_info` VALUES (3, 0, 'admin', '2021-08-17 15:05:34', 'admin', '2021-08-17 15:05:34', '2315646898', 'TP HCM', '2021-09-07', 'cuongabc5@gmail.com', 0, NULL, 'Khánh Trần', '0858050529');
INSERT INTO `user_info` VALUES (4, 0, 'admin', '2021-08-17 15:47:38', 'admin', '2021-08-17 15:47:38', '121263216', 'TP HCM', '2021-08-29', 'huy@gmail.com', 0, NULL, 'Khánh', '0702626056');
INSERT INTO `user_info` VALUES (5, 0, 'admin', '2021-08-17 16:07:21', 'admin', '2021-08-17 16:08:02', '132196463', 'Linh Trung, Thủ Đức, TP HCM', '2021-08-28', '17130099@st.hcmuaf.edu.vn', 0, 'IMG_20210627_150018.jpg', 'tran khanh', '0858050529');

SET FOREIGN_KEY_CHECKS = 1;
