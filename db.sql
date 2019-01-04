/*
SQLyog Professional v12.5.1 (64 bit)
MySQL - 10.1.21-MariaDB : Database - absensi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`absensi` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `absensi`;

/*Table structure for table `tbl_absen` */

DROP TABLE IF EXISTS `tbl_absen`;

CREATE TABLE `tbl_absen` (
  `id_absen` int(11) NOT NULL AUTO_INCREMENT,
  `nisn` char(12) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `tipe_absen` tinyint(1) DEFAULT NULL COMMENT '1 hadir, 2 izin, 3 sakit, 4 alpha',
  `tanggal_absen` date NOT NULL,
  `waktu_absen` time NOT NULL,
  PRIMARY KEY (`id_absen`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_absen` */

/*Table structure for table `tbl_kelas` */

DROP TABLE IF EXISTS `tbl_kelas`;

CREATE TABLE `tbl_kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_kelas` */

insert  into `tbl_kelas`(`id_kelas`,`nama_kelas`) values 
(1,'Kelas 1'),
(2,'Kelas 2'),
(14,'Kelas 6');

/*Table structure for table `tbl_siswa` */

DROP TABLE IF EXISTS `tbl_siswa`;

CREATE TABLE `tbl_siswa` (
  `nisn` char(12) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `jenis_kelamin` tinyint(1) NOT NULL COMMENT '0 = Perempuan,  = Laki - Laki',
  `id_kelas` int(11) NOT NULL,
  PRIMARY KEY (`nisn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_siswa` */

insert  into `tbl_siswa`(`nisn`,`nama_siswa`,`jenis_kelamin`,`id_kelas`) values 
('000001','aldo',1,1),
('000002','amanto',1,1),
('000003','aninda',0,3),
('000004','baskara',1,3),
('000005','lala',0,1),
('000006','anto',1,14),
('000009','dodi',0,14),
('1673','susi',0,1);

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `user_name` char(15) NOT NULL,
  `user_pass` varchar(32) DEFAULT NULL,
  `user_fullname` varchar(120) DEFAULT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT '1',
  `user_status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`user_name`,`user_pass`,`user_fullname`,`user_type`,`user_status`) values 
('admin','admin','Administrator',1,1),
('jshdjic','bsjfjh','bsjchx',1,1),
('tessa','1234','tessssssa',1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
