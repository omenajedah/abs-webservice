/*
SQLyog Professional v12.5.1 (64 bit)
MySQL - 10.1.35-MariaDB : Database - absensi
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
  `tanggal_absen` date NOT NULL,
  `waktu_absen` time NOT NULL,
  PRIMARY KEY (`id_absen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_absen` */

/*Table structure for table `tbl_kelas` */

DROP TABLE IF EXISTS `tbl_kelas`;

CREATE TABLE `tbl_kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_kelas` */

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
('admin','admin','Administrator',1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
