/*
SQLyog Community v9.62 
MySQL - 5.0.51a-24+lenny5 : Database - testphonegap
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL auto_increment,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `managerId` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `officePhone` varchar(45) NOT NULL,
  `cellPhone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `picture` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert  into `employee`(`id`,`firstName`,`lastName`,`managerId`,`title`,`department`,`officePhone`,`cellPhone`,`email`,`city`,`picture`) values (12,'Mario','Rossi',4,'Software Architect','Engineering','02 12345678','12345678910','mario@madeindreams.it','Milano','steven_wells.jpg');
insert  into `employee`(`id`,`firstName`,`lastName`,`managerId`,`title`,`department`,`officePhone`,`cellPhone`,`email`,`city`,`picture`) values (11,'Giovanni','Bianchi',5,'Commerciale','Vendite','02 12345678','12345678910','giovanna@madeindreams.it','Milano','amy_jones.jpg');
insert  into `employee`(`id`,`firstName`,`lastName`,`managerId`,`title`,`department`,`officePhone`,`cellPhone`,`email`,`city`,`picture`) values (10,'Carla','Rossini',5,'Responsabile vendite','Vendite','02 12345678','12345678910','carla@madeindreams.it','Milano','kathleen_byrne.jpg');
insert  into `employee`(`id`,`firstName`,`lastName`,`managerId`,`title`,`department`,`officePhone`,`cellPhone`,`email`,`city`,`picture`) values (9,'Alberto','Bianchi',2,'Marketing','Marketing','02 12345678','12345678910','alberto@madeindreams.it','Milano','gary_donovan.jpg');
insert  into `employee`(`id`,`firstName`,`lastName`,`managerId`,`title`,`department`,`officePhone`,`cellPhone`,`email`,`city`,`picture`) values (8,'Lisa','Bianchini',2,'Marketing Manager','Marketing','02 12345678','12345678910','lisa@madeindreams.it','Milano','lisa_wong.jpg');
insert  into `employee`(`id`,`firstName`,`lastName`,`managerId`,`title`,`department`,`officePhone`,`cellPhone`,`email`,`city`,`picture`) values (7,'Paola','Brambilla',4,'Software Architect','Engineering','02 12345678','12345678910','paola@madeindreams.it','Milano','paula_gates.jpg');
insert  into `employee`(`id`,`firstName`,`lastName`,`managerId`,`title`,`department`,`officePhone`,`cellPhone`,`email`,`city`,`picture`) values (5,'Raimondo','Moro',1,'Direttore commerciale','Sales','02 12345678','12345678910','raimondo@madeindreams.it','Milano','ray_moore.jpg');
insert  into `employee`(`id`,`firstName`,`lastName`,`managerId`,`title`,`department`,`officePhone`,`cellPhone`,`email`,`city`,`picture`) values (6,'Paolo','Verdini',4,'Responsabile qualità','Engineering','02 12345678','12345678910','paolo@madeindreams.it','Milano','paul_jones.jpg');
insert  into `employee`(`id`,`firstName`,`lastName`,`managerId`,`title`,`department`,`officePhone`,`cellPhone`,`email`,`city`,`picture`) values (3,'Eugenio','Leoni',1,'Commerciale','Accounting','02 12345678','12345678910','eugenio@madeindreams.it','Milano','eugene_lee.jpg');
insert  into `employee`(`id`,`firstName`,`lastName`,`managerId`,`title`,`department`,`officePhone`,`cellPhone`,`email`,`city`,`picture`) values (4,'Gianni','Albertini',1,'Progettazione','Engineering','02 12345678','12345678910','gianni@madeindreams.it','Milano','john_williams.jpg');
insert  into `employee`(`id`,`firstName`,`lastName`,`managerId`,`title`,`department`,`officePhone`,`cellPhone`,`email`,`city`,`picture`) values (2,'Giulia','Sartori',1,'Marketing','Marketing','02 12345678','12345678910','giulia@madeindreams.it','Milano','julie_taylor.jpg');
insert  into `employee`(`id`,`firstName`,`lastName`,`managerId`,`title`,`department`,`officePhone`,`cellPhone`,`email`,`city`,`picture`) values (1,'Giacomo','Verdi',0,'Presidente e CEO','Corporate','02 12345678','12345678910','giacomo@madeindreams.it','Milano','james_king.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
