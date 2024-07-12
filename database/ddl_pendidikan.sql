CREATE DATABASE db_pendidikan;
USE db_pendidikan;

CREATE TABLE `tbutahuruf` (
  `id_buta_huruf` int(200) NOT NULL AUTO_INCREMENT,
  `persentase` float(50,2) DEFAULT NULL,
  `tahun` varchar(20) DEFAULT NULL,
  `id_provinsi` int(100) DEFAULT NULL,
  PRIMARY KEY (`id_buta_huruf`),
  KEY `fprovinsi` (`id_provinsi`),
  CONSTRAINT `fprovinsi` FOREIGN KEY (`id_provinsi`) REFERENCES `tprovinsi` (`id_provinsi`)
);

CREATE TABLE `tebook` (
`id_ebook` int(10) NOT NULL AUTO_INCREMENT,
  `nama_ebook` varchar(40) DEFAULT '',
  `ebook` varchar(40) DEFAULT '',
  `id_jenjang` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_ebook`),
  KEY `fjenjang` (`id_jenjang`),
  CONSTRAINT `fjenjang` FOREIGN KEY (`id_jenjang`) REFERENCES `tjenjang` (`id_jenjang`)
);

CREATE TABLE `tfasilitas` (  
`id_fasilitas` int(10) NOT NULL AUTO_INCREMENT,
  `nama_fasilitas` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_fasilitas`)
);

CREATE TABLE `tfs` (
  `id_fs` int(100) NOT NULL AUTO_INCREMENT,
  `id_fasilitas` int(100) DEFAULT NULL,
  `id_lembaga` int(100) DEFAULT NULL,
  PRIMARY KEY (`id_fs`),
  KEY `fsekolah` (`id_lembaga`),
  KEY `ffasil` (`id_fasilitas`),
  CONSTRAINT `ffasil` FOREIGN KEY (`id_fasilitas`) REFERENCES `tfasilitas` (`id_fasilitas`),
  CONSTRAINT `fsekolah` FOREIGN KEY (`id_lembaga`) REFERENCES `tlembaga` (`id_lembaga`)
);

CREATE TABLE `tjenjang` (
  `id_jenjang` int(10) NOT NULL AUTO_INCREMENT,
  `jenjang` varchar(20) DEFAULT '',
  PRIMARY KEY (`id_jenjang`)
);

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
  CONSTRAINT `f_prov` FOREIGN KEY (`id_provinsi`) REFERENCES `tprovinsi` (`id_provinsi`));

  CREATE TABLE `tlogin` (
  `id_login` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT 'user',
  PRIMARY KEY (`id_login`)
);

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
);

CREATE TABLE `tprovinsi` (
  `id_provinsi` int(20) NOT NULL,
  `nama_provinsi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_provinsi`)
);
