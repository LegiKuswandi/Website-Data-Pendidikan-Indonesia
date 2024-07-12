/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_pendidikan

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-06-06 20:27:50
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tbutahuruf`
-- ----------------------------
DROP TABLE IF EXISTS `tbutahuruf`;
CREATE TABLE `tbutahuruf` (
  `id_buta_huruf` int(200) NOT NULL AUTO_INCREMENT,
  `persentase` float(50,2) DEFAULT NULL,
  `tahun` varchar(20) DEFAULT NULL,
  `id_provinsi` int(100) DEFAULT NULL,
  PRIMARY KEY (`id_buta_huruf`),
  KEY `fprovinsi` (`id_provinsi`),
  CONSTRAINT `fprovinsi` FOREIGN KEY (`id_provinsi`) REFERENCES `tprovinsi` (`id_provinsi`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tbutahuruf
-- ----------------------------
INSERT INTO `tbutahuruf` VALUES ('1', '0.07', '2020', '1');
INSERT INTO `tbutahuruf` VALUES ('2', '0.20', '2020', '2');
INSERT INTO `tbutahuruf` VALUES ('3', '0.12', '2020', '3');
INSERT INTO `tbutahuruf` VALUES ('4', '0.09', '2020', '4');
INSERT INTO `tbutahuruf` VALUES ('5', '0.26', '2020', '5');
INSERT INTO `tbutahuruf` VALUES ('6', '0.23', '2020', '6');
INSERT INTO `tbutahuruf` VALUES ('7', '0.19', '2020', '7');
INSERT INTO `tbutahuruf` VALUES ('8', '0.12', '2020', '8');
INSERT INTO `tbutahuruf` VALUES ('9', '0.68', '2020', '9');
INSERT INTO `tbutahuruf` VALUES ('10', '0.14', '2020', '10');
INSERT INTO `tbutahuruf` VALUES ('11', '0.10', '2020', '11');
INSERT INTO `tbutahuruf` VALUES ('12', '0.13', '2020', '12');
INSERT INTO `tbutahuruf` VALUES ('13', '0.30', '2020', '13');
INSERT INTO `tbutahuruf` VALUES ('14', '0.06', '2020', '14');
INSERT INTO `tbutahuruf` VALUES ('15', '1.00', '2020', '15');
INSERT INTO `tbutahuruf` VALUES ('16', '0.13', '2020', '16');
INSERT INTO `tbutahuruf` VALUES ('17', '0.13', '2020', '17');
INSERT INTO `tbutahuruf` VALUES ('18', '2.82', '2020', '18');
INSERT INTO `tbutahuruf` VALUES ('19', '2.73', '2020', '19');
INSERT INTO `tbutahuruf` VALUES ('20', '1.58', '2020', '20');
INSERT INTO `tbutahuruf` VALUES ('21', '0.12', '2020', '21');
INSERT INTO `tbutahuruf` VALUES ('22', '0.17', '2020', '22');
INSERT INTO `tbutahuruf` VALUES ('23', '0.20', '2020', '23');
INSERT INTO `tbutahuruf` VALUES ('24', '0.72', '2020', '24');
INSERT INTO `tbutahuruf` VALUES ('25', '0.10', '2020', '25');
INSERT INTO `tbutahuruf` VALUES ('26', '0.71', '2020', '26');
INSERT INTO `tbutahuruf` VALUES ('27', '1.88', '2020', '27');
INSERT INTO `tbutahuruf` VALUES ('28', '1.16', '2020', '28');
INSERT INTO `tbutahuruf` VALUES ('29', '0.34', '2020', '29');
INSERT INTO `tbutahuruf` VALUES ('30', '3.08', '2020', '30');
INSERT INTO `tbutahuruf` VALUES ('31', '0.55', '2020', '31');
INSERT INTO `tbutahuruf` VALUES ('32', '0.29', '2020', '32');
INSERT INTO `tbutahuruf` VALUES ('33', '1.82', '2020', '33');
INSERT INTO `tbutahuruf` VALUES ('34', '20.38', '2020', '34');
INSERT INTO `tbutahuruf` VALUES ('35', '0.06', '2021', '1');
INSERT INTO `tbutahuruf` VALUES ('36', '0.17', '2021', '2');
INSERT INTO `tbutahuruf` VALUES ('37', '0.10', '2021', '3');
INSERT INTO `tbutahuruf` VALUES ('38', '0.09', '2021', '4');
INSERT INTO `tbutahuruf` VALUES ('39', '0.24', '2021', '5');
INSERT INTO `tbutahuruf` VALUES ('40', '0.20', '2021', '6');
INSERT INTO `tbutahuruf` VALUES ('41', '0.16', '2021', '7');
INSERT INTO `tbutahuruf` VALUES ('42', '0.11', '2021', '8');
INSERT INTO `tbutahuruf` VALUES ('43', '0.64', '2021', '9');
INSERT INTO `tbutahuruf` VALUES ('44', '0.11', '2021', '10');
INSERT INTO `tbutahuruf` VALUES ('45', '0.09', '2021', '11');
INSERT INTO `tbutahuruf` VALUES ('46', '0.12', '2021', '12');
INSERT INTO `tbutahuruf` VALUES ('47', '0.25', '2021', '13');
INSERT INTO `tbutahuruf` VALUES ('48', '0.07', '2021', '14');
INSERT INTO `tbutahuruf` VALUES ('49', '0.94', '2021', '15');
INSERT INTO `tbutahuruf` VALUES ('50', '0.14', '2021', '16');
INSERT INTO `tbutahuruf` VALUES ('51', '0.09', '2021', '17');
INSERT INTO `tbutahuruf` VALUES ('52', '2.70', '2021', '18');
INSERT INTO `tbutahuruf` VALUES ('53', '2.13', '2021', '19');
INSERT INTO `tbutahuruf` VALUES ('54', '1.43', '2021', '20');
INSERT INTO `tbutahuruf` VALUES ('55', '0.09', '2021', '21');
INSERT INTO `tbutahuruf` VALUES ('56', '0.15', '2021', '22');
INSERT INTO `tbutahuruf` VALUES ('57', '0.14', '2021', '23');
INSERT INTO `tbutahuruf` VALUES ('58', '0.61', '2021', '24');
INSERT INTO `tbutahuruf` VALUES ('59', '0.09', '2021', '25');
INSERT INTO `tbutahuruf` VALUES ('60', '0.67', '2021', '26');
INSERT INTO `tbutahuruf` VALUES ('61', '1.71', '2021', '27');
INSERT INTO `tbutahuruf` VALUES ('62', '1.10', '2021', '28');
INSERT INTO `tbutahuruf` VALUES ('63', '0.28', '2021', '29');
INSERT INTO `tbutahuruf` VALUES ('64', '2.67', '2021', '30');
INSERT INTO `tbutahuruf` VALUES ('65', '0.52', '2021', '31');
INSERT INTO `tbutahuruf` VALUES ('66', '0.26', '2021', '32');
INSERT INTO `tbutahuruf` VALUES ('67', '1.39', '2021', '33');
INSERT INTO `tbutahuruf` VALUES ('68', '19.03', '2021', '34');
INSERT INTO `tbutahuruf` VALUES ('69', '0.13', '2022', '1');
INSERT INTO `tbutahuruf` VALUES ('70', '0.24', '2022', '2');
INSERT INTO `tbutahuruf` VALUES ('71', '0.12', '2022', '3');
INSERT INTO `tbutahuruf` VALUES ('72', '0.07', '2022', '4');
INSERT INTO `tbutahuruf` VALUES ('73', '0.18', '2022', '5');
INSERT INTO `tbutahuruf` VALUES ('74', '0.27', '2022', '6');
INSERT INTO `tbutahuruf` VALUES ('75', '0.25', '2022', '7');
INSERT INTO `tbutahuruf` VALUES ('76', '0.28', '2022', '8');
INSERT INTO `tbutahuruf` VALUES ('77', '0.42', '2022', '9');
INSERT INTO `tbutahuruf` VALUES ('78', '0.15', '2022', '10');
INSERT INTO `tbutahuruf` VALUES ('79', '0.08', '2022', '11');
INSERT INTO `tbutahuruf` VALUES ('80', '0.13', '2022', '12');
INSERT INTO `tbutahuruf` VALUES ('81', '0.74', '2022', '13');
INSERT INTO `tbutahuruf` VALUES ('82', '0.22', '2022', '14');
INSERT INTO `tbutahuruf` VALUES ('83', '0.94', '2022', '15');
INSERT INTO `tbutahuruf` VALUES ('84', '0.33', '2022', '16');
INSERT INTO `tbutahuruf` VALUES ('85', '0.40', '2022', '17');
INSERT INTO `tbutahuruf` VALUES ('86', '2.79', '2022', '18');
INSERT INTO `tbutahuruf` VALUES ('87', '1.75', '2022', '19');
INSERT INTO `tbutahuruf` VALUES ('88', '1.46', '2022', '20');
INSERT INTO `tbutahuruf` VALUES ('89', '0.08', '2022', '21');
INSERT INTO `tbutahuruf` VALUES ('90', '0.24', '2022', '22');
INSERT INTO `tbutahuruf` VALUES ('91', '0.24', '2022', '23');
INSERT INTO `tbutahuruf` VALUES ('92', '0.77', '2022', '24');
INSERT INTO `tbutahuruf` VALUES ('93', '0.07', '2022', '25');
INSERT INTO `tbutahuruf` VALUES ('94', '0.58', '2022', '26');
INSERT INTO `tbutahuruf` VALUES ('95', '1.77', '2022', '27');
INSERT INTO `tbutahuruf` VALUES ('96', '0.82', '2022', '28');
INSERT INTO `tbutahuruf` VALUES ('97', '0.60', '2022', '29');
INSERT INTO `tbutahuruf` VALUES ('98', '1.85', '2022', '30');
INSERT INTO `tbutahuruf` VALUES ('99', '0.31', '2022', '31');
INSERT INTO `tbutahuruf` VALUES ('100', '0.16', '2022', '32');
INSERT INTO `tbutahuruf` VALUES ('101', '0.98', '2022', '33');
INSERT INTO `tbutahuruf` VALUES ('102', '15.09', '2022', '34');

-- ----------------------------
-- Table structure for `tebook`
-- ----------------------------
DROP TABLE IF EXISTS `tebook`;
CREATE TABLE `tebook` (
  `id_ebook` int(10) NOT NULL AUTO_INCREMENT,
  `nama_ebook` varchar(40) DEFAULT '',
  `ebook` varchar(40) DEFAULT '',
  `id_jenjang` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_ebook`),
  KEY `fjenjang` (`id_jenjang`),
  CONSTRAINT `fjenjang` FOREIGN KEY (`id_jenjang`) REFERENCES `tjenjang` (`id_jenjang`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tebook
-- ----------------------------
INSERT INTO `tebook` VALUES ('2', 'Seni Rupa Kelas 1', 'Seni-Rupa-BG-KLS-I.pdf', '1');
INSERT INTO `tebook` VALUES ('3', 'PPKn Kelas 1', 'PPKn-BG-Kls I.pdf', '1');
INSERT INTO `tebook` VALUES ('4', 'Islam Kelas 1', 'Islam-BS-KLS-I.pdf', '1');
INSERT INTO `tebook` VALUES ('5', 'Bahasa Ingris Kelas 1', 'Bahasa-Inggris-BS-KLS-I.pdf', '1');
INSERT INTO `tebook` VALUES ('6', 'Bahasa Indonesia Kelas 1', 'Bahasa-Indonesia-BS-KLS-I.pdf', '1');
INSERT INTO `tebook` VALUES ('7', 'Matematika Kelas 1', 'Matematika-BS-KLS-I.pdf', '1');
INSERT INTO `tebook` VALUES ('8', 'Seni Rupa Kelas 7', 'Seni-Rupa_BG-KLS-VII.pdf', '2');
INSERT INTO `tebook` VALUES ('9', 'PPKn Kelas 7', 'PPKN-BS-KLS-VII.pdf', '2');
INSERT INTO `tebook` VALUES ('10', 'Bahasa Inggris Kelas 7', 'Bahasa-Inggris-BS-KLS-VII.pdf', '2');
INSERT INTO `tebook` VALUES ('11', 'Islam Kelas 7', 'Islam-BS-KLS-VII.pdf', '2');
INSERT INTO `tebook` VALUES ('12', 'Matematika Kelas 7', 'Matematika-BS-KLS-VII.pdf', '2');
INSERT INTO `tebook` VALUES ('13', 'IPS Kelas 7', 'IPS-BS-KLS-VII.pdf', '2');
INSERT INTO `tebook` VALUES ('14', 'IPA Kelas 7', 'IPA-BS-KLS-VII.pdf', '2');
INSERT INTO `tebook` VALUES ('15', 'Bahasa Indonesia Kelas 7', 'Bahasa-Indonesia-BS-KLS-VII.pdf', '2');
INSERT INTO `tebook` VALUES ('16', 'Seni Rupa Kelas 10', 'Seni-Rupa-BG-KLS-X.pdf', '3');
INSERT INTO `tebook` VALUES ('17', 'Bahasa Inggris Kelas 10', 'Bahasa-Inggris-BS-KLS-X.pdf', '3');
INSERT INTO `tebook` VALUES ('18', 'Sejarah Kelas 10', 'Sejarah-BS-KLS-X.pdf', '3');
INSERT INTO `tebook` VALUES ('19', 'PPKN Kelas 10', 'PPKN-BS-KLS-X.pdf', '3');
INSERT INTO `tebook` VALUES ('21', 'MTK Kelas 10', 'Matematika-BS-KLS-X.pdf', '3');

-- ----------------------------
-- Table structure for `tfasilitas`
-- ----------------------------
DROP TABLE IF EXISTS `tfasilitas`;
CREATE TABLE `tfasilitas` (
  `id_fasilitas` int(10) NOT NULL AUTO_INCREMENT,
  `nama_fasilitas` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_fasilitas`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tfasilitas
-- ----------------------------
INSERT INTO `tfasilitas` VALUES ('1', 'Kelas');
INSERT INTO `tfasilitas` VALUES ('2', 'Lapangan Olahraga');
INSERT INTO `tfasilitas` VALUES ('3', 'Toilet');
INSERT INTO `tfasilitas` VALUES ('4', 'Lab Komputer');
INSERT INTO `tfasilitas` VALUES ('6', 'Ruang Guru');
INSERT INTO `tfasilitas` VALUES ('7', 'Tempat Ibadah');
INSERT INTO `tfasilitas` VALUES ('8', 'Perpustakaan');

-- ----------------------------
-- Table structure for `tfs`
-- ----------------------------
DROP TABLE IF EXISTS `tfs`;
CREATE TABLE `tfs` (
  `id_fs` int(100) NOT NULL AUTO_INCREMENT,
  `id_fasilitas` int(100) DEFAULT NULL,
  `id_lembaga` int(100) DEFAULT NULL,
  PRIMARY KEY (`id_fs`),
  KEY `fsekolah` (`id_lembaga`),
  KEY `ffasil` (`id_fasilitas`),
  CONSTRAINT `ffasil` FOREIGN KEY (`id_fasilitas`) REFERENCES `tfasilitas` (`id_fasilitas`),
  CONSTRAINT `fsekolah` FOREIGN KEY (`id_lembaga`) REFERENCES `tlembaga` (`id_lembaga`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tfs
-- ----------------------------
INSERT INTO `tfs` VALUES ('1', '1', '1');
INSERT INTO `tfs` VALUES ('2', '1', '2');
INSERT INTO `tfs` VALUES ('3', '1', '3');
INSERT INTO `tfs` VALUES ('4', '1', '4');
INSERT INTO `tfs` VALUES ('7', '1', '5');
INSERT INTO `tfs` VALUES ('8', '1', '6');
INSERT INTO `tfs` VALUES ('9', '1', '7');
INSERT INTO `tfs` VALUES ('13', '1', '8');
INSERT INTO `tfs` VALUES ('14', '1', '9');
INSERT INTO `tfs` VALUES ('15', '1', '10');
INSERT INTO `tfs` VALUES ('16', '1', '11');
INSERT INTO `tfs` VALUES ('17', '1', '12');
INSERT INTO `tfs` VALUES ('18', '1', '13');
INSERT INTO `tfs` VALUES ('19', '1', '14');
INSERT INTO `tfs` VALUES ('20', '1', '15');
INSERT INTO `tfs` VALUES ('21', '1', '16');
INSERT INTO `tfs` VALUES ('22', '1', '17');
INSERT INTO `tfs` VALUES ('23', '1', '18');
INSERT INTO `tfs` VALUES ('24', '1', '19');
INSERT INTO `tfs` VALUES ('25', '1', '20');
INSERT INTO `tfs` VALUES ('26', '1', '21');
INSERT INTO `tfs` VALUES ('27', '1', '22');
INSERT INTO `tfs` VALUES ('28', '1', '23');
INSERT INTO `tfs` VALUES ('29', '1', '24');
INSERT INTO `tfs` VALUES ('30', '3', '1');
INSERT INTO `tfs` VALUES ('31', '6', '1');
INSERT INTO `tfs` VALUES ('32', '8', '2');
INSERT INTO `tfs` VALUES ('33', '3', '2');
INSERT INTO `tfs` VALUES ('34', '6', '2');
INSERT INTO `tfs` VALUES ('35', '3', '3');
INSERT INTO `tfs` VALUES ('36', '6', '3');
INSERT INTO `tfs` VALUES ('37', '8', '4');
INSERT INTO `tfs` VALUES ('38', '3', '4');
INSERT INTO `tfs` VALUES ('39', '6', '4');
INSERT INTO `tfs` VALUES ('40', '3', '5');
INSERT INTO `tfs` VALUES ('41', '6', '5');
INSERT INTO `tfs` VALUES ('42', '3', '6');
INSERT INTO `tfs` VALUES ('43', '6', '6');
INSERT INTO `tfs` VALUES ('44', '3', '7');
INSERT INTO `tfs` VALUES ('45', '8', '7');
INSERT INTO `tfs` VALUES ('46', '6', '8');
INSERT INTO `tfs` VALUES ('47', '3', '8');
INSERT INTO `tfs` VALUES ('48', '7', '9');
INSERT INTO `tfs` VALUES ('49', '6', '9');
INSERT INTO `tfs` VALUES ('50', '3', '9');
INSERT INTO `tfs` VALUES ('51', '3', '10');
INSERT INTO `tfs` VALUES ('52', '6', '10');
INSERT INTO `tfs` VALUES ('53', '6', '11');
INSERT INTO `tfs` VALUES ('54', '3', '12');
INSERT INTO `tfs` VALUES ('55', '6', '12');
INSERT INTO `tfs` VALUES ('56', '8', '12');
INSERT INTO `tfs` VALUES ('57', '3', '13');
INSERT INTO `tfs` VALUES ('58', '6', '13');
INSERT INTO `tfs` VALUES ('59', '2', '14');
INSERT INTO `tfs` VALUES ('60', '6', '14');
INSERT INTO `tfs` VALUES ('61', '3', '14');
INSERT INTO `tfs` VALUES ('62', '3', '15');
INSERT INTO `tfs` VALUES ('63', '6', '15');
INSERT INTO `tfs` VALUES ('64', '2', '16');
INSERT INTO `tfs` VALUES ('65', '3', '16');
INSERT INTO `tfs` VALUES ('66', '6', '16');
INSERT INTO `tfs` VALUES ('67', '3', '17');
INSERT INTO `tfs` VALUES ('68', '6', '17');
INSERT INTO `tfs` VALUES ('69', '3', '18');
INSERT INTO `tfs` VALUES ('70', '6', '18');
INSERT INTO `tfs` VALUES ('71', '3', '19');
INSERT INTO `tfs` VALUES ('72', '6', '19');
INSERT INTO `tfs` VALUES ('73', '8', '19');
INSERT INTO `tfs` VALUES ('74', '3', '20');
INSERT INTO `tfs` VALUES ('75', '6', '20');
INSERT INTO `tfs` VALUES ('76', '3', '21');
INSERT INTO `tfs` VALUES ('77', '6', '21');
INSERT INTO `tfs` VALUES ('78', '2', '21');
INSERT INTO `tfs` VALUES ('79', '6', '22');
INSERT INTO `tfs` VALUES ('80', '3', '22');
INSERT INTO `tfs` VALUES ('81', '3', '23');
INSERT INTO `tfs` VALUES ('82', '6', '23');
INSERT INTO `tfs` VALUES ('84', '6', '24');
INSERT INTO `tfs` VALUES ('85', '3', '24');
INSERT INTO `tfs` VALUES ('105', '1', '54');
INSERT INTO `tfs` VALUES ('106', '2', '54');
INSERT INTO `tfs` VALUES ('107', '3', '54');
INSERT INTO `tfs` VALUES ('108', '6', '54');

-- ----------------------------
-- Table structure for `tjenjang`
-- ----------------------------
DROP TABLE IF EXISTS `tjenjang`;
CREATE TABLE `tjenjang` (
  `id_jenjang` int(10) NOT NULL AUTO_INCREMENT,
  `jenjang` varchar(20) DEFAULT '',
  PRIMARY KEY (`id_jenjang`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tjenjang
-- ----------------------------
INSERT INTO `tjenjang` VALUES ('1', 'SD/MI');
INSERT INTO `tjenjang` VALUES ('2', 'SMP/Mts');
INSERT INTO `tjenjang` VALUES ('3', 'SMA/SMK/MAN');
INSERT INTO `tjenjang` VALUES ('5', 'Umum');
INSERT INTO `tjenjang` VALUES ('6', 'TK/PAUD');

-- ----------------------------
-- Table structure for `tlembaga`
-- ----------------------------
DROP TABLE IF EXISTS `tlembaga`;
CREATE TABLE `tlembaga` (
  `id_lembaga` int(6) NOT NULL AUTO_INCREMENT,
  `nama_lembaga` varchar(30) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `jumlah_pengajar` int(30) DEFAULT NULL,
  `jumlah_murid` int(30) DEFAULT NULL,
  `id_provinsi` int(20) DEFAULT NULL,
  `id_jenjang` int(30) DEFAULT NULL,
  PRIMARY KEY (`id_lembaga`),
  KEY `f_prov` (`id_provinsi`),
  KEY `f_jenjang` (`id_jenjang`),
  CONSTRAINT `f_jenjang` FOREIGN KEY (`id_jenjang`) REFERENCES `tjenjang` (`id_jenjang`),
  CONSTRAINT `f_prov` FOREIGN KEY (`id_provinsi`) REFERENCES `tprovinsi` (`id_provinsi`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tlembaga
-- ----------------------------
INSERT INTO `tlembaga` VALUES ('1', 'SD NEGERI GENENG I MARGOMULYO', 'Jl. Margomulyo Selatan', '8', '212', '15', '1');
INSERT INTO `tlembaga` VALUES ('2', 'SMP NEGERI SATU ATAP SOKO TEMA', 'Jl. Temayang Pusat', '15', '234', '15', '2');
INSERT INTO `tlembaga` VALUES ('3', 'SD NEGERI 1 LAHUMOKO', 'Jl. Lahumoko Barat', '6', '250', '28', '1');
INSERT INTO `tlembaga` VALUES ('4', 'SMPN 1 KAMBOWA', 'Jl. Kambowa', '13', '276', '28', '2');
INSERT INTO `tlembaga` VALUES ('5', 'SMAN 1 DARUL AMAN', 'Jl. Darul Timur', '26', '320', '1', '3');
INSERT INTO `tlembaga` VALUES ('6', 'SDN BAGOK PANAH LHEE', 'Jl. Bagok Panah', '7', '160', '1', '1');
INSERT INTO `tlembaga` VALUES ('7', 'SD NEGERI KENDATE', 'Jl. Pendidikan', '6', '170', '34', '1');
INSERT INTO `tlembaga` VALUES ('8', 'SMP NEGERI 1 DEPAPRE', 'Jl. Teluk Waiya', '21', '256', '34', '2');
INSERT INTO `tlembaga` VALUES ('9', 'SD NEGERI 03 LANGSAT PERMAI', 'Jl. Hang Tuah Langsat Permai', '8', '189', '4', '1');
INSERT INTO `tlembaga` VALUES ('10', 'SMA NEGERI 2 BUNGARAYA', 'Jl. Sultan Sarif Kasim Desa Temusai', '26', '315', '4', '3');
INSERT INTO `tlembaga` VALUES ('11', 'SMP NEGERI 19 HALMAHERA TENGAH', 'JALAN TIBUTY', '19', '256', '32', '2');
INSERT INTO `tlembaga` VALUES ('12', 'SD NEGERI YEISOWO', 'Jl. Sapulette Desa Yeisowo', '8', '178', '32', '1');
INSERT INTO `tlembaga` VALUES ('13', 'SMA NEGERI 2 MALINAU SELATAN', 'Jl. Seluwing RT. 003 Desa Laban Nyarit', '28', '357', '24', '3');
INSERT INTO `tlembaga` VALUES ('14', 'SD NEGERI 006 MALINAU SELATAN', 'Jl. Lalau Tah RT. 03 Desa Sengayan Kecamatan Malinau Selatan', '8', '190', '24', '1');
INSERT INTO `tlembaga` VALUES ('15', 'SMPN 07 BENGKULU UTARA', 'Jl. Raya Desa Taba Baru', '17', '256', '7', '2');
INSERT INTO `tlembaga` VALUES ('16', 'SDN 022 BENGKULU UTARA', 'Jl. Talang Rasau', '6', '145', '7', '1');
INSERT INTO `tlembaga` VALUES ('17', 'SD NEGERI KENARI', 'Jalan Basuki Rachmat Kefamenanu', '6', '167', '16', '1');
INSERT INTO `tlembaga` VALUES ('18', 'SMP NEGERI NEONBAT', 'Jalan El Tari RT 09 RW 03', '18', '278', '19', '2');
INSERT INTO `tlembaga` VALUES ('19', 'SMA Negeri 3 Koba', 'Jalan Simpang Jongkong Desa Nibung Kecamatan Koba Kabupaten Bangka Tengah', '27', '345', '9', '3');
INSERT INTO `tlembaga` VALUES ('20', 'SD NEGERI 13 KOBA', 'Jl. Raya Koba Desa Kurau Timur', '8', '176', '9', '1');
INSERT INTO `tlembaga` VALUES ('21', 'SD NEGERI ARGA MULYA', 'Jl.Diponegoro', '7', '165', '21', '1');
INSERT INTO `tlembaga` VALUES ('22', 'SMP NEGERI 4 BULIK', 'Jl. Bukit Hibul Timur No 128 Kec. Bulik, Kab Lamandau', '18', '254', '21', '2');
INSERT INTO `tlembaga` VALUES ('23', 'SMAN 1 KATIBUNG', 'Jln Tanjung Jati No.09 Kec. Katibung', '27', '342', '8', '3');
INSERT INTO `tlembaga` VALUES ('24', 'SDN 1 TANJUNG RATU', 'Jl. Kupang Curup', '8', '170', '8', '1');
INSERT INTO `tlembaga` VALUES ('54', 'SMPN 2 Nagrak', 'jln nagrak', '22', '250', '12', '2');
INSERT INTO `tlembaga` VALUES ('57', 'SMP NEGERI SATU ATAP SOKO TEMA', 'Jl. Temayang Pusat', '19', '234', '15', '2');

-- ----------------------------
-- Table structure for `tlogin`
-- ----------------------------
DROP TABLE IF EXISTS `tlogin`;
CREATE TABLE `tlogin` (
  `id_login` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT 'user',
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tlogin
-- ----------------------------
INSERT INTO `tlogin` VALUES ('3', 'Asep Sunandar', 'wawangamingereksi@gmail.ccom', 'bffa783a022fe2d98692014dda6d7a4c', 'user');
INSERT INTO `tlogin` VALUES ('5', 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin');
INSERT INTO `tlogin` VALUES ('6', 'legi', 'legi@gamil.com', 'be8fe40aa66df12b2877463052881ae4', 'admin');
INSERT INTO `tlogin` VALUES ('7', 'Rifanny', 'r@gmail.com', '5e5704758c18b9a9fc6bda99f5a31787', 'user');
INSERT INTO `tlogin` VALUES ('8', 'Fahrizal', 'ijol@gmail.com', 'cab39d587d2f2a327dd5709a6eb4e645', 'user');
INSERT INTO `tlogin` VALUES ('9', 'Legi Kuswandi', 'kuswandi@gmail.com', '4bcc5e4bdc7757ad9e0a0f62adafeded', 'user');
INSERT INTO `tlogin` VALUES ('10', 'Rapi Arsalan', 'rapi@gmail.com', 'e31c5a0181a5e1fe184484d900cc7811', 'user');

-- ----------------------------
-- Table structure for `tpartisipasi`
-- ----------------------------
DROP TABLE IF EXISTS `tpartisipasi`;
CREATE TABLE `tpartisipasi` (
  `id_partisipasi` bigint(50) NOT NULL AUTO_INCREMENT,
  `angka_partisipasi_sekolah` float(50,2) DEFAULT NULL,
  `angka_partisipasi_kasar` float(50,2) DEFAULT NULL,
  `angka_partisipasi_murni` float(50,2) DEFAULT NULL,
  `tahun_partisipasi` int(50) DEFAULT NULL,
  `id_provinsi` int(50) DEFAULT NULL,
  `id_rentang` int(50) DEFAULT NULL,
  PRIMARY KEY (`id_partisipasi`),
  KEY `fprov` (`id_provinsi`),
  KEY `frentang` (`id_rentang`),
  KEY `idx_tahun_partisipasi` (`tahun_partisipasi`),
  CONSTRAINT `fprov` FOREIGN KEY (`id_provinsi`) REFERENCES `tprovinsi` (`id_provinsi`),
  CONSTRAINT `frentang` FOREIGN KEY (`id_rentang`) REFERENCES `tjenjang` (`id_jenjang`)
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tpartisipasi
-- ----------------------------
INSERT INTO `tpartisipasi` VALUES ('1', '99.84', '108.70', '99.03', '2020', '1', '1');
INSERT INTO `tpartisipasi` VALUES ('2', '99.44', '108.53', '97.73', '2020', '2', '1');
INSERT INTO `tpartisipasi` VALUES ('3', '99.61', '108.68', '98.80', '2020', '3', '1');
INSERT INTO `tpartisipasi` VALUES ('4', '99.53', '105.89', '97.73', '2020', '4', '1');
INSERT INTO `tpartisipasi` VALUES ('5', '99.82', '109.39', '99.11', '2020', '5', '1');
INSERT INTO `tpartisipasi` VALUES ('6', '99.71', '111.58', '97.91', '2020', '6', '1');
INSERT INTO `tpartisipasi` VALUES ('7', '99.78', '109.22', '98.65', '2020', '7', '1');
INSERT INTO `tpartisipasi` VALUES ('8', '99.74', '105.93', '99.16', '2020', '8', '1');
INSERT INTO `tpartisipasi` VALUES ('9', '99.70', '107.43', '97.73', '2020', '9', '1');
INSERT INTO `tpartisipasi` VALUES ('10', '99.55', '106.31', '99.16', '2020', '10', '1');
INSERT INTO `tpartisipasi` VALUES ('11', '99.64', '103.43', '98.05', '2020', '11', '1');
INSERT INTO `tpartisipasi` VALUES ('12', '99.66', '104.72', '98.37', '2020', '12', '1');
INSERT INTO `tpartisipasi` VALUES ('13', '99.73', '106.32', '97.90', '2020', '13', '1');
INSERT INTO `tpartisipasi` VALUES ('14', '99.89', '105.96', '99.59', '2020', '14', '1');
INSERT INTO `tpartisipasi` VALUES ('15', '99.54', '104.35', '97.99', '2020', '15', '1');
INSERT INTO `tpartisipasi` VALUES ('16', '99.40', '107.24', '97.95', '2020', '16', '1');
INSERT INTO `tpartisipasi` VALUES ('17', '99.57', '102.87', '96.84', '2020', '17', '1');
INSERT INTO `tpartisipasi` VALUES ('18', '99.52', '107.02', '98.78', '2020', '18', '1');
INSERT INTO `tpartisipasi` VALUES ('19', '98.57', '113.40', '96.09', '2020', '19', '1');
INSERT INTO `tpartisipasi` VALUES ('20', '98.60', '111.53', '97.36', '2020', '20', '1');
INSERT INTO `tpartisipasi` VALUES ('21', '99.49', '108.49', '99.11', '2020', '21', '1');
INSERT INTO `tpartisipasi` VALUES ('22', '99.48', '107.28', '98.76', '2020', '22', '1');
INSERT INTO `tpartisipasi` VALUES ('23', '99.73', '105.75', '98.44', '2020', '23', '1');
INSERT INTO `tpartisipasi` VALUES ('24', '98.94', '100.54', '93.46', '2020', '24', '1');
INSERT INTO `tpartisipasi` VALUES ('25', '99.59', '106.62', '95.13', '2020', '25', '1');
INSERT INTO `tpartisipasi` VALUES ('26', '98.38', '103.95', '93.24', '2020', '26', '1');
INSERT INTO `tpartisipasi` VALUES ('27', '99.25', '106.99', '97.98', '2020', '27', '1');
INSERT INTO `tpartisipasi` VALUES ('28', '99.10', '107.97', '97.70', '2020', '28', '1');
INSERT INTO `tpartisipasi` VALUES ('29', '98.92', '109.48', '98.50', '2020', '29', '1');
INSERT INTO `tpartisipasi` VALUES ('30', '98.33', '106.05', '95.80', '2020', '30', '1');
INSERT INTO `tpartisipasi` VALUES ('31', '99.50', '110.08', '96.85', '2020', '31', '1');
INSERT INTO `tpartisipasi` VALUES ('32', '99.04', '108.71', '97.21', '2020', '32', '1');
INSERT INTO `tpartisipasi` VALUES ('33', '97.89', '110.17', '93.88', '2020', '33', '1');
INSERT INTO `tpartisipasi` VALUES ('34', '82.99', '91.27', '79.34', '2020', '34', '1');
INSERT INTO `tpartisipasi` VALUES ('36', '99.67', '108.10', '98.95', '2021', '1', '1');
INSERT INTO `tpartisipasi` VALUES ('37', '99.32', '107.85', '97.69', '2021', '2', '1');
INSERT INTO `tpartisipasi` VALUES ('38', '99.61', '108.66', '98.82', '2021', '3', '1');
INSERT INTO `tpartisipasi` VALUES ('39', '99.65', '105.52', '97.85', '2021', '4', '1');
INSERT INTO `tpartisipasi` VALUES ('40', '99.66', '109.48', '99.41', '2021', '5', '1');
INSERT INTO `tpartisipasi` VALUES ('41', '99.65', '111.39', '98.00', '2021', '6', '1');
INSERT INTO `tpartisipasi` VALUES ('42', '99.76', '109.31', '98.61', '2021', '7', '1');
INSERT INTO `tpartisipasi` VALUES ('43', '99.53', '105.63', '99.10', '2021', '8', '1');
INSERT INTO `tpartisipasi` VALUES ('44', '99.47', '107.16', '97.89', '2021', '9', '1');
INSERT INTO `tpartisipasi` VALUES ('45', '99.62', '106.60', '99.26', '2021', '10', '1');
INSERT INTO `tpartisipasi` VALUES ('46', '99.53', '103.17', '98.22', '2021', '11', '1');
INSERT INTO `tpartisipasi` VALUES ('47', '99.50', '104.57', '98.37', '2021', '12', '1');
INSERT INTO `tpartisipasi` VALUES ('48', '99.66', '106.40', '98.22', '2021', '13', '1');
INSERT INTO `tpartisipasi` VALUES ('49', '99.70', '105.15', '99.44', '2021', '14', '1');
INSERT INTO `tpartisipasi` VALUES ('50', '99.40', '104.52', '97.90', '2021', '15', '1');
INSERT INTO `tpartisipasi` VALUES ('51', '99.45', '106.91', '98.15', '2021', '16', '1');
INSERT INTO `tpartisipasi` VALUES ('52', '99.70', '103.09', '97.20', '2021', '17', '1');
INSERT INTO `tpartisipasi` VALUES ('53', '99.52', '107.23', '98.81', '2021', '18', '1');
INSERT INTO `tpartisipasi` VALUES ('54', '98.42', '113.55', '96.04', '2021', '19', '1');
INSERT INTO `tpartisipasi` VALUES ('55', '98.64', '111.01', '97.42', '2021', '20', '1');
INSERT INTO `tpartisipasi` VALUES ('56', '99.55', '108.21', '99.01', '2021', '21', '1');
INSERT INTO `tpartisipasi` VALUES ('57', '99.38', '107.14', '98.94', '2021', '22', '1');
INSERT INTO `tpartisipasi` VALUES ('58', '99.60', '105.26', '98.36', '2021', '23', '1');
INSERT INTO `tpartisipasi` VALUES ('59', '98.67', '99.78', '93.38', '2021', '24', '1');
INSERT INTO `tpartisipasi` VALUES ('60', '99.37', '106.56', '95.39', '2021', '25', '1');
INSERT INTO `tpartisipasi` VALUES ('61', '98.50', '103.68', '93.33', '2021', '26', '1');
INSERT INTO `tpartisipasi` VALUES ('62', '99.29', '106.85', '98.26', '2021', '27', '1');
INSERT INTO `tpartisipasi` VALUES ('63', '99.16', '108.22', '98.15', '2021', '28', '1');
INSERT INTO `tpartisipasi` VALUES ('64', '99.02', '108.44', '98.65', '2021', '29', '1');
INSERT INTO `tpartisipasi` VALUES ('65', '98.19', '105.09', '95.68', '2021', '30', '1');
INSERT INTO `tpartisipasi` VALUES ('66', '99.52', '110.79', '96.92', '2021', '31', '1');
INSERT INTO `tpartisipasi` VALUES ('67', '98.84', '108.07', '97.20', '2021', '32', '1');
INSERT INTO `tpartisipasi` VALUES ('68', '98.08', '111.02', '94.09', '2021', '33', '1');
INSERT INTO `tpartisipasi` VALUES ('69', '83.43', '93.07', '80.38', '2021', '34', '1');
INSERT INTO `tpartisipasi` VALUES ('70', '99.44', '108.34', '99.07', '2022', '1', '1');
INSERT INTO `tpartisipasi` VALUES ('71', '99.50', '108.31', '98.00', '2022', '2', '1');
INSERT INTO `tpartisipasi` VALUES ('72', '99.55', '108.47', '98.80', '2022', '3', '1');
INSERT INTO `tpartisipasi` VALUES ('73', '99.61', '105.82', '97.80', '2022', '4', '1');
INSERT INTO `tpartisipasi` VALUES ('74', '99.33', '109.55', '99.33', '2022', '5', '1');
INSERT INTO `tpartisipasi` VALUES ('75', '99.38', '112.00', '98.08', '2022', '6', '1');
INSERT INTO `tpartisipasi` VALUES ('76', '99.49', '109.23', '98.60', '2022', '7', '1');
INSERT INTO `tpartisipasi` VALUES ('77', '99.56', '105.91', '99.29', '2022', '8', '1');
INSERT INTO `tpartisipasi` VALUES ('78', '99.41', '107.26', '98.01', '2022', '9', '1');
INSERT INTO `tpartisipasi` VALUES ('79', '99.28', '106.26', '99.20', '2022', '10', '1');
INSERT INTO `tpartisipasi` VALUES ('80', '99.44', '103.34', '98.37', '2022', '11', '1');
INSERT INTO `tpartisipasi` VALUES ('81', '99.39', '104.55', '98.29', '2022', '12', '1');
INSERT INTO `tpartisipasi` VALUES ('82', '99.58', '106.19', '98.39', '2022', '13', '1');
INSERT INTO `tpartisipasi` VALUES ('83', '99.59', '104.96', '99.43', '2022', '14', '1');
INSERT INTO `tpartisipasi` VALUES ('84', '99.14', '104.68', '98.09', '2022', '15', '1');
INSERT INTO `tpartisipasi` VALUES ('85', '99.33', '106.89', '97.93', '2022', '16', '1');
INSERT INTO `tpartisipasi` VALUES ('86', '99.55', '103.16', '97.46', '2022', '17', '1');
INSERT INTO `tpartisipasi` VALUES ('87', '99.17', '107.21', '98.83', '2022', '18', '1');
INSERT INTO `tpartisipasi` VALUES ('88', '98.59', '113.36', '96.08', '2022', '19', '1');
INSERT INTO `tpartisipasi` VALUES ('89', '98.73', '111.84', '97.52', '2022', '20', '1');
INSERT INTO `tpartisipasi` VALUES ('90', '99.20', '107.39', '99.11', '2022', '21', '1');
INSERT INTO `tpartisipasi` VALUES ('91', '99.43', '107.18', '99.12', '2022', '22', '1');
INSERT INTO `tpartisipasi` VALUES ('92', '99.57', '105.21', '98.45', '2022', '23', '1');
INSERT INTO `tpartisipasi` VALUES ('93', '98.98', '100.70', '93.69', '2022', '24', '1');
INSERT INTO `tpartisipasi` VALUES ('94', '99.34', '106.48', '95.44', '2022', '25', '1');
INSERT INTO `tpartisipasi` VALUES ('95', '98.22', '103.55', '93.25', '2022', '26', '1');
INSERT INTO `tpartisipasi` VALUES ('96', '99.43', '106.71', '98.41', '2022', '27', '1');
INSERT INTO `tpartisipasi` VALUES ('97', '99.05', '108.48', '98.27', '2022', '28', '1');
INSERT INTO `tpartisipasi` VALUES ('98', '98.93', '108.70', '98.74', '2022', '29', '1');
INSERT INTO `tpartisipasi` VALUES ('99', '98.40', '106.08', '95.81', '2022', '30', '1');
INSERT INTO `tpartisipasi` VALUES ('100', '99.55', '111.05', '96.90', '2022', '31', '1');
INSERT INTO `tpartisipasi` VALUES ('101', '99.13', '108.05', '97.27', '2022', '32', '1');
INSERT INTO `tpartisipasi` VALUES ('102', '98.27', '110.42', '94.31', '2022', '33', '1');
INSERT INTO `tpartisipasi` VALUES ('103', '84.35', '94.26', '81.66', '2022', '34', '1');
INSERT INTO `tpartisipasi` VALUES ('105', '98.49', '108.34', '86.87', '2020', '1', '2');
INSERT INTO `tpartisipasi` VALUES ('106', '97.04', '108.31', '80.56', '2020', '2', '2');
INSERT INTO `tpartisipasi` VALUES ('107', '96.60', '108.47', '78.41', '2020', '3', '2');
INSERT INTO `tpartisipasi` VALUES ('108', '95.53', '105.82', '80.48', '2020', '4', '2');
INSERT INTO `tpartisipasi` VALUES ('109', '96.41', '109.55', '79.93', '2020', '5', '2');
INSERT INTO `tpartisipasi` VALUES ('110', '94.61', '112.00', '77.97', '2020', '6', '2');
INSERT INTO `tpartisipasi` VALUES ('111', '97.49', '109.23', '79.77', '2020', '7', '2');
INSERT INTO `tpartisipasi` VALUES ('112', '95.24', '105.91', '81.17', '2020', '8', '2');
INSERT INTO `tpartisipasi` VALUES ('113', '93.34', '107.26', '74.59', '2020', '9', '2');
INSERT INTO `tpartisipasi` VALUES ('114', '98.82', '106.26', '86.47', '2020', '10', '2');
INSERT INTO `tpartisipasi` VALUES ('115', '98.34', '103.34', '82.47', '2020', '11', '2');
INSERT INTO `tpartisipasi` VALUES ('116', '94.45', '104.55', '82.06', '2020', '12', '2');
INSERT INTO `tpartisipasi` VALUES ('117', '96.37', '106.19', '80.53', '2020', '13', '2');
INSERT INTO `tpartisipasi` VALUES ('118', '99.45', '104.96', '83.98', '2020', '14', '2');
INSERT INTO `tpartisipasi` VALUES ('119', '97.68', '104.68', '83.53', '2020', '15', '2');
INSERT INTO `tpartisipasi` VALUES ('120', '95.77', '106.89', '82.73', '2020', '16', '2');
INSERT INTO `tpartisipasi` VALUES ('121', '98.21', '103.16', '87.26', '2020', '17', '2');
INSERT INTO `tpartisipasi` VALUES ('122', '98.32', '107.21', '84.98', '2020', '18', '2');
INSERT INTO `tpartisipasi` VALUES ('123', '95.25', '113.36', '69.82', '2020', '19', '2');
INSERT INTO `tpartisipasi` VALUES ('124', '92.90', '111.84', '67.42', '2020', '20', '2');
INSERT INTO `tpartisipasi` VALUES ('125', '94.86', '107.39', '78.45', '2020', '21', '2');
INSERT INTO `tpartisipasi` VALUES ('126', '93.04', '107.18', '75.51', '2020', '22', '2');
INSERT INTO `tpartisipasi` VALUES ('127', '99.07', '105.21', '81.28', '2020', '23', '2');
INSERT INTO `tpartisipasi` VALUES ('128', '96.52', '100.70', '79.09', '2020', '24', '2');
INSERT INTO `tpartisipasi` VALUES ('129', '95.27', '106.48', '74.82', '2020', '25', '2');
INSERT INTO `tpartisipasi` VALUES ('130', '93.13', '103.55', '74.42', '2020', '26', '2');
INSERT INTO `tpartisipasi` VALUES ('131', '93.34', '106.71', '76.17', '2020', '27', '2');
INSERT INTO `tpartisipasi` VALUES ('132', '94.98', '108.48', '77.64', '2020', '28', '2');
INSERT INTO `tpartisipasi` VALUES ('133', '91.80', '108.70', '70.68', '2020', '29', '2');
INSERT INTO `tpartisipasi` VALUES ('134', '90.07', '106.08', '69.98', '2020', '30', '2');
INSERT INTO `tpartisipasi` VALUES ('135', '97.43', '111.05', '75.15', '2020', '31', '2');
INSERT INTO `tpartisipasi` VALUES ('136', '97.15', '108.05', '76.90', '2020', '32', '2');
INSERT INTO `tpartisipasi` VALUES ('137', '96.87', '110.42', '70.51', '2020', '33', '2');
INSERT INTO `tpartisipasi` VALUES ('138', '80.48', '94.26', '57.95', '2020', '34', '2');
INSERT INTO `tpartisipasi` VALUES ('139', '98.42', '97.74', '86.95', '2021', '1', '2');
INSERT INTO `tpartisipasi` VALUES ('140', '96.99', '91.87', '81.13', '2021', '2', '2');
INSERT INTO `tpartisipasi` VALUES ('141', '96.63', '93.24', '78.75', '2021', '3', '2');
INSERT INTO `tpartisipasi` VALUES ('142', '95.66', '95.25', '80.52', '2021', '4', '2');
INSERT INTO `tpartisipasi` VALUES ('143', '96.39', '88.96', '79.88', '2021', '5', '2');
INSERT INTO `tpartisipasi` VALUES ('144', '94.85', '89.44', '78.31', '2021', '6', '2');
INSERT INTO `tpartisipasi` VALUES ('145', '97.49', '92.11', '80.25', '2021', '7', '2');
INSERT INTO `tpartisipasi` VALUES ('146', '95.58', '93.12', '82.03', '2021', '8', '2');
INSERT INTO `tpartisipasi` VALUES ('147', '93.17', '88.44', '74.60', '2021', '9', '2');
INSERT INTO `tpartisipasi` VALUES ('148', '98.85', '94.12', '86.60', '2021', '10', '2');
INSERT INTO `tpartisipasi` VALUES ('149', '98.68', '91.56', '83.01', '2021', '11', '2');
INSERT INTO `tpartisipasi` VALUES ('150', '95.09', '93.33', '82.88', '2021', '12', '2');
INSERT INTO `tpartisipasi` VALUES ('151', '96.84', '94.00', '80.99', '2021', '13', '2');
INSERT INTO `tpartisipasi` VALUES ('152', '99.43', '95.54', '83.62', '2021', '14', '2');
INSERT INTO `tpartisipasi` VALUES ('153', '97.76', '97.17', '83.80', '2021', '15', '2');
INSERT INTO `tpartisipasi` VALUES ('154', '96.77', '94.88', '84.28', '2021', '16', '2');
INSERT INTO `tpartisipasi` VALUES ('155', '98.22', '98.68', '87.11', '2021', '17', '2');
INSERT INTO `tpartisipasi` VALUES ('156', '98.34', '93.72', '85.28', '2021', '18', '2');
INSERT INTO `tpartisipasi` VALUES ('157', '95.32', '90.78', '69.99', '2021', '19', '2');
INSERT INTO `tpartisipasi` VALUES ('158', '93.14', '85.45', '68.11', '2021', '20', '2');
INSERT INTO `tpartisipasi` VALUES ('159', '95.21', '91.07', '78.80', '2021', '21', '2');
INSERT INTO `tpartisipasi` VALUES ('160', '93.50', '86.04', '75.88', '2021', '22', '2');
INSERT INTO `tpartisipasi` VALUES ('161', '98.90', '92.03', '81.30', '2021', '23', '2');
INSERT INTO `tpartisipasi` VALUES ('162', '96.51', '100.90', '79.21', '2021', '24', '2');
INSERT INTO `tpartisipasi` VALUES ('163', '95.41', '90.45', '74.94', '2021', '25', '2');
INSERT INTO `tpartisipasi` VALUES ('164', '93.32', '93.17', '74.99', '2021', '26', '2');
INSERT INTO `tpartisipasi` VALUES ('165', '93.55', '86.82', '77.02', '2021', '27', '2');
INSERT INTO `tpartisipasi` VALUES ('166', '95.06', '87.54', '77.86', '2021', '28', '2');
INSERT INTO `tpartisipasi` VALUES ('167', '92.05', '79.37', '71.15', '2021', '29', '2');
INSERT INTO `tpartisipasi` VALUES ('168', '90.12', '85.27', '70.03', '2021', '30', '2');
INSERT INTO `tpartisipasi` VALUES ('169', '97.65', '90.57', '75.53', '2021', '31', '2');
INSERT INTO `tpartisipasi` VALUES ('170', '97.00', '87.99', '77.03', '2021', '32', '2');
INSERT INTO `tpartisipasi` VALUES ('171', '96.85', '90.55', '70.52', '2021', '33', '2');
INSERT INTO `tpartisipasi` VALUES ('172', '80.02', '81.68', '57.93', '2021', '34', '2');
INSERT INTO `tpartisipasi` VALUES ('173', '97.96', '95.02', '88.21', '2022', '1', '2');
INSERT INTO `tpartisipasi` VALUES ('174', '96.78', '90.31', '81.84', '2022', '2', '2');
INSERT INTO `tpartisipasi` VALUES ('175', '96.52', '92.57', '78.86', '2022', '3', '2');
INSERT INTO `tpartisipasi` VALUES ('176', '95.72', '94.45', '80.43', '2022', '4', '2');
INSERT INTO `tpartisipasi` VALUES ('177', '96.20', '87.84', '79.93', '2022', '5', '2');
INSERT INTO `tpartisipasi` VALUES ('178', '95.06', '89.41', '78.68', '2022', '6', '2');
INSERT INTO `tpartisipasi` VALUES ('179', '97.73', '90.79', '80.25', '2022', '7', '2');
INSERT INTO `tpartisipasi` VALUES ('180', '95.63', '92.37', '82.07', '2022', '8', '2');
INSERT INTO `tpartisipasi` VALUES ('181', '93.00', '87.85', '74.68', '2022', '9', '2');
INSERT INTO `tpartisipasi` VALUES ('182', '99.01', '93.27', '86.76', '2022', '10', '2');
INSERT INTO `tpartisipasi` VALUES ('183', '97.95', '89.89', '84.22', '2022', '11', '2');
INSERT INTO `tpartisipasi` VALUES ('184', '95.27', '93.46', '82.80', '2022', '12', '2');
INSERT INTO `tpartisipasi` VALUES ('185', '96.77', '94.05', '81.02', '2022', '13', '2');
INSERT INTO `tpartisipasi` VALUES ('186', '99.01', '94.02', '85.28', '2022', '14', '2');
INSERT INTO `tpartisipasi` VALUES ('187', '97.64', '95.95', '83.80', '2022', '15', '2');
INSERT INTO `tpartisipasi` VALUES ('188', '96.39', '94.05', '84.67', '2022', '16', '2');
INSERT INTO `tpartisipasi` VALUES ('189', '97.85', '96.23', '86.88', '2022', '17', '2');
INSERT INTO `tpartisipasi` VALUES ('190', '97.74', '92.59', '86.05', '2022', '18', '2');
INSERT INTO `tpartisipasi` VALUES ('191', '94.83', '89.88', '70.05', '2022', '19', '2');
INSERT INTO `tpartisipasi` VALUES ('192', '92.64', '84.59', '68.32', '2022', '20', '2');
INSERT INTO `tpartisipasi` VALUES ('193', '94.61', '89.70', '78.75', '2022', '21', '2');
INSERT INTO `tpartisipasi` VALUES ('194', '94.01', '86.40', '76.28', '2022', '22', '2');
INSERT INTO `tpartisipasi` VALUES ('195', '98.75', '91.47', '82.65', '2022', '23', '2');
INSERT INTO `tpartisipasi` VALUES ('196', '97.03', '99.85', '79.38', '2022', '24', '2');
INSERT INTO `tpartisipasi` VALUES ('197', '94.86', '89.63', '76.11', '2022', '25', '2');
INSERT INTO `tpartisipasi` VALUES ('198', '93.02', '92.86', '75.63', '2022', '26', '2');
INSERT INTO `tpartisipasi` VALUES ('199', '93.20', '86.19', '77.42', '2022', '27', '2');
INSERT INTO `tpartisipasi` VALUES ('200', '94.80', '86.04', '77.77', '2022', '28', '2');
INSERT INTO `tpartisipasi` VALUES ('201', '91.83', '79.37', '71.66', '2022', '29', '2');
INSERT INTO `tpartisipasi` VALUES ('202', '89.39', '84.58', '70.34', '2022', '30', '2');
INSERT INTO `tpartisipasi` VALUES ('203', '97.69', '87.85', '78.37', '2022', '31', '2');
INSERT INTO `tpartisipasi` VALUES ('204', '97.59', '88.35', '77.41', '2022', '32', '2');
INSERT INTO `tpartisipasi` VALUES ('205', '97.37', '90.45', '71.38', '2022', '33', '2');
INSERT INTO `tpartisipasi` VALUES ('206', '81.66', '83.51', '59.14', '2022', '34', '2');
INSERT INTO `tpartisipasi` VALUES ('207', '83.27', '90.90', '70.70', '2020', '1', '3');
INSERT INTO `tpartisipasi` VALUES ('208', '78.21', '94.68', '68.00', '2020', '2', '3');
INSERT INTO `tpartisipasi` VALUES ('209', '83.68', '90.01', '68.90', '2020', '3', '3');
INSERT INTO `tpartisipasi` VALUES ('210', '77.42', '84.61', '64.01', '2020', '4', '3');
INSERT INTO `tpartisipasi` VALUES ('211', '72.37', '83.71', '61.38', '2020', '5', '3');
INSERT INTO `tpartisipasi` VALUES ('212', '70.91', '81.73', '60.45', '2020', '6', '3');
INSERT INTO `tpartisipasi` VALUES ('213', '79.72', '94.14', '65.82', '2020', '7', '3');
INSERT INTO `tpartisipasi` VALUES ('214', '71.34', '85.84', '59.58', '2020', '8', '3');
INSERT INTO `tpartisipasi` VALUES ('215', '67.75', '87.15', '58.82', '2020', '9', '3');
INSERT INTO `tpartisipasi` VALUES ('216', '84.62', '87.53', '73.45', '2020', '10', '3');
INSERT INTO `tpartisipasi` VALUES ('217', '72.11', '76.87', '60.42', '2020', '11', '3');
INSERT INTO `tpartisipasi` VALUES ('218', '67.74', '78.26', '57.90', '2020', '12', '3');
INSERT INTO `tpartisipasi` VALUES ('219', '70.14', '86.83', '59.74', '2020', '13', '3');
INSERT INTO `tpartisipasi` VALUES ('220', '88.95', '89.30', '70.98', '2020', '14', '3');
INSERT INTO `tpartisipasi` VALUES ('221', '73.05', '85.24', '62.24', '2020', '15', '3');
INSERT INTO `tpartisipasi` VALUES ('222', '68.76', '73.35', '59.06', '2020', '16', '3');
INSERT INTO `tpartisipasi` VALUES ('223', '82.96', '88.67', '73.29', '2020', '17', '3');
INSERT INTO `tpartisipasi` VALUES ('224', '77.64', '91.77', '66.81', '2020', '18', '3');
INSERT INTO `tpartisipasi` VALUES ('225', '75.52', '84.70', '54.09', '2020', '19', '3');
INSERT INTO `tpartisipasi` VALUES ('226', '68.96', '84.51', '51.70', '2020', '20', '3');
INSERT INTO `tpartisipasi` VALUES ('227', '66.92', '82.29', '54.08', '2020', '21', '3');
INSERT INTO `tpartisipasi` VALUES ('228', '69.38', '79.10', '58.25', '2020', '22', '3');
INSERT INTO `tpartisipasi` VALUES ('229', '81.88', '95.23', '69.00', '2020', '23', '3');
INSERT INTO `tpartisipasi` VALUES ('230', '76.08', '98.31', '64.75', '2020', '24', '3');
INSERT INTO `tpartisipasi` VALUES ('231', '74.12', '86.83', '63.43', '2020', '25', '3');
INSERT INTO `tpartisipasi` VALUES ('232', '75.89', '88.42', '65.02', '2020', '26', '3');
INSERT INTO `tpartisipasi` VALUES ('233', '70.89', '86.44', '60.32', '2020', '27', '3');
INSERT INTO `tpartisipasi` VALUES ('234', '74.50', '87.74', '63.41', '2020', '28', '3');
INSERT INTO `tpartisipasi` VALUES ('235', '71.43', '88.65', '57.86', '2020', '29', '3');
INSERT INTO `tpartisipasi` VALUES ('236', '69.84', '84.36', '58.05', '2020', '30', '3');
INSERT INTO `tpartisipasi` VALUES ('237', '79.87', '95.95', '64.81', '2020', '31', '3');
INSERT INTO `tpartisipasi` VALUES ('238', '76.83', '93.44', '64.25', '2020', '32', '3');
INSERT INTO `tpartisipasi` VALUES ('239', '81.51', '97.72', '63.62', '2020', '33', '3');
INSERT INTO `tpartisipasi` VALUES ('240', '64.83', '76.55', '44.73', '2020', '34', '3');
INSERT INTO `tpartisipasi` VALUES ('241', '83.28', '92.63', '70.80', '2021', '1', '3');
INSERT INTO `tpartisipasi` VALUES ('242', '78.66', '96.75', '67.99', '2021', '2', '3');
INSERT INTO `tpartisipasi` VALUES ('243', '84.07', '90.38', '68.99', '2021', '3', '3');
INSERT INTO `tpartisipasi` VALUES ('244', '77.81', '84.11', '64.00', '2021', '4', '3');
INSERT INTO `tpartisipasi` VALUES ('245', '72.50', '84.47', '61.56', '2021', '5', '3');
INSERT INTO `tpartisipasi` VALUES ('246', '71.53', '82.30', '60.53', '2021', '6', '3');
INSERT INTO `tpartisipasi` VALUES ('247', '79.75', '93.79', '66.08', '2021', '7', '3');
INSERT INTO `tpartisipasi` VALUES ('248', '71.72', '88.38', '60.31', '2021', '8', '3');
INSERT INTO `tpartisipasi` VALUES ('249', '68.15', '86.49', '58.79', '2021', '9', '3');
INSERT INTO `tpartisipasi` VALUES ('250', '84.40', '86.31', '73.36', '2021', '10', '3');
INSERT INTO `tpartisipasi` VALUES ('251', '72.32', '77.08', '60.53', '2021', '11', '3');
INSERT INTO `tpartisipasi` VALUES ('252', '67.80', '78.10', '58.58', '2021', '12', '3');
INSERT INTO `tpartisipasi` VALUES ('253', '70.79', '86.65', '60.46', '2021', '13', '3');
INSERT INTO `tpartisipasi` VALUES ('254', '89.63', '90.50', '71.42', '2021', '14', '3');
INSERT INTO `tpartisipasi` VALUES ('255', '74.14', '87.55', '62.63', '2021', '15', '3');
INSERT INTO `tpartisipasi` VALUES ('256', '68.94', '75.66', '59.69', '2021', '16', '3');
INSERT INTO `tpartisipasi` VALUES ('257', '83.96', '89.87', '74.82', '2021', '17', '3');
INSERT INTO `tpartisipasi` VALUES ('258', '77.49', '93.75', '67.09', '2021', '18', '3');
INSERT INTO `tpartisipasi` VALUES ('259', '75.77', '86.36', '54.29', '2021', '19', '3');
INSERT INTO `tpartisipasi` VALUES ('260', '69.38', '85.21', '51.77', '2021', '20', '3');
INSERT INTO `tpartisipasi` VALUES ('261', '66.70', '83.07', '54.25', '2021', '21', '3');
INSERT INTO `tpartisipasi` VALUES ('262', '69.31', '80.77', '58.37', '2021', '22', '3');
INSERT INTO `tpartisipasi` VALUES ('263', '82.01', '95.52', '69.29', '2021', '23', '3');
INSERT INTO `tpartisipasi` VALUES ('264', '76.50', '96.55', '65.37', '2021', '24', '3');
INSERT INTO `tpartisipasi` VALUES ('265', '73.86', '86.17', '63.33', '2021', '25', '3');
INSERT INTO `tpartisipasi` VALUES ('266', '76.32', '88.06', '65.44', '2021', '26', '3');
INSERT INTO `tpartisipasi` VALUES ('267', '71.21', '87.07', '60.35', '2021', '27', '3');
INSERT INTO `tpartisipasi` VALUES ('268', '75.02', '89.50', '63.70', '2021', '28', '3');
INSERT INTO `tpartisipasi` VALUES ('269', '71.30', '87.97', '58.21', '2021', '29', '3');
INSERT INTO `tpartisipasi` VALUES ('270', '71.22', '87.81', '59.77', '2021', '30', '3');
INSERT INTO `tpartisipasi` VALUES ('271', '79.68', '95.74', '64.71', '2021', '31', '3');
INSERT INTO `tpartisipasi` VALUES ('272', '77.01', '95.04', '64.11', '2021', '32', '3');
INSERT INTO `tpartisipasi` VALUES ('273', '81.21', '97.25', '63.51', '2021', '33', '3');
INSERT INTO `tpartisipasi` VALUES ('274', '63.98', '75.05', '44.41', '2021', '34', '3');
INSERT INTO `tpartisipasi` VALUES ('275', '83.10', '92.53', '71.16', '2022', '1', '3');
INSERT INTO `tpartisipasi` VALUES ('276', '78.66', '97.23', '68.27', '2022', '2', '3');
INSERT INTO `tpartisipasi` VALUES ('277', '83.71', '90.66', '68.38', '2022', '3', '3');
INSERT INTO `tpartisipasi` VALUES ('278', '77.32', '84.85', '63.87', '2022', '4', '3');
INSERT INTO `tpartisipasi` VALUES ('279', '72.53', '84.33', '60.73', '2022', '5', '3');
INSERT INTO `tpartisipasi` VALUES ('280', '70.93', '81.11', '61.00', '2022', '6', '3');
INSERT INTO `tpartisipasi` VALUES ('281', '79.31', '93.97', '66.61', '2022', '7', '3');
INSERT INTO `tpartisipasi` VALUES ('282', '71.14', '87.40', '61.96', '2022', '8', '3');
INSERT INTO `tpartisipasi` VALUES ('283', '68.42', '86.50', '59.65', '2022', '9', '3');
INSERT INTO `tpartisipasi` VALUES ('284', '84.54', '87.08', '73.54', '2022', '10', '3');
INSERT INTO `tpartisipasi` VALUES ('285', '72.10', '76.91', '60.88', '2022', '11', '3');
INSERT INTO `tpartisipasi` VALUES ('286', '68.66', '78.86', '58.60', '2022', '12', '3');
INSERT INTO `tpartisipasi` VALUES ('287', '70.82', '86.83', '61.17', '2022', '13', '3');
INSERT INTO `tpartisipasi` VALUES ('288', '89.95', '89.93', '74.50', '2022', '14', '3');
INSERT INTO `tpartisipasi` VALUES ('289', '73.40', '87.37', '62.10', '2022', '15', '3');
INSERT INTO `tpartisipasi` VALUES ('290', '69.22', '75.49', '59.54', '2022', '16', '3');
INSERT INTO `tpartisipasi` VALUES ('291', '83.84', '90.82', '74.73', '2022', '17', '3');
INSERT INTO `tpartisipasi` VALUES ('292', '77.43', '93.68', '67.61', '2022', '18', '3');
INSERT INTO `tpartisipasi` VALUES ('293', '75.55', '86.38', '56.00', '2022', '19', '3');
INSERT INTO `tpartisipasi` VALUES ('294', '68.72', '84.79', '51.87', '2022', '20', '3');
INSERT INTO `tpartisipasi` VALUES ('295', '66.32', '83.97', '55.69', '2022', '21', '3');
INSERT INTO `tpartisipasi` VALUES ('296', '69.88', '80.97', '59.61', '2022', '22', '3');
INSERT INTO `tpartisipasi` VALUES ('297', '81.43', '95.09', '69.10', '2022', '23', '3');
INSERT INTO `tpartisipasi` VALUES ('298', '76.50', '97.57', '65.65', '2022', '24', '3');
INSERT INTO `tpartisipasi` VALUES ('299', '74.33', '86.03', '63.30', '2022', '25', '3');
INSERT INTO `tpartisipasi` VALUES ('300', '75.84', '87.99', '65.72', '2022', '26', '3');
INSERT INTO `tpartisipasi` VALUES ('301', '70.81', '86.49', '60.44', '2022', '27', '3');
INSERT INTO `tpartisipasi` VALUES ('302', '74.53', '89.14', '64.11', '2022', '28', '3');
INSERT INTO `tpartisipasi` VALUES ('303', '71.68', '87.83', '58.47', '2022', '29', '3');
INSERT INTO `tpartisipasi` VALUES ('304', '70.85', '87.86', '60.24', '2022', '30', '3');
INSERT INTO `tpartisipasi` VALUES ('305', '79.03', '95.96', '64.57', '2022', '31', '3');
INSERT INTO `tpartisipasi` VALUES ('306', '77.70', '95.40', '65.35', '2022', '32', '3');
INSERT INTO `tpartisipasi` VALUES ('307', '80.56', '97.71', '63.66', '2022', '33', '3');
INSERT INTO `tpartisipasi` VALUES ('308', '65.93', '77.06', '47.63', '2022', '34', '3');

-- ----------------------------
-- Table structure for `tprovinsi`
-- ----------------------------
DROP TABLE IF EXISTS `tprovinsi`;
CREATE TABLE `tprovinsi` (
  `id_provinsi` int(20) NOT NULL,
  `nama_provinsi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_provinsi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tprovinsi
-- ----------------------------
INSERT INTO `tprovinsi` VALUES ('1', 'ACEH');
INSERT INTO `tprovinsi` VALUES ('2', 'SUMATERA UTARA');
INSERT INTO `tprovinsi` VALUES ('3', 'SUMATERA BARAT');
INSERT INTO `tprovinsi` VALUES ('4', 'RIAU');
INSERT INTO `tprovinsi` VALUES ('5', 'JAMBI');
INSERT INTO `tprovinsi` VALUES ('6', 'SUMATERA SELATAN');
INSERT INTO `tprovinsi` VALUES ('7', 'BENGKULU');
INSERT INTO `tprovinsi` VALUES ('8', 'LAMPUNG');
INSERT INTO `tprovinsi` VALUES ('9', 'KEPULAUAN BANGKA BELITUNG');
INSERT INTO `tprovinsi` VALUES ('10', 'KEPULAUAN RIAU');
INSERT INTO `tprovinsi` VALUES ('11', 'DKI JAKARTA');
INSERT INTO `tprovinsi` VALUES ('12', 'JAWA BARAT');
INSERT INTO `tprovinsi` VALUES ('13', 'JAWA TENGAH');
INSERT INTO `tprovinsi` VALUES ('14', 'DI YOGYAKARTA');
INSERT INTO `tprovinsi` VALUES ('15', 'JAWA TIMUR');
INSERT INTO `tprovinsi` VALUES ('16', 'BANTEN');
INSERT INTO `tprovinsi` VALUES ('17', 'BALI');
INSERT INTO `tprovinsi` VALUES ('18', 'NUSA TENGGARA BARAT');
INSERT INTO `tprovinsi` VALUES ('19', 'NUSA TENGGARA TIMUR');
INSERT INTO `tprovinsi` VALUES ('20', 'KALIMANTAN BARAT');
INSERT INTO `tprovinsi` VALUES ('21', 'KALIMANTAN TENGAH');
INSERT INTO `tprovinsi` VALUES ('22', 'KALIMANTAN SELATAN');
INSERT INTO `tprovinsi` VALUES ('23', 'KALIMANTAN TIMUR');
INSERT INTO `tprovinsi` VALUES ('24', 'KALIMANTAN UTARA');
INSERT INTO `tprovinsi` VALUES ('25', 'SULAWESI UTARA');
INSERT INTO `tprovinsi` VALUES ('26', 'SULAWESI TENGAH');
INSERT INTO `tprovinsi` VALUES ('27', 'SULAWESI SELATAN');
INSERT INTO `tprovinsi` VALUES ('28', 'SULAWESI TENGGARA');
INSERT INTO `tprovinsi` VALUES ('29', 'GORONTALO');
INSERT INTO `tprovinsi` VALUES ('30', 'SULAWESI BARAT');
INSERT INTO `tprovinsi` VALUES ('31', 'MALUKU');
INSERT INTO `tprovinsi` VALUES ('32', 'MALUKU UTARA');
INSERT INTO `tprovinsi` VALUES ('33', 'PAPUA BARAT');
INSERT INTO `tprovinsi` VALUES ('34', 'PAPUA');
