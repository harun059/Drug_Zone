-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema angular_js
--

CREATE DATABASE IF NOT EXISTS angular_js;
USE angular_js;

--
-- Definition of table `company_product`
--

DROP TABLE IF EXISTS `company_product`;
CREATE TABLE `company_product` (
  `cp_id` int(10) unsigned NOT NULL auto_increment,
  `cp_brand_name` varchar(45) NOT NULL,
  `cp_group_name` varchar(45) NOT NULL,
  `cp_type` varchar(45) NOT NULL,
  `cp_unit` varchar(45) NOT NULL,
  `cp_company_name` varchar(45) NOT NULL,
  PRIMARY KEY  (`cp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_product`
--

/*!40000 ALTER TABLE `company_product` DISABLE KEYS */;
INSERT INTO `company_product` (`cp_id`,`cp_brand_name`,`cp_group_name`,`cp_type`,`cp_unit`,`cp_company_name`) VALUES 
 (1,'Napa','Paracetamal','Tablet-500mg','Box-100','Beximco'),
 (3,'ddd','ddd','dd','dd','ddll');
/*!40000 ALTER TABLE `company_product` ENABLE KEYS */;


--
-- Definition of table `drug_company`
--

DROP TABLE IF EXISTS `drug_company`;
CREATE TABLE `drug_company` (
  `dc_id` int(10) unsigned NOT NULL auto_increment,
  `dc_nick_name` varchar(45) NOT NULL,
  `dc_full_name` varchar(45) NOT NULL,
  `dc_address` varchar(100) NOT NULL,
  `dc_phone` varchar(45) NOT NULL,
  PRIMARY KEY  (`dc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug_company`
--

/*!40000 ALTER TABLE `drug_company` DISABLE KEYS */;
INSERT INTO `drug_company` (`dc_id`,`dc_nick_name`,`dc_full_name`,`dc_address`,`dc_phone`) VALUES 
 (1,'ACI','ACI Ltd.','ACI Centre, 245, Tejgaon I/A, Dhaka-1212, bangladesh.','+880-2-9885694'),
 (2,'Beximco','Beximco Pharmaceuticals Ltd','19, Dhanmondi R/A, Road No. 7, Dhaka 1205.','+880-2-8619151-5'),
 (3,'Opsonin ','Opsonin Pharma Ltd.','30, New Eskaton Road, Dhaka-1000.','+880-2-9332262'),
 (9,'aa11','ACI Ltd.','ACI Centre, 245, Tejgaon I/A, Dhaka-1212, bangladesh.','+880-2-9885694');
/*!40000 ALTER TABLE `drug_company` ENABLE KEYS */;


--
-- Definition of table `drug_detail`
--

DROP TABLE IF EXISTS `drug_detail`;
CREATE TABLE `drug_detail` (
  `dd_id` int(10) unsigned NOT NULL auto_increment,
  `dd_brand_name` varchar(45) NOT NULL,
  `dd_group_name` varchar(45) NOT NULL,
  `dd_type` varchar(45) NOT NULL,
  `dd_company_name` varchar(45) NOT NULL,
  `dd_unit` varchar(45) NOT NULL,
  `dd_qty` double NOT NULL,
  `dd_unit_buy` double NOT NULL,
  `dd_unit_sale` double NOT NULL,
  `dd_total_buy` double NOT NULL,
  `dd_total_sale` double NOT NULL,
  PRIMARY KEY  (`dd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug_detail`
--

/*!40000 ALTER TABLE `drug_detail` DISABLE KEYS */;
INSERT INTO `drug_detail` (`dd_id`,`dd_brand_name`,`dd_group_name`,`dd_type`,`dd_company_name`,`dd_unit`,`dd_qty`,`dd_unit_buy`,`dd_unit_sale`,`dd_total_buy`,`dd_total_sale`) VALUES 
 (2,'Napa','Paracetamol','Tablet','Beximco','Box-100',5,500,600,2500,3000),
 (3,'HDD-5','Paracetamol','ACI Centre, 245, T','Beximco','Tablet',30,400,400,400,400),
 (4,'Mouse1','Paracetamol','Beximco','Beximco','Tablet',300,400,400,400,300);
/*!40000 ALTER TABLE `drug_detail` ENABLE KEYS */;


--
-- Definition of table `drug_group_name`
--

DROP TABLE IF EXISTS `drug_group_name`;
CREATE TABLE `drug_group_name` (
  `dg_id` int(10) unsigned NOT NULL auto_increment,
  `dg_name` varchar(200) NOT NULL,
  PRIMARY KEY  USING BTREE (`dg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug_group_name`
--

/*!40000 ALTER TABLE `drug_group_name` DISABLE KEYS */;
INSERT INTO `drug_group_name` (`dg_id`,`dg_name`) VALUES 
 (1,'Paracetamol & Caffeine'),
 (2,'Paracetamol'),
 (3,'Paracetamol+Tramadol');
/*!40000 ALTER TABLE `drug_group_name` ENABLE KEYS */;


--
-- Definition of table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `pname` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `qty` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`pid`,`pname`,`price`,`qty`) VALUES 
 (15,'Mouse1',100,100),
 (16,'Mouse2',300,40),
 (17,'HDD-1',3500,30),
 (18,'HDD-4',100,40),
 (26,'HDD-1',300,40);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
