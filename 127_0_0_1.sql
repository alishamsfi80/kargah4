-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 08, 2023 at 03:01 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--
CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET ucs2 COLLATE ucs2_persian_ci;
USE `hotel`;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `capacity` int(11) NOT NULL DEFAULT '2',
  `price` float NOT NULL,
  `image` varchar(50) COLLATE ucs2_persian_ci NOT NULL,
  `explain` text COLLATE ucs2_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=ucs2 COLLATE=ucs2_persian_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `capacity`, `price`, `image`, `explain`) VALUES
(7, 2, 300, 'images/room2.jpg', ''),
(2, 2, 200, 'images/room3.jpg', 'with bed room');

-- --------------------------------------------------------

--
-- Table structure for table `room_rezerv`
--

DROP TABLE IF EXISTS `room_rezerv`;
CREATE TABLE IF NOT EXISTS `room_rezerv` (
  `id_rezerv` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `rezerv` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_rezerv`),
  KEY `room_id` (`room_id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=ucs2 COLLATE=ucs2_persian_ci;

--
-- Dumping data for table `room_rezerv`
--

INSERT INTO `room_rezerv` (`id_rezerv`, `room_id`, `day`, `rezerv`, `user_id`) VALUES
(1, 2, 1, 0, NULL),
(2, 2, 2, 0, NULL),
(3, 2, 3, 0, NULL),
(4, 2, 4, 0, NULL),
(5, 2, 5, 0, NULL),
(6, 2, 6, 0, NULL),
(7, 2, 7, 0, NULL),
(8, 7, 1, 0, 7),
(9, 7, 2, 0, 7),
(10, 7, 3, 0, 7),
(11, 7, 4, 0, 7),
(12, 7, 5, 0, NULL),
(13, 7, 6, 0, NULL),
(14, 7, 7, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE ucs2_persian_ci NOT NULL,
  `last_name` varchar(50) COLLATE ucs2_persian_ci NOT NULL,
  `national_code` varchar(50) COLLATE ucs2_persian_ci NOT NULL,
  `email` varchar(50) COLLATE ucs2_persian_ci NOT NULL,
  `phone_number` varchar(50) COLLATE ucs2_persian_ci NOT NULL,
  `password` varchar(50) COLLATE ucs2_persian_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `national_code` (`national_code`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=ucs2 COLLATE=ucs2_persian_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `national_code`, `email`, `phone_number`, `password`, `is_admin`) VALUES
(7, 'sima', 'skandari', '123456', 'sima@gmail.com', '123456', '123456', 1),
(6, 'ali', 'shams', '3150629624', 'ali@gmail.com', '09922417276', '123456', 0);
--
-- Database: `prestashop`
--
CREATE DATABASE IF NOT EXISTS `prestashop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `prestashop`;

-- --------------------------------------------------------

--
-- Table structure for table `ps_accessory`
--

DROP TABLE IF EXISTS `ps_accessory`;
CREATE TABLE IF NOT EXISTS `ps_accessory` (
  `id_product_1` int(10) UNSIGNED NOT NULL,
  `id_product_2` int(10) UNSIGNED NOT NULL,
  KEY `accessory_product` (`id_product_1`,`id_product_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_address`
--

DROP TABLE IF EXISTS `ps_address`;
CREATE TABLE IF NOT EXISTS `ps_address` (
  `id_address` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_country` int(10) UNSIGNED NOT NULL,
  `id_state` int(10) UNSIGNED DEFAULT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_manufacturer` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_supplier` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_warehouse` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `postcode` varchar(12) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `other` text,
  `phone` varchar(32) DEFAULT NULL,
  `phone_mobile` varchar(32) DEFAULT NULL,
  `vat_number` varchar(32) DEFAULT NULL,
  `dni` varchar(16) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_address`),
  KEY `address_customer` (`id_customer`),
  KEY `id_country` (`id_country`),
  KEY `id_state` (`id_state`),
  KEY `id_manufacturer` (`id_manufacturer`),
  KEY `id_supplier` (`id_supplier`),
  KEY `id_warehouse` (`id_warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_alias`
--

DROP TABLE IF EXISTS `ps_alias`;
CREATE TABLE IF NOT EXISTS `ps_alias` (
  `id_alias` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `alias` varchar(191) NOT NULL,
  `search` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_alias`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_attachment`
--

DROP TABLE IF EXISTS `ps_attachment`;
CREATE TABLE IF NOT EXISTS `ps_attachment` (
  `id_attachment` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `file` varchar(40) NOT NULL,
  `file_name` varchar(128) NOT NULL,
  `file_size` bigint(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime` varchar(128) NOT NULL,
  PRIMARY KEY (`id_attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_attachment_lang`
--

DROP TABLE IF EXISTS `ps_attachment_lang`;
CREATE TABLE IF NOT EXISTS `ps_attachment_lang` (
  `id_attachment` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id_attachment`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_attribute_impact`
--

DROP TABLE IF EXISTS `ps_attribute_impact`;
CREATE TABLE IF NOT EXISTS `ps_attribute_impact` (
  `id_attribute_impact` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_product` int(11) UNSIGNED NOT NULL,
  `id_attribute` int(11) UNSIGNED NOT NULL,
  `weight` decimal(20,6) NOT NULL,
  `price` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_attribute_impact`),
  UNIQUE KEY `id_product` (`id_product`,`id_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_carrier`
--

DROP TABLE IF EXISTS `ps_carrier`;
CREATE TABLE IF NOT EXISTS `ps_carrier` (
  `id_carrier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_reference` int(10) UNSIGNED NOT NULL,
  `id_tax_rules_group` int(10) UNSIGNED DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `shipping_handling` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `range_behavior` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_module` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_free` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `shipping_external` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `need_range` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_module_name` varchar(64) DEFAULT NULL,
  `shipping_method` int(2) NOT NULL DEFAULT '0',
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `max_width` int(10) DEFAULT '0',
  `max_height` int(10) DEFAULT '0',
  `max_depth` int(10) DEFAULT '0',
  `max_weight` decimal(20,6) DEFAULT '0.000000',
  `grade` int(10) DEFAULT '0',
  PRIMARY KEY (`id_carrier`),
  KEY `deleted` (`deleted`,`active`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`),
  KEY `reference` (`id_reference`,`deleted`,`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_carrier_lang`
--

DROP TABLE IF EXISTS `ps_carrier_lang`;
CREATE TABLE IF NOT EXISTS `ps_carrier_lang` (
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_lang` int(10) UNSIGNED NOT NULL,
  `delay` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id_lang`,`id_shop`,`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_carrier_zone`
--

DROP TABLE IF EXISTS `ps_carrier_zone`;
CREATE TABLE IF NOT EXISTS `ps_carrier_zone` (
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `id_zone` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_zone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart`
--

DROP TABLE IF EXISTS `ps_cart`;
CREATE TABLE IF NOT EXISTS `ps_cart` (
  `id_cart` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `delivery_option` text NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `id_address_delivery` int(10) UNSIGNED NOT NULL,
  `id_address_invoice` int(10) UNSIGNED NOT NULL,
  `id_currency` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_guest` int(10) UNSIGNED NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `recyclable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `gift` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `gift_message` text,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  `allow_seperated_package` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `checkout_session_data` mediumtext,
  PRIMARY KEY (`id_cart`),
  KEY `cart_customer` (`id_customer`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_guest` (`id_guest`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_shop_2` (`id_shop`,`date_upd`),
  KEY `id_shop` (`id_shop`,`date_add`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_cart_rule`
--

DROP TABLE IF EXISTS `ps_cart_cart_rule`;
CREATE TABLE IF NOT EXISTS `ps_cart_cart_rule` (
  `id_cart` int(10) UNSIGNED NOT NULL,
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_cart`,`id_cart_rule`),
  KEY `id_cart_rule` (`id_cart_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_product`
--

DROP TABLE IF EXISTS `ps_cart_product`;
CREATE TABLE IF NOT EXISTS `ps_cart_product` (
  `id_cart` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_address_delivery` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_product_attribute` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_customization` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_cart`,`id_product`,`id_product_attribute`,`id_customization`,`id_address_delivery`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_cart_order` (`id_cart`,`date_add`,`id_product`,`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule`
--

DROP TABLE IF EXISTS `ps_cart_rule`;
CREATE TABLE IF NOT EXISTS `ps_cart_rule` (
  `id_cart_rule` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `description` text,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `quantity_per_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `priority` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `partial_use` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `code` varchar(254) NOT NULL,
  `minimum_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `minimum_amount_tax` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_amount_currency` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `minimum_amount_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `country_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `carrier_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `cart_rule_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `product_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `shop_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `reduction_percent` decimal(5,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_tax` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `reduction_currency` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reduction_product` int(10) NOT NULL DEFAULT '0',
  `reduction_exclude_special` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `gift_product` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gift_product_attribute` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `highlight` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_cart_rule`),
  KEY `id_customer` (`id_customer`,`active`,`date_to`),
  KEY `group_restriction` (`group_restriction`,`active`,`date_to`),
  KEY `id_customer_2` (`id_customer`,`active`,`highlight`,`date_to`),
  KEY `group_restriction_2` (`group_restriction`,`active`,`highlight`,`date_to`),
  KEY `date_from` (`date_from`),
  KEY `date_to` (`date_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_carrier`
--

DROP TABLE IF EXISTS `ps_cart_rule_carrier`;
CREATE TABLE IF NOT EXISTS `ps_cart_rule_carrier` (
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_carrier` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_combination`
--

DROP TABLE IF EXISTS `ps_cart_rule_combination`;
CREATE TABLE IF NOT EXISTS `ps_cart_rule_combination` (
  `id_cart_rule_1` int(10) UNSIGNED NOT NULL,
  `id_cart_rule_2` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_cart_rule_1`,`id_cart_rule_2`),
  KEY `id_cart_rule_1` (`id_cart_rule_1`),
  KEY `id_cart_rule_2` (`id_cart_rule_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_country`
--

DROP TABLE IF EXISTS `ps_cart_rule_country`;
CREATE TABLE IF NOT EXISTS `ps_cart_rule_country` (
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_country` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_group`
--

DROP TABLE IF EXISTS `ps_cart_rule_group`;
CREATE TABLE IF NOT EXISTS `ps_cart_rule_group` (
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_group` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_lang`
--

DROP TABLE IF EXISTS `ps_cart_rule_lang`;
CREATE TABLE IF NOT EXISTS `ps_cart_rule_lang` (
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(254) NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_product_rule`
--

DROP TABLE IF EXISTS `ps_cart_rule_product_rule`;
CREATE TABLE IF NOT EXISTS `ps_cart_rule_product_rule` (
  `id_product_rule` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_product_rule_group` int(10) UNSIGNED NOT NULL,
  `type` enum('products','categories','attributes','manufacturers','suppliers') NOT NULL,
  PRIMARY KEY (`id_product_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_product_rule_group`
--

DROP TABLE IF EXISTS `ps_cart_rule_product_rule_group`;
CREATE TABLE IF NOT EXISTS `ps_cart_rule_product_rule_group` (
  `id_product_rule_group` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_rule_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_product_rule_value`
--

DROP TABLE IF EXISTS `ps_cart_rule_product_rule_value`;
CREATE TABLE IF NOT EXISTS `ps_cart_rule_product_rule_value` (
  `id_product_rule` int(10) UNSIGNED NOT NULL,
  `id_item` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_product_rule`,`id_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_shop`
--

DROP TABLE IF EXISTS `ps_cart_rule_shop`;
CREATE TABLE IF NOT EXISTS `ps_cart_rule_shop` (
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_category`
--

DROP TABLE IF EXISTS `ps_category`;
CREATE TABLE IF NOT EXISTS `ps_category` (
  `id_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) UNSIGNED NOT NULL,
  `id_shop_default` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `level_depth` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `nleft` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `nright` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_root_category` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`),
  KEY `category_parent` (`id_parent`),
  KEY `nleftrightactive` (`nleft`,`nright`,`active`),
  KEY `level_depth` (`level_depth`),
  KEY `nright` (`nright`),
  KEY `activenleft` (`active`,`nleft`),
  KEY `activenright` (`active`,`nright`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_category_group`
--

DROP TABLE IF EXISTS `ps_category_group`;
CREATE TABLE IF NOT EXISTS `ps_category_group` (
  `id_category` int(10) UNSIGNED NOT NULL,
  `id_group` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_category`,`id_group`),
  KEY `id_category` (`id_category`),
  KEY `id_group` (`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_category_lang`
--

DROP TABLE IF EXISTS `ps_category_lang`;
CREATE TABLE IF NOT EXISTS `ps_category_lang` (
  `id_category` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id_category`,`id_shop`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_category_product`
--

DROP TABLE IF EXISTS `ps_category_product`;
CREATE TABLE IF NOT EXISTS `ps_category_product` (
  `id_category` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`,`id_product`),
  KEY `id_product` (`id_product`),
  KEY `id_category` (`id_category`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms`
--

DROP TABLE IF EXISTS `ps_cms`;
CREATE TABLE IF NOT EXISTS `ps_cms` (
  `id_cms` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_category` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `indexation` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_cms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_category`
--

DROP TABLE IF EXISTS `ps_cms_category`;
CREATE TABLE IF NOT EXISTS `ps_cms_category` (
  `id_cms_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) UNSIGNED NOT NULL,
  `level_depth` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_cms_category`),
  KEY `category_parent` (`id_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_category_lang`
--

DROP TABLE IF EXISTS `ps_cms_category_lang`;
CREATE TABLE IF NOT EXISTS `ps_cms_category_lang` (
  `id_cms_category` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id_cms_category`,`id_shop`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_category_shop`
--

DROP TABLE IF EXISTS `ps_cms_category_shop`;
CREATE TABLE IF NOT EXISTS `ps_cms_category_shop` (
  `id_cms_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_cms_category`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_lang`
--

DROP TABLE IF EXISTS `ps_cms_lang`;
CREATE TABLE IF NOT EXISTS `ps_cms_lang` (
  `id_cms` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `meta_title` varchar(255) NOT NULL,
  `head_seo_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(512) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `content` longtext,
  `link_rewrite` varchar(128) NOT NULL,
  PRIMARY KEY (`id_cms`,`id_shop`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_attachment`
--

DROP TABLE IF EXISTS `ps_product_attachment`;
CREATE TABLE IF NOT EXISTS `ps_product_attachment` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_attachment` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_product`,`id_attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Database: `shop_db`
--
CREATE DATABASE IF NOT EXISTS `shop_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_persian_ci;
USE `shop_db`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `detail` text COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `username`, `detail`) VALUES
(1, 'ali', 'ØªØ³Øª Ø§Ø±Ø³Ø§Ù„');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `orderdate` date NOT NULL,
  `pro_code` int(10) NOT NULL,
  `pro_qty` int(10) NOT NULL,
  `pro_price` float NOT NULL,
  `mobile` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `address` varchar(400) COLLATE utf8_persian_ci NOT NULL,
  `trackcode` varchar(24) COLLATE utf8_persian_ci NOT NULL,
  `state` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `username`, `orderdate`, `pro_code`, `pro_qty`, `pro_price`, `mobile`, `address`, `trackcode`, `state`) VALUES
(1, 'ali', '2017-08-06', 2, 200, 60000, '09163410272', 'Ø®ÙˆØ²Ø³ØªØ§Ù† Ø¯Ø²ÙÙˆÙ„ Ø®ÛŒØ§Ø¨Ø§Ù† Ø¹Ø§Ø±Ù Ø¯Ø²ÙÙˆÙ„ÛŒ Ø¨ÛŒÙ† Ø®ÛŒØ§Ø¨Ø§Ù† Ø¨Ù‡Ø´ØªÛŒ Ùˆ Ø®ÛŒØ§Ø¨Ø§Ù† Ø­Ø¶Ø±Øª Ø±Ø³ÙˆÙ„ (Øµ) Ù¾Ù„Ø§Ú© 92', '000000000000000000000000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `pro_code` int(10) NOT NULL,
  `pro_name` varchar(200) COLLATE utf8_persian_ci NOT NULL,
  `pro_qty` int(10) NOT NULL,
  `pro_price` float NOT NULL,
  `pro_image` varchar(80) COLLATE utf8_persian_ci NOT NULL,
  `pro_detail` text COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`pro_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pro_code`, `pro_name`, `pro_qty`, `pro_price`, `pro_image`, `pro_detail`) VALUES
(1, 'Ù‚Ø·Ø§Ø¨ ÙˆÛŒÚ˜Ù‡ ÛŒØ²Ø¯', 100, 35000, 'images7.jpg', 'Ù‚Ø·Ø§Ø¨ ÛŒÚ©ÛŒ Ø§Ø² Ø´ÛŒØ±ÛŒÙ†ÛŒ Ù‡Ø§ÛŒ Ø³Ù†ØªÛŒ Ùˆ Ù¾Ø±Ø·Ø±ÙØ¯Ø§Ø± Ú©Ø´ÙˆØ± Ø¹Ø²ÛŒØ²Ù…Ø§Ù† Ø§ÛŒØ±Ø§Ù† Ø§Ø³Øª. Ø§ÛŒÙ† Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø®ÙˆØ´Ù…Ø²Ù‡ Ø§Ø² Ø³ÙˆØºØ§ØªÛŒ Ù‡Ø§ÛŒ Ø´Ù‡Ø± ÛŒØ²Ø¯ Ù…Ø­Ø³ÙˆØ¨ Ù…ÛŒ Ø´ÙˆØ¯. ØªÙ‚Ø±ÛŒØ¨Ø§ Ù…ÛŒ ØªÙˆØ§Ù† Ú¯ÙØª Ú©Ù…ØªØ± Ú©Ø³ÛŒ Ù¾ÛŒØ¯Ø§ Ù…ÛŒ Ø´ÙˆØ¯ Ú©Ù‡ Ù‚Ø·Ø§Ø¨ Ø±Ø§ Ø¯ÙˆØ³Øª Ù†Ø¯Ø§Ø´ØªÙ‡ Ø¨Ø§Ø´Ø¯. Ù‚Ø·Ø§Ø¨ Ù†Ù‡ ØªÙ†Ù‡Ø§ ÛŒÚ© Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø®ÙˆØ´Ù…Ø²Ù‡ Ø¨Ù„Ú©Ù‡ Ù…Ù‚ÙˆÛŒ Ù‡Ù… Ù‡Ø³Øª. Ù‚Ø·Ø§Ø¨ Ø±Ø§ Ù…ÛŒ ØªÙˆØ§Ù†ÛŒØ¯ Ø¨Ù‡ Ø±Ø§Ø­ØªÛŒ Ø¯Ø± Ù…Ù†Ø²Ù„ ØªÙ‡ÛŒÙ‡ Ú©Ù†ÛŒØ¯. Ù…ÛŒ ØªÙˆØ§Ù†ÛŒØ¯ Ø¢Ù† Ø±Ø§ Ø¨Ø±Ø§ÛŒ Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø¹ÛŒØ¯ Ù†ÛŒØ² ØªÙ‡ÛŒÙ‡ Ú©Ù†ÛŒØ¯ Ùˆ Ø§Ø² Ø¹Ø²ÛŒØ²Ø§Ù† Ùˆ Ù…Ù‡Ù…Ø§Ù† Ù‡Ø§ÛŒ Ø®ÙˆØ¯ØŒ Ø¨Ø§ Ø§ÛŒÙ† Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø®Ø§Øµ Ùˆ Ù‡Ù…Ù‡ Ù¾Ø³Ù†Ø¯ Ù¾Ø°ÛŒØ±Ø§ÛŒÛŒ Ú©Ù†ÛŒØ¯. Ø´Ú©Ù„ Ø¸Ø§Ù‡Ø±ÛŒ Ù‚Ø·Ø§Ø¨ Ø±Ø§ Ø¨Ù‡ Ø§Ø´Ú©Ø§Ù„ Ú¯ÙˆÙ†Ø§Ú©ÙˆÙ† Ø¯Ø±Ø³Øª Ù…ÛŒ Ú©Ù†Ù†Ø¯. Ù…Ø±Ø³ÙˆÙ… ØªØ±ÛŒÙ† Ø´Ú©Ù„ Ø¢Ù†ØŒ Ù‚Ø·Ø§Ø¨ Ú¯Ø±Ø¯ Ùˆ Ù‚Ø·Ø§Ø¨ Ø¨Ø§ Ù„Ø¨Ù‡ Ù‡Ø§ÛŒ Ú†ÛŒÙ† Ú†ÛŒÙ†ÛŒ Ø§Ø³Øª. Ù‡Ù…Ú†ÛŒÙ† Ø¨Ø±Ø§ÛŒ Ù¾ÛŒÚ†ÛŒØ¯Ù† Ù‚Ø·Ø§Ø¨ Ø§Ø² Ù‚Ø§Ù„Ø¨ Ù‡Ø§ÛŒ Ù…Ø®ØµÙˆØµ Ù¾ÛŒØ±Ø§Ø´Ú©ÛŒ Ù‡Ù… Ù…ÛŒ ØªÙˆØ§Ù† Ø§Ø³ØªÙØ§Ø¯Ù‡ Ú©Ø±Ø¯.'),
(2, 'Ù¾Ø±ØªÙ‚Ø§Ù„ Ø¨Ø§ Ú©ÛŒÙÛŒØª Ø¯Ø²ÙÙˆÙ„', 2000, 60000, 'orange-tree.jpg', '       	Ø¯Ø²ÙÙˆÙ„ ÛŒÚ©ÛŒ Ø§Ø² Ù‚Ø·Ø¨â€ŒÙ‡Ø§ÛŒ Ù…Ù‡Ù… Ú©Ø´Ø§ÙˆØ±Ø²ÛŒ Ø§ÛŒØ±Ø§Ù† Ø§Ø³Øª. Ø®Ø§Ú© Ø­Ø§ØµÙ„Ø®ÛŒØ² Ùˆ Ø¢Ø¨ Ú©Ø§ÙÛŒ Ø´Ø±Ø§ÛŒØ· Ù…Ù†Ø§Ø³Ø¨ÛŒ Ø±Ø§ Ø¨Ø±Ø§ÛŒ Ú©Ø´Øª Ù…Ø±Ú©Ø¨Ø§ØªØŒ ØµÛŒÙÛŒ Ø¬Ø§Øª Ùˆ Ú¯Ù„ Ùˆ Ú¯ÛŒØ§Ù‡ ÙØ±Ø§Ù‡Ù… Ú©Ø±Ø¯Ù‡ Ø§Ø³Øª. Ù…Ø±Ú©Ø¨Ø§Øª Ø¯Ø²ÙÙˆÙ„ Ø¨Ø®ØµÙˆØµ Ù¾Ø±ØªÙ‚Ø§Ù„ Ø§Ø² Ø³Ø§Ù„Ù…ØªØ±ÛŒÙ† Ùˆ Ù…Ø±ØºÙˆØ¨â€ŒØªØ±ÛŒÙ† Ù†ÙˆØ¹ Ù…Ø±Ú©Ø¨Ø§Øª Ú©Ø´ÙˆØ± Ù…Ø­Ø³ÙˆØ¨ Ù…ÛŒâ€ŒØ´ÙˆÙ†Ø¯. Ø¯Ø²ÙÙˆÙ„ Ø§Ø² Ù†Ø¸Ø± ØªÙˆÙ„ÛŒØ¯ Ú¯Ù„â€ŒÙ‡Ø§ÛŒ Ø±Ø² Ùˆ Ù…Ø±ÛŒÙ… Ø¯Ø± Ú©Ø´ÙˆØ± Ø¨Ø§Ù„Ø§ØªØ±ÛŒÙ† Ø±ØªØ¨Ù‡ Ø±Ø§ Ø¯Ø§Ø±Ø§Ø³Øª. Ø¨Ø®Ø´ Ø¹Ù…Ø¯Ù‡â€ŒØ§ÛŒ Ø§Ø² ØªÙˆÙ„ÛŒØ¯Ø§Øª Ú¯Ù„ Ø¯Ø²ÙÙˆÙ„ Ø¨Ù‡ Ø³Ø§ÛŒØ± Ø§Ø³ØªØ§Ù†â€ŒÙ‡Ø§ Ùˆ Ø®Ø§Ø±Ø¬ Ø§Ø² Ú©Ø´ÙˆØ± ØµØ§Ø¯Ø± Ù…ÛŒâ€ŒØ´ÙˆÙ†Ø¯.\r\n\r\nÚ©Ø´Ø§ÙˆØ±Ø²ÛŒ Ø¯Ø± Ø¯Ø²ÙÙˆÙ„ Ø³Ø§Ø¨Ù‚Ù‡â€ŒØ§ÛŒ ØªØ§Ø±ÛŒØ®ÛŒ Ø¯Ø§Ø±Ø¯. Ø¨Ø®Ø´ ØºÛŒØ± Ú©ÙˆÙ‡Ø³ØªØ§Ù†ÛŒ Ø¯Ø²ÙÙˆÙ„ Ù¾Ø±Ø¢Ø¨â€ŒØªØ±ÛŒÙ† Ù…Ù†Ø·Ù‚Ù‡ Ú©Ø´Ø§ÙˆØ±Ø²ÛŒ Ø§Ø³ØªØ§Ù† Ø®ÙˆØ²Ø³ØªØ§Ù† Ø§Ø³Øª. Ø§ÛŒÙ† Ø§Ù…Ø± Ù…ÙˆØ¬Ø¨ Ø±ÙˆÙ†Ù‚ Ú©Ø´Ø§ÙˆØ±Ø²ÛŒ Ø¯Ø± Ø§ÛŒÙ† Ø´Ù‡Ø±Ø³ØªØ§Ù† Ø´Ø¯Ù‡ Ø§Ø³Øª Ùˆ Ø¯Ø²ÙÙˆÙ„ Ø±Ø§ Ø¨Ù‡ Ø¹Ù†ÙˆØ§Ù† ÛŒÚ©ÛŒ Ø§Ø² Ù‚Ø·Ø¨â€ŒÙ‡Ø§ÛŒ Ú©Ø´Ø§ÙˆØ±Ø²ÛŒ Ø§Ø³ØªØ§Ù† Ù…Ø·Ø±Ø­ Ù†Ù…ÙˆØ¯Ù‡ Ø§Ø³Øª. Ø´Ù‡Ø±Ø³ØªØ§Ù† Ø¯Ø²ÙÙˆÙ„ Ø§Ø² Ø®Ø§Ú© Ø¨Ø³ÛŒØ§Ø± Ù…Ø±ØºÙˆØ¨ØŒ Ù‡ÙˆØ§ÛŒ Ù…Ù†Ø§Ø³Ø¨ Ùˆ Ø¢Ø¨ ÙØ±Ø§ÙˆØ§Ù† Ø¨Ø§ Ø´Ø¨Ú©Ù‡â€ŒÙ‡Ø§ÛŒ Ù…Ø¯Ø±Ù† Ø¢Ø¨ÛŒØ§Ø±ÛŒØŒ ÙˆØ¬ÙˆØ¯ Ù…Ø±Ú©Ø² ØªØ­Ù‚ÛŒÙ‚Ø§Øª Ú©Ø´Ø§ÙˆØ±Ø²ÛŒ ØµÙÛŒ Ø¢Ø¨Ø§Ø¯ Ø¨Ø§ Ø³Ø§Ø¨Ù‚Ù‡ ÛµÛ² Ø³Ø§Ù„Ù‡ Ùˆ Ù†ÛŒØ² Ø¯Ùˆ Ø´Ø±Ú©Øª Ø¨Ø²Ø±Ú¯ Ú©Ø´Øª Ùˆ ØµÙ†Ø¹Øª Ø´Ù‡ÛŒØ¯ Ø¨Ù‡Ø´ØªÛŒ Ùˆ Ø´Ù‡ÛŒØ¯ Ø±Ø¬Ø§ÛŒÛŒØŒ Ø¨Ø±Ø®ÙˆØ±Ø¯Ø§Ø± Ø§Ø³Øª       '),
(3, 'Ú¯Ø² Ø§Ø¹Ù„Ø§ÛŒ Ø§ØµÙÙ‡Ø§Ù†', 182, 80000, 'gaz.jpg', 'Ú¯Ø² Ø³ÙˆØºØ§Øª Ø§ØµÙÙ‡Ø§Ù† Ùˆ Ú©Ø±Ù…Ø§Ù†ØŒ ÛŒØ²Ø¯ Ùˆ Ú†Ù‡Ø§Ø± Ù…Ø­Ø§Ù„ Ùˆ Ø¨Ø®ØªÛŒØ§Ø±ÛŒ ÛŒÚ©ÛŒ Ø§Ø² ØªÙ†Ù‚Ù„Ø§Øª Ø´ÛŒØ±ÛŒÙ† Ù…Ø¹Ø±ÙˆÙ Ùˆ Ø³Ù†ØªÛŒ Ø§ÛŒØ±Ø§Ù† Ø§Ø³Øª.Ø§ÙˆÙ„ÛŒÙ† ØªÙˆÙ„ÛŒØ¯ Ú©Ù†Ù†Ø¯Ù‡ Ùˆ Ø§Ù„Ø¨ØªÙ‡ Ù…Ø®ØªØ±Ø¹ Ú¯Ø² ÙØ±Ø¯ÛŒ Ø¨Ù‡ Ù†Ø§Ù… Ù…Ø­Ù…Ø¯ Ø¹Ù„ÛŒ Ø´Ú©Ø±Ú†ÛŒØ§Ù† Ø¯Ø± Ø§ØµÙÙ‡Ø§Ù† Ø¨ÙˆØ¯Ù‡ Ø§Ø³Øª. Ø¯Ø± Ù…Ù†Ø§Ø·Ù‚ Ù…Ø±Ú©Ø²ÛŒ Ø§ÛŒØ±Ø§Ù† (Ø¨Ø®ØµÙˆØµ Ø§Ø³ØªØ§Ù†â€ŒÙ‡Ø§ÛŒ Ø§ØµÙÙ‡Ø§Ù†ØŒ Ú†Ù‡Ø§Ø± Ù…Ø­Ø§Ù„ Ùˆ Ø¨Ø®ØªÛŒØ§Ø±ÛŒØŒ ÛŒØ²Ø¯ØŒ Ú©Ø±Ù…Ø§Ù† Ùˆ ÙØ§Ø±Ø³ Ù¾Ø®Øª Ù…ÛŒâ€ŒØ´ÙˆØ¯). Ù…ÙˆØ§Ø¯ Ù„Ø§Ø²Ù… Ø¨Ø±Ø§ÛŒ ØªÙ‡ÛŒÙ‡ Ú¯Ø² Ø§Ø² Ø´Ú©Ø±ØŒ Ø³ÙÛŒØ¯Ù‡ ØªØ®Ù… Ù…Ø±ØºØŒ Ù…ØºØ² Ø¨Ø§Ø¯Ø§Ù… Ùˆ Ù¾Ø³ØªÙ‡ Ùˆ Ù‡Ù„ Ùˆ Ú¯Ù„Ø§Ø¨ Ø§Ø³ØªÙØ§Ø¯Ù‡ Ù…ÛŒâ€ŒØ´ÙˆØ¯. Ø§Ù„Ø¨ØªÙ‡ Ø¨Ø±Ø®ÛŒ ØªÙˆÙ„ÛŒØ¯Ú©Ù†Ù†Ø¯Ú¯Ø§Ù† Ú¯Ø² Ø§Ø² Ù†ÙˆØ¹ÛŒ Ù…Ø§Ø¯Ù‡ Ø¨Ù‡ Ù†Ø§Ù… Ø¨Ø§Ø¯Ú©Ø§ Ú©Ù‡ Ø§Ø² Ø³ÛŒØ¨ Ø²Ù…ÛŒÙ†ÛŒ ØªÙˆÙ„ÛŒØ¯ Ù…ÛŒâ€ŒØ´ÙˆØ¯ Ù†ÛŒØ² Ø§Ø³ØªÙØ§Ø¯Ù‡ Ù…ÛŒâ€ŒÚ©Ù†Ù†Ø¯ Ú©Ù‡ Ø§ÛŒÙ† Ù…Ø§Ø¯Ù‡ Ø§Ø±Ø²Ø´ ØºØ°Ø§ÛŒÛŒ Ø¢Ù† Ø±Ø§ Ù¾Ø§ÛŒÛŒÙ† Ù…ÛŒâ€ŒØ¢ÙˆØ±Ø¯.\n\nÚ¯Ø²Ø§ØµÙÙ‡Ø§Ù† Ùˆ Ú¯Ø² Ú†Ù‡Ø§Ø± Ù…Ø­Ø§Ù„ Ùˆ Ø¨Ø®ØªÛŒØ§Ø±ÛŒ Ú©Ù‡ Ø¯Ø± Ø¨Ù„Ø¯Ø§Ø¬ÛŒ Ø§Ø² ØªÙˆØ§Ø¨Ø¹ Ø¨Ø±ÙˆØ¬Ù† ØªÙˆÙ„ÛŒØ¯ Ù…ÛŒâ€ŒØ´ÙˆÙ†Ø¯ Ù…Ø±ØºÙˆØ¨â€ŒØªØ±ÛŒÙ† Ù†ÙˆØ¹ Ú¯Ø² Ù‡Ø³ØªÙ†Ø¯.\n\nÙ†ÙˆØ¹ Ø§ØµÛŒÙ„ Ø§ÛŒÙ† Ø´ÛŒØ±ÛŒÙ†ÛŒ Ú©Ù‡ Ù‡Ù†ÙˆØ² Ù‡Ù… Ø¨ØµÙˆØ±Øª Ø³ÙØ§Ø±Ø´ÛŒ Ø³Ø§Ø®ØªÙ‡ Ù…ÛŒâ€ŒØ´ÙˆØ¯ Ø¯Ø§Ø±Ø§ÛŒ Ø¯Ø±ØµØ¯ Ú©Ù…ÛŒ Ø§Ø² Ø¹ØµØ§Ø±Ù‡ Ú¯Ø±Ø§Ù†Ø¨Ù‡Ø§ÛŒ Ú¯Ø²Ø§Ù†Ú¯Ø¨ÛŒÙ† Ø§Ø³Øª. Ø§Ø±Ø²Ø´ Ú¯Ø²Ø§Ù†Ú¯Ø¨ÛŒÙ† Ø¯Ø§Ø± Ù…Ø¹Ù…ÙˆÙ„Ø§Ù‹ Û´ ØªØ§ Ûµ Ø¨Ø±Ø§Ø¨Ø± Ø§Ø±Ø²Ø´ Ø´ÛŒØ±ÛŒÙ†ÛŒ Ú¯Ø² Ù…Ø¹Ù…ÙˆÙ„ÛŒ Ø§Ø³Øª.'),
(4, 'Ù¾Ø³ØªÙ‡ Ù…Ø±ØºÙˆØ¨ Ø§ÛŒØ±Ø§Ù†', 1800, 550000, 'images12.jpg', 'Ù¾Ø³ØªÙ‡ Ø³Ø±Ø´Ø§Ø± Ø§Ø² Ù…Ø³ØŒ Ù…Ù†ÛŒØ²ÛŒÙ… Ùˆ Ø§Ù†ÙˆØ§Ø¹ ÙˆÛŒØªØ§Ù…ÛŒÙ†â€ŒÙ‡Ø§ÛŒ B Ø§Ø³Øª Ú©Ù‡ Ø³ÛŒØ³ØªÙ… Ø§ÛŒÙ…Ù†ÛŒ Ø±Ø§ ØªÙ‚ÙˆÛŒØª Ú©Ø±Ø¯Ù‡ Ùˆ Ø§Ø² Ø¨ÛŒÙ…Ø§Ø±ÛŒâ€ŒÙ‡Ø§ÛŒ Ù…ØªØ¹Ø¯Ø¯ Ù¾ÛŒØ´Ú¯ÛŒØ±ÛŒ Ù…ÛŒâ€ŒÚ©Ù†Ø¯. ÙˆÛŒØªØ§Ù…ÛŒÙ† B6 Ø¨Ø±Ø§ÛŒ Ø­ÙØ¸ Ø¹Ù…Ù„Ú©Ø±Ø¯ Ø³ÛŒØ³ØªÙ… Ø§ÛŒÙ…Ù†ÛŒ Ø¶Ø±ÙˆØ±ÛŒ Ø§Ø³Øª. Ú©Ù…Ø¨ÙˆØ¯ ÙˆÛŒØªØ§Ù…ÛŒÙ† B6 Ù…Ù†Ø¬Ø± Ø¨Ù‡ Ù†Ø§Ú©Ø§Ø±Ø¢Ù…Ø¯ÛŒ Ø³ÛŒØ³ØªÙ… Ø§ÛŒÙ…Ù†ÛŒ Ø¨Ø±Ø§ÛŒ Ù…Ù‚Ø§Ø¨Ù„Ù‡ Ø¨Ø§ Ø¹ÙÙˆÙ†Øªâ€ŒÙ‡Ø§ Ù…ÛŒâ€ŒØ´ÙˆØ¯. Ù‡Ù…Ú†Ù†ÛŒÙ† Ù…ØµØ±Ù Ù¾Ø³ØªÙ‡ Ø¨Ù‡ Ø³Ø§Ø®ØªÙ‡ Ø´Ø¯Ù† Ù…Ù†Ø§Ø³Ø¨ Ú¯Ù„Ø¨ÙˆÙ„â€ŒÙ‡Ø§ÛŒ Ù‚Ø±Ù…Ø² Ø®ÙˆÙ†ÛŒ Ú©Ù…Ú© Ù…ÛŒâ€ŒÚ©Ù†Ø¯.  Ù¾Ø³ØªÙ‡ ÛŒÚ©ÛŒ Ø§Ø² Ø¨Ù‡ØªØ±ÛŒÙ† Ù…Ù†Ø§Ø¨Ø¹ Ù¾ØªØ§Ø³ÛŒÙ… Ù…Ø­Ø³ÙˆØ¨ Ù…ÛŒâ€ŒØ´ÙˆØ¯ Ú©Ù‡ Ù…ÛŒØ²Ø§Ù† Ù¾ØªØ§Ø³ÛŒÙ… Ø¢Ù† Ø¨Ø§ Ø§ÛŒÙ† Ø¬Ø«Ù‡ Ú©ÙˆÚ†Ú© Ø¨Ø±Ø§Ø¨Ø± Ø¨Ø§ Ù¾ØªØ§Ø³ÛŒÙ… Ù¾Ø±ØªÙ‚Ø§Ù„ Ø§Ø³Øª. \r\n\r\nÙ…ØµØ±Ù Ù¾Ø³ØªÙ‡ Ú†ÙˆÙ† Ø³Ø±Ø´Ø§Ø± Ø§Ø² ÙˆÛŒØªØ§Ù…ÛŒÙ† E Ø§Ø³Øª Ø¨Ø±Ø§ÛŒ Ù¾ÙˆØ³Øª Ù…ÙÛŒØ¯ Ø§Ø³ØªØ› Ø²ÛŒØ±Ø§ ÙˆÛŒØªØ§Ù…ÛŒÙ† E Ù¾ÙˆØ³Øª Ø±Ø§ Ø§Ø² Ø¢Ø³ÛŒØ¨ Ø§Ø´Ø¹Ù‡ Ù…Ø§ÙˆØ±Ø§ÛŒ Ø¨Ù†ÙØ´ Ù…Ø­Ø§ÙØ¸Øª Ù…ÛŒâ€ŒÚ©Ù†Ø¯. \r\n\r\nÙ¾Ø³ØªÙ‡ ÛŒÚ©ÛŒ Ø§Ø² Ù…ØºØ²Ù‡Ø§ÛŒÛŒ Ø§Ø³Øª Ú©Ù‡ Ø¨ÛŒØ´ØªØ±ÛŒÙ† Ù…Ù‚Ø¯Ø§Ø± ÙÛŒØ¨Ø± Ø±Ø§ Ø¯Ø± Ø®ÙˆØ¯ Ø¯Ø§Ø±Ø¯ Ùˆ Ù…ÛŒâ€ŒØªÙˆØ§Ù†Ø¯ Ø¹Ù„Ø§ÙˆÙ‡ Ø¨Ø± Ø¨Ù‡Ø¨ÙˆØ¯ Ù‡Ø¶Ù… ØºØ°Ø§ Ø¨Ù‡ Ú©Ø§Ù‡Ø´ Ù…ÛŒØ²Ø§Ù† Ú©Ù„Ø³ØªØ±ÙˆÙ„ Ùˆ Ù‚Ù†Ø¯ Ø®ÙˆÙ† Ú©Ù…Ú© Ú©Ù†Ø¯. \r\n\r\nÙ‡Ù…Ú†Ù†ÛŒÙ† Ù¾Ø³ØªÙ‡ Ø¨Ù‡ Ø¹Ù†ÙˆØ§Ù† ÛŒÚ© Ù…Ù†Ø¨Ø¹ Ø¢Ù‡Ù† Ø¨Ø±Ø§ÛŒ Ø¬Ù„ÙˆÚ¯ÛŒØ±ÛŒ Ø§Ø² Ú©Ù…â€ŒØ®ÙˆÙ†ÛŒ Ù…ÙÛŒØ¯ Ø§Ø³Øª. \r\n\r\nÙˆØ§Ú˜Ù‡ Ù¾Ø³ØªÙ‡ Ù¾Ø§Ø±Ø³ÛŒ Ù…ÛŒâ€ŒØ¨Ø§Ø´Ø¯ Ùˆ Ø§Ø² Ø·Ø±ÛŒÙ‚ Ø²Ø¨Ø§Ù† Ù„Ø§ØªÛŒÙ† Ø§Ø² Ù¾Ø§Ø±Ø³ÛŒ ÙˆØ§Ø±Ø¯ Ø²Ø¨Ø§Ù†Ù‡Ø§ÛŒ Ø§Ø±ÙˆÙ¾Ø§ÛŒÛŒ Ø´Ø¯Ù‡â€ŒØ§Ø³Øª              '),
(5, 'Ø²ØºÙØ±Ø§Ù† Ø¯Ø±Ø¬Ù‡ ÙŠÙƒ Ø§ÛŒØ±Ø§Ù†', 600, 900000, 'index1.jpg', 'Ú©Ø´Øª Ø²Ø¹ÙØ±Ø§Ù† Ø¯Ø± Ø§ÛŒØ±Ø§Ù† Ø¨Ù‡ ÙˆÛŒÚ˜Ù‡ Ø¯Ø± Ø´Ù‡Ø±Ø³ØªØ§Ù†â€ŒÙ‡Ø§ÛŒ Ø´Ù‡Ø±Ø³ØªØ§Ù† Ø²Ø§ÙˆÙ‡ØŒ ØªØ±Ø¨Øª Ø­ÛŒØ¯Ø±ÛŒÙ‡ØŒ ØªØ§ÛŒØ¨Ø§Ø¯ØŒ Ø¨Ø§Ø®Ø±Ø²ØŒ Ú¯Ù†Ø§Ø¨Ø§Ø¯ Ùˆ Ø¨Ø¬Ø³ØªØ§Ù† Ø¯Ø± Ø§Ø³ØªØ§Ù† Ø®Ø±Ø§Ø³Ø§Ù† Ø±Ø¶ÙˆÛŒ Ùˆ Ø´Ù‡Ø±Ø³ØªØ§Ù†â€ŒÙ‡Ø§ÛŒ Ù‚Ø§Ø¦Ù†Ø§ØªØŒ ÙØ±Ø¯ÙˆØ³ØŒ Ø³Ø±Ø§ÛŒØ§Ù† Ùˆ Ø¨ÛŒØ±Ø¬Ù†Ø¯ Ø¯Ø± Ø§Ø³ØªØ§Ù† Ø®Ø±Ø§Ø³Ø§Ù† Ø¬Ù†ÙˆØ¨ÛŒ Ùˆ Ø¨Ù‡ ØªØ§Ø²Ú¯ÛŒ Ø¯Ø± Ø§Ø³ØªØ§Ù†â€ŒÙ‡Ø§ÛŒ ÙØ§Ø±Ø³ Ùˆ Ú©Ø±Ù…Ø§Ù† Ùˆ Ù„Ø±Ø³ØªØ§Ù† Ùˆ Ù‚Ø²ÙˆÛŒÙ† (Ø§Ù„Ù…ÙˆØª) Ø±ÙˆØ§Ø¬ Ø¯Ø§Ø±Ø¯.\r\n\r\nØªØ§Ø±ÛŒØ®Ú†Ù‡ Ø²Ø¹ÙØ±Ø§Ù† Ø§ÛŒØ±Ø§Ù†ÛŒØ§Ù† Ø¶Ù…Ù† ØµØ¯ÙˆØ± Ø²Ø¹ÙØ±Ø§Ù† Ø¨Ù‡ Ø¨Ø³ÛŒØ§Ø±ÛŒ Ø§Ø² Ù†Ù‚Ø§Ø· Ø¬Ù‡Ø§Ù† Ø¨Ø§Ø³ØªØ§Ù†ØŒ Ø®ÙˆØ§Øµ Ø¢Ù† Ø±Ø§ Ø¨Ù‡ ÛŒÙˆÙ†Ø§Ù†ÛŒâ€ŒÙ‡Ø§ØŒ Ø±ÙˆÙ…ÛŒâ€ŒÙ‡Ø§ØŒ Ú†ÛŒÙ†ÛŒÙ‡Ø§ Ùˆ Ø§Ù‚ÙˆØ§Ù… Ø³Ø§Ù…ÛŒ Ø§Ø² Ø¬Ù…Ù„Ù‡ Ø¹Ø±Ø¨â€ŒÙ‡Ø§ Ù…Ø¹Ø±ÙÛŒ Ú©Ø±Ø¯Ù†Ø¯ Ùˆ Ø´ÛŒÙˆÙ‡ Ø²Ø±Ø§Ø¹Øª Ø¢Ù† Ø±Ø§ Ø¯Ø± Ø³Ø¯Ù‡â€ŒÙ‡Ø§ÛŒ Ø§ÙˆÙ„ ØªØ§ Ú†Ù‡Ø§Ø±Ù… Ù‡Ø¬Ø±ÛŒ Ø¨Ù‡ Ø§Ù…Øªâ€ŒÙ‡Ø§ÛŒ Ø§Ø³Ù„Ø§Ù…ÛŒ Ø§Ø·Ø±Ø§Ù Ù…Ø¯ÛŒØªØ±Ø§Ù†Ù‡ Ø¢Ù…ÙˆØ®ØªÙ†Ø¯. Ø¨Ù‡ Ø§ÛŒÙ† ØªØ±ØªÛŒØ¨ Ú©Ù‡ Ù†Ø®Ø³ØªÛŒÙ† Ø²Ø¹ÙØ±Ø§Ù† Ú©Ø§Ø±ÛŒ Ø¨Ù‡ ÙˆØ³ÛŒÙ„Ù‡ Ø§ÛŒØ±Ø§Ù†ÛŒØ§Ù† ØªØ¨Ø¹ÛŒØ¯ Ø´Ø¯Ù‡ ØªÙˆØ³Ø· Ù…Ø¹Ø§ÙˆÛŒÙ‡ Ø¯Ø± Ù†ÙˆØ§Ø­ÛŒ Ø´Ø§Ù… Ø¯Ø§ÛŒØ± Ø´Ø¯ØŒ Ø³Ù¾Ø³ Ú©Ø§Ø´Øª Ø²Ø¹ÙØ±Ø§Ù† Ø¯Ø± Ø´Ù…Ø§Ù„ Ø¢ÙØ±ÛŒÙ‚Ø§ Ùˆ Ø§Ù†Ø¯Ù„Ø³ (Ø§Ø³Ù¾Ø§Ù†ÛŒØ§ÛŒ Ø§Ø³Ù„Ø§Ù…ÛŒ) Ùˆ ØµÙ‚Ù„ÛŒÙ‡ (Ø³ÛŒØ³ÛŒÙ„) Ø±ÙˆØ§Ø¬ ÛŒØ§ÙØª Ùˆ Ø§Ù‚ÙˆØ§Ù… Ø§ÛŒØ±Ø§Ù†ÛŒ Ù‡Ù…Ú†ÙˆÙ† Ø±Ø³ØªÙ…ÛŒØ§Ù† Ùˆ Ø¨Ù†ÙˆØ·Ø¨Ø±ÛŒ Ø¯Ø± Ø§Ù†ØªÙ‚Ø§Ù„ ÙØ±Ù‡Ù†Ú¯ Ø²Ø¹ÙØ±Ø§Ù† Ú©Ø§Ø±ÛŒ Ù…Ø¤Ø«Ø± Ø¨ÙˆØ¯Ù†Ø¯. '),
(6, 'Ø®Ø±Ù…Ø§ Ù…Ø¶Ø§ÙØªÛŒ Ø¨Ù…', 1800, 89000, '895412_946.jpg', 'Ù…ØµØ±Ù Ø³Ø±Ø§Ù†Ù‡ Ø®Ø±Ù…Ø§ Ø¯Ø± Ø§ÛŒØ±Ø§Ù† Û· Ú©ÛŒÙ„ÙˆÚ¯Ø±Ù… Ø§Ø³Øª Ú©Ù‡ Ù…ÛŒØ§Ù†Ú¯ÛŒÙ†ÛŒ Ø§Ø² Ù…ØµØ±Ù Ø³Ø±Ø§Ù†Ù‡ Û²Ûµ Ú©ÛŒÙ„ÙˆÚ¯Ø±Ù…ÛŒ Ø§Ø³ØªØ§Ù†â€ŒÙ‡Ø§ÛŒ Ø¬Ù†ÙˆØ¨ÛŒ Ùˆ Û± Ú©ÛŒÙ„ÙˆÚ¯Ø±Ù…ÛŒ Ø³Ø§ÛŒØ± Ø§Ø³ØªØ§Ù†â€ŒÙ‡Ø§ Ù…ÛŒâ€ŒØ¨Ø§Ø´Ø¯. Ø¯Ø± Ø§ÛŒØ±Ø§Ù† Ø¨Ù‡ Ø·ÙˆØ± Ø³Ø§Ù„Ø§Ù†Ù‡ØŒ Û± Ù…ÛŒÙ„ÛŒÙˆÙ† ØªÙ† Ø®Ø±Ù…Ø§ ØªÙˆÙ„ÛŒØ¯ Ù…ÛŒâ€ŒØ´ÙˆØ¯ Ú©Ù‡ Ø¹Ù…Ø¯Ù‡ Ù…ØµØ±Ù Ø¯Ø§Ø®Ù„ÛŒ Ø¢Ù† Ø¯Ø± Ù…Ø§Ù‡ Ø±Ù…Ø¶Ø§Ù† ØµÙˆØ±Øª Ù…ÛŒâ€ŒÚ¯ÛŒØ±Ø¯. Ø§Ø² Ù…ÛŒØ§Ù† Ù…Ø­ØµÙˆÙ„ Ø®Ø±Ù…Ø§ÛŒ Ù‡Ø± Ø³Ø§Ù„ Ø§ÛŒØ±Ø§Ù†ØŒ Û±Û° Ø¯Ø±ØµØ¯ Ø¨Ø±Ø§ÛŒ ØµØ§Ø¯Ø±Ø§Øª Ø¨Ù‡ Ú©Ø´ÙˆØ±Ù‡Ø§ÛŒ Ø¯ÛŒÚ¯Ø± Ø§Ø®ØªØµØ§Øµ Ù…ÛŒâ€ŒÛŒØ§Ø¨Ø¯\r\n\r\n\r\nØ§Ø±Ù‚Ø§Ù… Ø¨ÙˆÙ…ÛŒ Ø®Ø±Ù…Ø§ Ø¯Ø± Ø¨Ù„ÙˆÚ†Ø³ØªØ§Ù† Ø§ÛŒØ±Ø§Ù†ï¼šØ®Ø±Ù…Ø§ÛŒ Ù…Ø¶Ø§ÙØªÛŒ (Ù…Ø±ØºÙˆØ¨â€ŒØªØ±ÛŒÙ† Ø±Ø·Ø¨ Ø¬Ù‡Ø§Ù†)ØŒ Ø±Ø¨Ù‘ÛŒØŒ Ø´ÙŽÚ©ÙŽØ±ÛŒØŒ Ø­Ù„ÛŒÙ„Ù‡ØŒ Ø¢Ø¨Ø±ÙˆÚ¯Ù†ØŒ Ú©ÙŽÙ„ÙŽÚ¯ÛŒØŒ Ú†Ø±Ø¨Ø§Ù†ØŒ Ø­Ø§Ø´Ù‡â€ŒØ§ÛŒØŒ Ø¬ÙˆØ§Ù†Ø¯Ø§Ú©ØŒ Ø§Ø´Ú©Ù†Ø¬Ú©ØŒ Ù¾ÙÙ¾ÙˆØŒ Ø¯ÙØ³Ú©ÛŒØŒ ÙˆØ±Ø¯ÛŒÙˆØ§Ø±ØŒ Ø¨ÙŽØ±Ù†ÛŒØŒ Ú©Ù„ÙˆØªØŒ Ù…ÙÙ„Ø³ÛŒØŒ Ú©Ø±ÙˆÚ†ØŒ\r\n\r\nØ§Ø±Ù‚Ø§Ù… Ø¨ÙˆÙ…ÛŒ Ø®Ø±Ù…Ø§ÛŒ Ø¨ÙˆØ´Ù‡Ø±: Ù‚Ø³Ø¨ØŒ Ú©Ø¨Ú©Ø§Ø¨ØŒ ØµÙ…Ø±ÙˆÙ†ØŒ Ø´Ú©Ø±ØŒ Ø³ÛŒØ³ÛŒØŒ Ø­Ù„ÙŽÙˆØŒ Ø³Ø±ÙˆØ±ÛŒØŒ Ø²Ù†Ø¯Ù†ÛŒØŒ Ø®Ø´Ù† Ø®Ø§Ø±ØŒ Ø§Ø³ØªÚ© Ø³Ø±Ø®ÙˆØŒ Ù…Ø±Ø³ÙˆØŒ Ø®Ø§ØµÙˆÛŒÛŒØŒ Ø¬Ù…Ø§Ø¯ÛŒØŒ Ø¨ÛŒØ±Ù…ÛŒØŒ ØªÛŒ Ø±Ø³ØŒ Ø´Ù‡Ø§Ø¨ÛŒØŒ Ù„Ø´ØŒ Ú©Ù†Ø¯ÛŒØŒ Ø®Ù†ÛŒØ²ÛŒØŒ Ø³Ù…ÛŒÙ„ÛŒØŒ Ø®Ø¶Ø±ÙˆÛŒØŒ Ú¯Ù†ØªØ§Ø±ØŒ Ø¨Ø±ÛŒÙ…ÛŒØŒ Ø´ÛŒØ® Ø¹Ø§Ù„ÛŒØŒ Ø²Ø§Ù…Ø±Ø¯ÙˆØŒ Ø¯Ù‡ Ø¯Ø§Ø±Ø¨ØŒ Ø§Ù‡Ø±Ù…ÛŒØŒ Ø®Ø§ÙˆÛŒØ²ÛŒØŒ Ø®Ø§ÙˆØ±ØŒ Ù…Ú©ØªÛŒØŒ Ø´Ø§Ø®ÙˆÙ†ÛŒØŒ Ù…ØµÙ„ÛŒØŒ Ø¬ÙˆØ²ÛŒØŒ ØºØµØ§Ø¨ Ùˆ Ø±Ø¯Ø³ØªÛŒ\r\n    Ø§Ø±Ù‚Ø§Ù… Ø®Ø±Ù…Ø§ÛŒ Ù‡Ø±Ù…Ø²Ú¯Ø§Ù†: Ø®Ø±Ù…Ø§ÛŒ Ù¾ÛŒØ§Ø±Ù…ØŒ Ù…Ø±Ø¯Ø§Ø³Ù†Ú¯ØŒ Ù‡Ù„ÛŒÙ„ÛŒØŒ Ù…Ø¶Ø§ÙØªÛŒØŒ Ø®Ø§ØµÙˆÛŒÛŒØŒ Ø®Ù†ÛŒØ²ÛŒØŒ Ø´Ø§Ù‡Ø§Ù†ÛŒØŒ Ú©Ø±ÛŒØªÙ‡ØŒ Ø²Ø±Ú© Ùˆ Ú©Ù„Ú© Ø³Ø±Ø®.\r\n\r\nØ§Ø±Ù‚Ø§Ù… Ø¨ÙˆÙ…ÛŒ Ø®Ø±Ù…Ø§ Ø¯Ø± Ø¬ÛŒØ±ÙØª:\r\n\r\nØ®Ø±Ù…Ø§ÛŒ Ù…Ø¶Ø§ÙØªÛŒ (Ù…Ø±ØºÙˆØ¨â€ŒØªØ±ÛŒÙ† Ø±Ø·Ø¨ Ø¬Ù‡Ø§Ù†)ØŒ Ø¹Ø§Ù„ÛŒ Ù…ÙÙ‡ØªÙØ±ÛŒØŒ Ø´ÙÚ©ÙŽØ±ÛŒ (Ø§ÛŒÙ† Ø¯Ùˆ Ø§Ø² Ø²ÙˆØ¯Ø±Ø³â€ŒØªØ±ÛŒÙ† Ú¯ÙˆÙ†Ù‡â€ŒÙ‡Ø§ÛŒ Ø®Ø±Ù…Ø§ Ù‡Ø³ØªÙ†Ø¯ Ú©Ù‡ Ø¨ÛŒØ´ØªØ± Ù…ØµØ±Ù Ù…Ø­Ù„ÛŒ Ø¯Ø§Ø±Ù†Ø¯)ØŒ Ú©Ù„ÙˆØªÙ‡ (Ú©Ù„ÛŒØªÙ‡)ØŒ Ù…Ø±Ø¯Ø§Ø³Ù†Ú¯ (ØªÙ†Ù‡Ø§ Ø®Ø±Ù…Ø§ÛŒ Ø·Ø¨Ø¹ Ø³Ø±Ø¯ Ø¯Ù†ÛŒØ§)ØŒ Ù‡Ù„ÛŒÙ„ÛŒØŒ Ø®ÙŽÙ†ÛŒØ²ÛŒØŒ Ø±ÙÙˆØºÙ†ÛŒØŒ Ø´Ø§Ù‡Ø§Ù†ÛŒØŒ Ø²Ø§Ù‡Ø¯ÛŒØŒ Ø®Ø¶Ø±Ø§ÙˆÛŒØŒ Ø±ÙŽØ¨ÛŒØŒ Ù†Ú¯Ø§Ø± (Ù…ÛŒÙˆÙ‡â€ŒÙ‡Ø§ÛŒÛŒ Ø¨Ø³ÛŒØ§Ø± Ú©Ø´ÛŒØ¯Ù‡ Ø¯Ø§Ø±Ø¯)ØŒ Ú¯Ø§Ø±Ø¯ÛŒØ§Ù„ØŒ Ù‚Ø±Ø¨Ø§Ù†ÛŒØŒ Ø¢Ø¬ÛŒÙ„ÛŒ\r\n\r\n    Ø§Ø±Ù‚Ø§Ù… Ø¨ÙˆÙ…ÛŒ Ø®Ø±Ù…Ø§ Ø¯Ø± ØºØ±Ø¨ Ø®ÙˆØ²Ø³ØªØ§Ù†:\r\n\r\nÙ„ÛŒÙ„ÙˆØ¦ÛŒØŒ Ø¨Ø±Ø­ÛŒØŒ Ø²Ø§Ù‡Ø¯ÛŒØŒ Ø¯ÛŒØ±ÛŒØŒ Ø§Ø´Ú©Ø± Ùˆ Ø¨Ø±ÛŒÙ…ØŒ Ø­Ù„Ø§ÙˆÛŒØŒ Ø¨Ù„ÛŒØ§Ù†ÛŒØŒ Ø³ÙˆÛŒØ¯Ø§Ù†ÛŒØŒ Ù‡Ø¯Ø§Ú©ØŒ Ø´Ú©Ø±ØŒ Ø¨Ù†Øª Ø§Ù„Ø³Ø¨ØŒ Ø¯Ú¯Ù„ Ø²Ø±Ø¯ØŒ Ø®Ø¶Ø±Ø§ÙˆÛŒØŒ Ø§Ø³ØªØ¹Ù…Ø±Ø§Ù†ØŒ Ø¨ÙˆØ¨Ú©ÛŒØŒ Ú†Ø¨Ú†Ø§Ø¨ØŒ Ù…Ø´ØªÙˆÙ…ØŒ Ø¬Ù‡Ø±Ù…ÛŒØŒ Ø¹Ù…ÙˆØ¨Ø­Ø±ÛŒØŒ Ø¯Ú¯Ù„ Ø³Ø±Ø®ØŒ ÙØ±Ø³ÛŒØŒ Ù‡Ø¯Ù„ØŒ Ø®ØµØ§Ø¨ØŒ Ø­Ù…Ø±Ø§ÙˆÛŒØŒ Ø­Ø³Ø§ÙˆÛŒØŒ Ø§Ø³Ø­Ø§Ù‚ØŒ Ø¬ÙˆØ²ÛŒ Ùˆ Ú¯Ù†ØªØ§Ø±\r\n\r\nØ§Ø±Ù‚Ø§Ù… Ø¨ÙˆÙ…ÛŒ Ø®Ø±Ù…Ø§ Ø¯Ø± Ø¨Ù… Ùˆ Ù†Ø±Ù…Ø§Ø´ÛŒØ±:\r\n\r\nÙ…Ø¶Ø§ÙØªÛŒØŒ Ú©Ø±ÙˆØªØŒ Ù‚Ù†Ø¯Ø´Ú©Ù† (Ø³Ù†Ú¯â€ŒØ´Ú©Ù†)ØŒ Ø±Ø¨ÛŒØŒ Ø®Ø±ÛŒÚ©ØŒ Ù‡Ù„ÛŒÙ„Ù‡â€ŒØ§ÛŒ'),
(7, 'Ú¯Ù„ÛŒÙ… Ùˆ ÙØ±Ø´ Ø¯Ø³Øª Ø¨Ø§Ù', 50, 3900000, '2492_629.jpg', 'ØµÙ†Ø§ÛŒØ¹ Ø¯Ø³ØªÛŒ Ø§ÛŒØ±Ø§Ù† Ø§Ø² Ø¸Ø±ÙÛŒØª Ù‡Ø§ÛŒ Ø¨Ø³ÛŒØ§Ø±ÛŒ Ø¨Ø±Ø®ÙˆØ±Ø¯Ø§Ø± Ø§Ø³Øª Ùˆ Ù…Ø­ØµÙˆÙ„Ø§Øª Ø¨Ø±Ø¢Ù…Ø¯Ù‡ Ø§Ø² Ø§ÛŒÙ† ØµÙ†Ø¹Øª Ù…ÙˆØ±Ø¯ Ø§Ù‚Ø¨Ø§Ù„ Ø¹Ù…ÙˆÙ… Ù…Ø±Ø¯Ù… Ùˆ ØªÙˆØ±ÛŒØ³Øª Ù‡Ø§ Ù‚Ø±Ø§Ø± Ø¯Ø§Ø±Ø¯ Ùˆ Ú©Ø§ÙÛŒØ³Øª Ú©Ù‡ Ø¨Ø§ Ù†Ú¯Ø§Ù‡ÛŒ Ø¬Ø§Ù…Ø¹ Ùˆ Ø¨Ø±Ù†Ø§Ù…Ù‡ Ø±ÛŒØ²ÛŒ Ù…Ù†Ø³Ø¬Ù… Ø¨Ø±Ø§ÛŒ ØªÙˆÙ„ÛŒØ¯ Ùˆ Ù…Ø¹Ø±ÙÛŒ Ø§ÛŒÙ† Ù…Ø­ØµÙˆÙ„Ø§Øª Ø§Ù‚Ø¯Ø§Ù…Ø§Øª Ù„Ø§Ø²Ù… Ø§Ù†Ø¬Ø§Ù… Ø´ÙˆØ¯.\r\n\r\nØ¯Ø± ÙˆØ§Ù‚Ø¹ ØµÙ†Ø§ÛŒØ¹ Ø¯Ø³ØªÛŒ Ù¾Ù„ÛŒ Ù…ÛŒØ§Ù† Ø§Ù‚ØªØµØ§Ø¯ Ùˆ ÙØ±Ù‡Ù†Ú¯ Ø§Ø³Øª Ùˆ Ø¨Ø§ ØªÙˆØ³Ø¹Ù‡ Ø¢Ù†ØŒ Ù†Ù‡ ØªÙ†Ù‡Ø§ Ø¨Ù‡ Ø§Ø´ØªØºØ§Ù„ Ø²Ø§ÛŒÛŒ Ùˆ Ø§Ù‚ØªØµØ§Ø¯ Ú©Ù…Ú© Ú©Ø±Ø¯Ù‡ Ø§ÛŒÙ… Ø¨Ù„Ú©Ù‡ Ú¯Ø§Ù… Ø¨Ù„Ù†Ø¯ÛŒ Ø¯Ø± Ø¬Ù‡Øª Ù…Ø¹Ø±ÙÛŒ ÙØ±Ù‡Ù†Ú¯ Ø§ØµÛŒÙ„ Ø§ÛŒØ±Ø§Ù†ÛŒ Ø¨Ø±Ø¯Ø§Ø´ØªÙ‡ Ø§ÛŒÙ….\r\n\r\nØµÙ†Ø§ÛŒØ¹â€Œ Ø¯Ø³ØªÛŒ Ø§Ø² ÛŒÚ©â€Œ Ø³Ùˆ ÙØ¹Ø§Ù„ÛŒØª Ùˆ Ø­ÙˆØ²Ù‡ â€ŒØ§ÛŒ Ø§Ù‚ØªØµØ§Ø¯ÛŒ Ø§Ø³Øª Ú©Ù‡ Ù‡Ù… Ù…ÛŒ â€ŒØªÙˆØ§Ù†Ø¯ Ø±ÙˆÛŒ Ø±Ø´Ø¯ ØµØ§Ø¯Ø±Ø§Øª ØºÛŒØ±Ù†ÙØªÛŒ Ú©Ø´ÙˆØ± ØªØ§Ø«ÛŒØ± ÙØ²Ø¢ÛŒÙ†Ø¯Ù‡ Ú¯Ø°Ø§Ø´ØªÙ‡ Ùˆ Ø²Ù…ÛŒÙ†Ù‡ Ø§Ø´ØªØºØ§Ù„ ÙØ±Ø§ÙˆØ§Ù†ÛŒ Ø±Ø§ Ø§ÛŒØ¬Ø§Ø¯ Ú©Ù†Ø¯ Ùˆ Ù‡Ù… Ø§Ø² Ø³ÙˆÛŒ Ø¯ÛŒÚ¯Ø± Ø¨Ø³ØªØ±ÛŒ Ø¨Ø±Ø§ÛŒ Ù…Ø¹Ø±ÙÛŒ Ø¨Ù‡ØªØ± Ùˆ ÙØ±Ø§Ú¯ÛŒØ± ÙØ±Ù‡Ù†Ú¯ Ùˆ Ù‡Ù†Ø± Ø§ÛŒØ±Ø§Ù† Ø¯Ø± Ø¯Ø§Ø®Ù„ Ùˆ Ø®Ø§Ø±Ø¬ Ú©Ø´ÙˆØ± Ø¨Ø§Ø´Ø¯.'),
(8, 'Ø¬Ø¹Ø¨Ù‡ Ù†ÙÛŒØ³ Ø®Ø§ØªÙ… Ú©Ø§Ø±ÛŒ Ø´Ø¯Ù‡', 14, 190000, 'khtamkari.jpg', 'ÛŒÚ©ÛŒ Ø§Ø² Ù‡Ù†Ø±Ù‡Ø§ÛŒ Ø¸Ø±ÛŒÙ Ùˆ ØµÙ†Ø§ÛŒØ¹ Ø¯Ø³ØªÛŒ Ø§ÛŒØ±Ø§Ù† Ø®Ø§ØªÙ… Ú©Ø§Ø±ÛŒ Ø§Ø³Øª Ú©Ù‡ Ø§Ø² Ú©Ù†Ø§Ø± Ù‡Ù… Ù‚Ø±Ø§Ø± Ø¯Ø§Ø¯Ù† ØªÚ©Ù‡ Ù‡Ø§ÛŒ Ú†ÙˆØ¨ÛŒ Ù…Ù†Ø¸Ù… Ùˆ Ø¸Ø±ÛŒÙ Ø¯Ø± Ø±Ù†Ú¯ Ù‡Ø§ÛŒ Ù…ØªÙØ§ÙˆØª Ø¯Ø±Ø³Øª Ù…ÛŒ Ø´ÙˆØ¯. Ø§ÛŒÙ† Ù‡Ù†Ø± ÛŒÚ©ÛŒ Ø§Ø² Ø§Ø±Ø²Ø´Ù…Ù†Ø¯ØªØ±ÛŒÙ† Ùˆ Ø²ÛŒØ¨Ø§ØªØ±ÛŒÙ† ØµÙ†Ø§ÛŒØ¹ Ø¯Ø³ØªÛŒ Ø´ÛŒØ±Ø§Ø² Ø§Ø³Øª Ú©Ù‡ Ø¨Ø§ Ú†ÙˆØ¨ØŒ Ø¹Ø§Ø¬ØŒ Ø§Ø³ØªØ®ÙˆØ§Ù†ØŒ Ø¨Ø±Ù†Ø¬ Ùˆ Ø·Ù„Ø§ Ø¯Ø±Ø³Øª Ù…ÛŒ Ø´ÙˆØ¯. Ù‡Ù†Ø±ÛŒ Ø¨Ø³ÛŒØ§Ø± Ø²ÛŒØ¨Ø§ØŒ Ø¯Ù‚ÛŒÙ‚ Ùˆ Ù¾Ø±Ú©Ø§Ø± Ú©Ù‡ Ø¨Ø§ Ø¯ÛŒØ¯Ù†Ø´ Ø¨Ù‡ ØµØ¨Ø± Ùˆ Ø­ÙˆØµÙ„Ù‡ Ùˆ Ø¯Ø³ØªØ§Ù† Ù‡Ù†Ø±Ù…Ù†Ø¯ Ø®Ø§Ù„Ù‚ Ø¢Ù† Ù¾ÛŒ Ø®ÙˆØ§Ù‡ÛŒØ¯ Ø¨Ø±Ø¯. Ø§ÛŒÙ† Ù‡Ù†Ø± Ø§Ø² Ø¯ÙˆØ±Ø§Ù† Ù‡Ø§ÛŒ Ø¨Ø³ÛŒØ§Ø± Ø¯ÙˆØ± Ø±ÙˆØ§Ø¬ Ø¯Ø§Ø´ØªÙ‡ Ø§Ù…Ø§ Ø§ÙˆØ¬ Ùˆ Ø´Ú©ÙˆÙØ§ÛŒÛŒ Ø¢Ù† Ø¯Ø± Ø¹ØµØ± ØµÙÙˆÛŒÙ‡ Ø¨ÙˆØ¯.\r\n\r\nØ¨Ø±Ø§ÛŒ Ø³Ø§Ø®Øª Ø®Ø§ØªÙ…ØŒ Ø³Ø·Ø­ Ø§Ø´ÛŒØ§ÛŒ Ú†ÙˆØ¨ÛŒ Ø±Ø§ Ø¨Ø§ Ù…Ø«Ù„Ø« Ù‡Ø§ÛŒ Ú©ÙˆÚ†Ú© Ø¨Ù‡ Ø´Ú©Ù„ Ù…ÙˆØ²Ø§Ø¦ÛŒÚ© Ø¯Ø± Ù…ÛŒ Ø¢ÙˆØ±Ù†Ø¯ Ùˆ Ø§Ø² Ú†ÙˆØ¨ Ù‡Ø§ÛŒ Ø¢Ø¨Ù†ÙˆØ³ØŒ ÙÙˆÙÙ„ØŒ Ú¯Ø±Ø¯ÙˆØŒ Ø¨Ù‚Ù…ØŒ Ø¹Ù†Ø§Ø¨ØŒ Ù†Ø§Ø±Ù†Ø¬ØŒ Ú©Ù‡Ú©Ù… Ùˆ Ú©Ø¨ÙˆØ¯Ù‡ Ùˆ Ø§Ù†ÙˆØ§Ø¹ Ø§Ø³ØªØ®ÙˆØ§Ù† Ùˆ Ø¹Ø§Ø¬ ÙÛŒÙ„ Ø§Ø³ØªÙØ§Ø¯Ù‡ Ù…ÛŒ Ú©Ù†Ù†Ø¯. Ú†ÙˆØ¨ Ø±Ø§ Ø¨Ø§ Ø¯Ø³ØªÚ¯Ø§Ù‡ Ù‡Ø§ÛŒ Ù…Ø®ØµÙˆØµ Ø¨Ù‡ Ø§Ù†Ø¯Ø§Ø²Ù‡ Ù‡Ø§ÛŒ Ú©ÙˆÚ†Ú© Ùˆ Ú†Ù†Ø¯ Ø¶Ù„Ø¹ÛŒ (Ù¾Ù†Ø¬ØŒ Ø´Ø´ØŒ Ù‡ÙØªØŒ Ù‡Ø´Øª Ùˆ ÛŒØ§ Ø¯Ù‡ Ø¶Ù„Ø¹ÛŒ ) Ø¨Ø±Ø´ Ù…ÛŒ Ø¯Ù‡Ù†Ø¯.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `realname` varchar(80) COLLATE utf8_persian_ci NOT NULL,
  `username` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`realname`, `username`, `password`, `email`, `type`) VALUES
('ali', 'admin', 'admin', 'admin@medu.ir', 1),
('ali mohammadi', 'ali', '123', 'ali@irib.ir', 0),
('reza', 'reza', 'reza', 'reza@gmail.com', 0);
--
-- Database: `shop_dl`
--
CREATE DATABASE IF NOT EXISTS `shop_dl` DEFAULT CHARACTER SET utf8 COLLATE utf8_persian_ci;
USE `shop_dl`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `detail` text COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `username`, `detail`) VALUES
(1, 'ali', 'ØªØ³Øª Ø§Ø±Ø³Ø§Ù„');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `orderdate` date NOT NULL,
  `pro_code` int(10) NOT NULL,
  `pro_qty` int(10) NOT NULL,
  `pro_price` float NOT NULL,
  `mobile` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `address` varchar(400) COLLATE utf8_persian_ci NOT NULL,
  `trackcode` varchar(24) COLLATE utf8_persian_ci NOT NULL,
  `state` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `username`, `orderdate`, `pro_code`, `pro_qty`, `pro_price`, `mobile`, `address`, `trackcode`, `state`) VALUES
(1, 'ali', '2017-08-06', 2, 200, 60000, '09163410272', 'Ø®ÙˆØ²Ø³ØªØ§Ù† Ø¯Ø²ÙÙˆÙ„ Ø®ÛŒØ§Ø¨Ø§Ù† Ø¹Ø§Ø±Ù Ø¯Ø²ÙÙˆÙ„ÛŒ Ø¨ÛŒÙ† Ø®ÛŒØ§Ø¨Ø§Ù† Ø¨Ù‡Ø´ØªÛŒ Ùˆ Ø®ÛŒØ§Ø¨Ø§Ù† Ø­Ø¶Ø±Øª Ø±Ø³ÙˆÙ„ (Øµ) Ù¾Ù„Ø§Ú© 92', '000000000000000000000000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `pro_code` int(10) NOT NULL,
  `pro_name` varchar(200) COLLATE utf8_persian_ci NOT NULL,
  `pro_qty` int(10) NOT NULL,
  `pro_price` float NOT NULL,
  `pro_image` varchar(80) COLLATE utf8_persian_ci NOT NULL,
  `pro_detail` text COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`pro_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pro_code`, `pro_name`, `pro_qty`, `pro_price`, `pro_image`, `pro_detail`) VALUES
(1, 'Ù‚Ø·Ø§Ø¨ ÙˆÛŒÚ˜Ù‡ ÛŒØ²Ø¯', 100, 35000, 'images7.jpg', 'Ù‚Ø·Ø§Ø¨ ÛŒÚ©ÛŒ Ø§Ø² Ø´ÛŒØ±ÛŒÙ†ÛŒ Ù‡Ø§ÛŒ Ø³Ù†ØªÛŒ Ùˆ Ù¾Ø±Ø·Ø±ÙØ¯Ø§Ø± Ú©Ø´ÙˆØ± Ø¹Ø²ÛŒØ²Ù…Ø§Ù† Ø§ÛŒØ±Ø§Ù† Ø§Ø³Øª. Ø§ÛŒÙ† Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø®ÙˆØ´Ù…Ø²Ù‡ Ø§Ø² Ø³ÙˆØºØ§ØªÛŒ Ù‡Ø§ÛŒ Ø´Ù‡Ø± ÛŒØ²Ø¯ Ù…Ø­Ø³ÙˆØ¨ Ù…ÛŒ Ø´ÙˆØ¯. ØªÙ‚Ø±ÛŒØ¨Ø§ Ù…ÛŒ ØªÙˆØ§Ù† Ú¯ÙØª Ú©Ù…ØªØ± Ú©Ø³ÛŒ Ù¾ÛŒØ¯Ø§ Ù…ÛŒ Ø´ÙˆØ¯ Ú©Ù‡ Ù‚Ø·Ø§Ø¨ Ø±Ø§ Ø¯ÙˆØ³Øª Ù†Ø¯Ø§Ø´ØªÙ‡ Ø¨Ø§Ø´Ø¯. Ù‚Ø·Ø§Ø¨ Ù†Ù‡ ØªÙ†Ù‡Ø§ ÛŒÚ© Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø®ÙˆØ´Ù…Ø²Ù‡ Ø¨Ù„Ú©Ù‡ Ù…Ù‚ÙˆÛŒ Ù‡Ù… Ù‡Ø³Øª. Ù‚Ø·Ø§Ø¨ Ø±Ø§ Ù…ÛŒ ØªÙˆØ§Ù†ÛŒØ¯ Ø¨Ù‡ Ø±Ø§Ø­ØªÛŒ Ø¯Ø± Ù…Ù†Ø²Ù„ ØªÙ‡ÛŒÙ‡ Ú©Ù†ÛŒØ¯. Ù…ÛŒ ØªÙˆØ§Ù†ÛŒØ¯ Ø¢Ù† Ø±Ø§ Ø¨Ø±Ø§ÛŒ Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø¹ÛŒØ¯ Ù†ÛŒØ² ØªÙ‡ÛŒÙ‡ Ú©Ù†ÛŒØ¯ Ùˆ Ø§Ø² Ø¹Ø²ÛŒØ²Ø§Ù† Ùˆ Ù…Ù‡Ù…Ø§Ù† Ù‡Ø§ÛŒ Ø®ÙˆØ¯ØŒ Ø¨Ø§ Ø§ÛŒÙ† Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø®Ø§Øµ Ùˆ Ù‡Ù…Ù‡ Ù¾Ø³Ù†Ø¯ Ù¾Ø°ÛŒØ±Ø§ÛŒÛŒ Ú©Ù†ÛŒØ¯. Ø´Ú©Ù„ Ø¸Ø§Ù‡Ø±ÛŒ Ù‚Ø·Ø§Ø¨ Ø±Ø§ Ø¨Ù‡ Ø§Ø´Ú©Ø§Ù„ Ú¯ÙˆÙ†Ø§Ú©ÙˆÙ† Ø¯Ø±Ø³Øª Ù…ÛŒ Ú©Ù†Ù†Ø¯. Ù…Ø±Ø³ÙˆÙ… ØªØ±ÛŒÙ† Ø´Ú©Ù„ Ø¢Ù†ØŒ Ù‚Ø·Ø§Ø¨ Ú¯Ø±Ø¯ Ùˆ Ù‚Ø·Ø§Ø¨ Ø¨Ø§ Ù„Ø¨Ù‡ Ù‡Ø§ÛŒ Ú†ÛŒÙ† Ú†ÛŒÙ†ÛŒ Ø§Ø³Øª. Ù‡Ù…Ú†ÛŒÙ† Ø¨Ø±Ø§ÛŒ Ù¾ÛŒÚ†ÛŒØ¯Ù† Ù‚Ø·Ø§Ø¨ Ø§Ø² Ù‚Ø§Ù„Ø¨ Ù‡Ø§ÛŒ Ù…Ø®ØµÙˆØµ Ù¾ÛŒØ±Ø§Ø´Ú©ÛŒ Ù‡Ù… Ù…ÛŒ ØªÙˆØ§Ù† Ø§Ø³ØªÙØ§Ø¯Ù‡ Ú©Ø±Ø¯.'),
(2, 'Ù¾Ø±ØªÙ‚Ø§Ù„ Ø¨Ø§ Ú©ÛŒÙÛŒØª Ø¯Ø²ÙÙˆÙ„', 2000, 60000, 'orange-tree.jpg', '       	Ø¯Ø²ÙÙˆÙ„ ÛŒÚ©ÛŒ Ø§Ø² Ù‚Ø·Ø¨â€ŒÙ‡Ø§ÛŒ Ù…Ù‡Ù… Ú©Ø´Ø§ÙˆØ±Ø²ÛŒ Ø§ÛŒØ±Ø§Ù† Ø§Ø³Øª. Ø®Ø§Ú© Ø­Ø§ØµÙ„Ø®ÛŒØ² Ùˆ Ø¢Ø¨ Ú©Ø§ÙÛŒ Ø´Ø±Ø§ÛŒØ· Ù…Ù†Ø§Ø³Ø¨ÛŒ Ø±Ø§ Ø¨Ø±Ø§ÛŒ Ú©Ø´Øª Ù…Ø±Ú©Ø¨Ø§ØªØŒ ØµÛŒÙÛŒ Ø¬Ø§Øª Ùˆ Ú¯Ù„ Ùˆ Ú¯ÛŒØ§Ù‡ ÙØ±Ø§Ù‡Ù… Ú©Ø±Ø¯Ù‡ Ø§Ø³Øª. Ù…Ø±Ú©Ø¨Ø§Øª Ø¯Ø²ÙÙˆÙ„ Ø¨Ø®ØµÙˆØµ Ù¾Ø±ØªÙ‚Ø§Ù„ Ø§Ø² Ø³Ø§Ù„Ù…ØªØ±ÛŒÙ† Ùˆ Ù…Ø±ØºÙˆØ¨â€ŒØªØ±ÛŒÙ† Ù†ÙˆØ¹ Ù…Ø±Ú©Ø¨Ø§Øª Ú©Ø´ÙˆØ± Ù…Ø­Ø³ÙˆØ¨ Ù…ÛŒâ€ŒØ´ÙˆÙ†Ø¯. Ø¯Ø²ÙÙˆÙ„ Ø§Ø² Ù†Ø¸Ø± ØªÙˆÙ„ÛŒØ¯ Ú¯Ù„â€ŒÙ‡Ø§ÛŒ Ø±Ø² Ùˆ Ù…Ø±ÛŒÙ… Ø¯Ø± Ú©Ø´ÙˆØ± Ø¨Ø§Ù„Ø§ØªØ±ÛŒÙ† Ø±ØªØ¨Ù‡ Ø±Ø§ Ø¯Ø§Ø±Ø§Ø³Øª. Ø¨Ø®Ø´ Ø¹Ù…Ø¯Ù‡â€ŒØ§ÛŒ Ø§Ø² ØªÙˆÙ„ÛŒØ¯Ø§Øª Ú¯Ù„ Ø¯Ø²ÙÙˆÙ„ Ø¨Ù‡ Ø³Ø§ÛŒØ± Ø§Ø³ØªØ§Ù†â€ŒÙ‡Ø§ Ùˆ Ø®Ø§Ø±Ø¬ Ø§Ø² Ú©Ø´ÙˆØ± ØµØ§Ø¯Ø± Ù…ÛŒâ€ŒØ´ÙˆÙ†Ø¯.\r\n\r\nÚ©Ø´Ø§ÙˆØ±Ø²ÛŒ Ø¯Ø± Ø¯Ø²ÙÙˆÙ„ Ø³Ø§Ø¨Ù‚Ù‡â€ŒØ§ÛŒ ØªØ§Ø±ÛŒØ®ÛŒ Ø¯Ø§Ø±Ø¯. Ø¨Ø®Ø´ ØºÛŒØ± Ú©ÙˆÙ‡Ø³ØªØ§Ù†ÛŒ Ø¯Ø²ÙÙˆÙ„ Ù¾Ø±Ø¢Ø¨â€ŒØªØ±ÛŒÙ† Ù…Ù†Ø·Ù‚Ù‡ Ú©Ø´Ø§ÙˆØ±Ø²ÛŒ Ø§Ø³ØªØ§Ù† Ø®ÙˆØ²Ø³ØªØ§Ù† Ø§Ø³Øª. Ø§ÛŒÙ† Ø§Ù…Ø± Ù…ÙˆØ¬Ø¨ Ø±ÙˆÙ†Ù‚ Ú©Ø´Ø§ÙˆØ±Ø²ÛŒ Ø¯Ø± Ø§ÛŒÙ† Ø´Ù‡Ø±Ø³ØªØ§Ù† Ø´Ø¯Ù‡ Ø§Ø³Øª Ùˆ Ø¯Ø²ÙÙˆÙ„ Ø±Ø§ Ø¨Ù‡ Ø¹Ù†ÙˆØ§Ù† ÛŒÚ©ÛŒ Ø§Ø² Ù‚Ø·Ø¨â€ŒÙ‡Ø§ÛŒ Ú©Ø´Ø§ÙˆØ±Ø²ÛŒ Ø§Ø³ØªØ§Ù† Ù…Ø·Ø±Ø­ Ù†Ù…ÙˆØ¯Ù‡ Ø§Ø³Øª. Ø´Ù‡Ø±Ø³ØªØ§Ù† Ø¯Ø²ÙÙˆÙ„ Ø§Ø² Ø®Ø§Ú© Ø¨Ø³ÛŒØ§Ø± Ù…Ø±ØºÙˆØ¨ØŒ Ù‡ÙˆØ§ÛŒ Ù…Ù†Ø§Ø³Ø¨ Ùˆ Ø¢Ø¨ ÙØ±Ø§ÙˆØ§Ù† Ø¨Ø§ Ø´Ø¨Ú©Ù‡â€ŒÙ‡Ø§ÛŒ Ù…Ø¯Ø±Ù† Ø¢Ø¨ÛŒØ§Ø±ÛŒØŒ ÙˆØ¬ÙˆØ¯ Ù…Ø±Ú©Ø² ØªØ­Ù‚ÛŒÙ‚Ø§Øª Ú©Ø´Ø§ÙˆØ±Ø²ÛŒ ØµÙÛŒ Ø¢Ø¨Ø§Ø¯ Ø¨Ø§ Ø³Ø§Ø¨Ù‚Ù‡ ÛµÛ² Ø³Ø§Ù„Ù‡ Ùˆ Ù†ÛŒØ² Ø¯Ùˆ Ø´Ø±Ú©Øª Ø¨Ø²Ø±Ú¯ Ú©Ø´Øª Ùˆ ØµÙ†Ø¹Øª Ø´Ù‡ÛŒØ¯ Ø¨Ù‡Ø´ØªÛŒ Ùˆ Ø´Ù‡ÛŒØ¯ Ø±Ø¬Ø§ÛŒÛŒØŒ Ø¨Ø±Ø®ÙˆØ±Ø¯Ø§Ø± Ø§Ø³Øª       '),
(3, 'Ú¯Ø² Ø§Ø¹Ù„Ø§ÛŒ Ø§ØµÙÙ‡Ø§Ù†', 182, 80000, 'gaz.jpg', 'Ú¯Ø² Ø³ÙˆØºØ§Øª Ø§ØµÙÙ‡Ø§Ù† Ùˆ Ú©Ø±Ù…Ø§Ù†ØŒ ÛŒØ²Ø¯ Ùˆ Ú†Ù‡Ø§Ø± Ù…Ø­Ø§Ù„ Ùˆ Ø¨Ø®ØªÛŒØ§Ø±ÛŒ ÛŒÚ©ÛŒ Ø§Ø² ØªÙ†Ù‚Ù„Ø§Øª Ø´ÛŒØ±ÛŒÙ† Ù…Ø¹Ø±ÙˆÙ Ùˆ Ø³Ù†ØªÛŒ Ø§ÛŒØ±Ø§Ù† Ø§Ø³Øª.Ø§ÙˆÙ„ÛŒÙ† ØªÙˆÙ„ÛŒØ¯ Ú©Ù†Ù†Ø¯Ù‡ Ùˆ Ø§Ù„Ø¨ØªÙ‡ Ù…Ø®ØªØ±Ø¹ Ú¯Ø² ÙØ±Ø¯ÛŒ Ø¨Ù‡ Ù†Ø§Ù… Ù…Ø­Ù…Ø¯ Ø¹Ù„ÛŒ Ø´Ú©Ø±Ú†ÛŒØ§Ù† Ø¯Ø± Ø§ØµÙÙ‡Ø§Ù† Ø¨ÙˆØ¯Ù‡ Ø§Ø³Øª. Ø¯Ø± Ù…Ù†Ø§Ø·Ù‚ Ù…Ø±Ú©Ø²ÛŒ Ø§ÛŒØ±Ø§Ù† (Ø¨Ø®ØµÙˆØµ Ø§Ø³ØªØ§Ù†â€ŒÙ‡Ø§ÛŒ Ø§ØµÙÙ‡Ø§Ù†ØŒ Ú†Ù‡Ø§Ø± Ù…Ø­Ø§Ù„ Ùˆ Ø¨Ø®ØªÛŒØ§Ø±ÛŒØŒ ÛŒØ²Ø¯ØŒ Ú©Ø±Ù…Ø§Ù† Ùˆ ÙØ§Ø±Ø³ Ù¾Ø®Øª Ù…ÛŒâ€ŒØ´ÙˆØ¯). Ù…ÙˆØ§Ø¯ Ù„Ø§Ø²Ù… Ø¨Ø±Ø§ÛŒ ØªÙ‡ÛŒÙ‡ Ú¯Ø² Ø§Ø² Ø´Ú©Ø±ØŒ Ø³ÙÛŒØ¯Ù‡ ØªØ®Ù… Ù…Ø±ØºØŒ Ù…ØºØ² Ø¨Ø§Ø¯Ø§Ù… Ùˆ Ù¾Ø³ØªÙ‡ Ùˆ Ù‡Ù„ Ùˆ Ú¯Ù„Ø§Ø¨ Ø§Ø³ØªÙØ§Ø¯Ù‡ Ù…ÛŒâ€ŒØ´ÙˆØ¯. Ø§Ù„Ø¨ØªÙ‡ Ø¨Ø±Ø®ÛŒ ØªÙˆÙ„ÛŒØ¯Ú©Ù†Ù†Ø¯Ú¯Ø§Ù† Ú¯Ø² Ø§Ø² Ù†ÙˆØ¹ÛŒ Ù…Ø§Ø¯Ù‡ Ø¨Ù‡ Ù†Ø§Ù… Ø¨Ø§Ø¯Ú©Ø§ Ú©Ù‡ Ø§Ø² Ø³ÛŒØ¨ Ø²Ù…ÛŒÙ†ÛŒ ØªÙˆÙ„ÛŒØ¯ Ù…ÛŒâ€ŒØ´ÙˆØ¯ Ù†ÛŒØ² Ø§Ø³ØªÙØ§Ø¯Ù‡ Ù…ÛŒâ€ŒÚ©Ù†Ù†Ø¯ Ú©Ù‡ Ø§ÛŒÙ† Ù…Ø§Ø¯Ù‡ Ø§Ø±Ø²Ø´ ØºØ°Ø§ÛŒÛŒ Ø¢Ù† Ø±Ø§ Ù¾Ø§ÛŒÛŒÙ† Ù…ÛŒâ€ŒØ¢ÙˆØ±Ø¯.\n\nÚ¯Ø²Ø§ØµÙÙ‡Ø§Ù† Ùˆ Ú¯Ø² Ú†Ù‡Ø§Ø± Ù…Ø­Ø§Ù„ Ùˆ Ø¨Ø®ØªÛŒØ§Ø±ÛŒ Ú©Ù‡ Ø¯Ø± Ø¨Ù„Ø¯Ø§Ø¬ÛŒ Ø§Ø² ØªÙˆØ§Ø¨Ø¹ Ø¨Ø±ÙˆØ¬Ù† ØªÙˆÙ„ÛŒØ¯ Ù…ÛŒâ€ŒØ´ÙˆÙ†Ø¯ Ù…Ø±ØºÙˆØ¨â€ŒØªØ±ÛŒÙ† Ù†ÙˆØ¹ Ú¯Ø² Ù‡Ø³ØªÙ†Ø¯.\n\nÙ†ÙˆØ¹ Ø§ØµÛŒÙ„ Ø§ÛŒÙ† Ø´ÛŒØ±ÛŒÙ†ÛŒ Ú©Ù‡ Ù‡Ù†ÙˆØ² Ù‡Ù… Ø¨ØµÙˆØ±Øª Ø³ÙØ§Ø±Ø´ÛŒ Ø³Ø§Ø®ØªÙ‡ Ù…ÛŒâ€ŒØ´ÙˆØ¯ Ø¯Ø§Ø±Ø§ÛŒ Ø¯Ø±ØµØ¯ Ú©Ù…ÛŒ Ø§Ø² Ø¹ØµØ§Ø±Ù‡ Ú¯Ø±Ø§Ù†Ø¨Ù‡Ø§ÛŒ Ú¯Ø²Ø§Ù†Ú¯Ø¨ÛŒÙ† Ø§Ø³Øª. Ø§Ø±Ø²Ø´ Ú¯Ø²Ø§Ù†Ú¯Ø¨ÛŒÙ† Ø¯Ø§Ø± Ù…Ø¹Ù…ÙˆÙ„Ø§Ù‹ Û´ ØªØ§ Ûµ Ø¨Ø±Ø§Ø¨Ø± Ø§Ø±Ø²Ø´ Ø´ÛŒØ±ÛŒÙ†ÛŒ Ú¯Ø² Ù…Ø¹Ù…ÙˆÙ„ÛŒ Ø§Ø³Øª.'),
(4, 'Ù¾Ø³ØªÙ‡ Ù…Ø±ØºÙˆØ¨ Ø§ÛŒØ±Ø§Ù†', 1800, 550000, 'images12.jpg', 'Ù¾Ø³ØªÙ‡ Ø³Ø±Ø´Ø§Ø± Ø§Ø² Ù…Ø³ØŒ Ù…Ù†ÛŒØ²ÛŒÙ… Ùˆ Ø§Ù†ÙˆØ§Ø¹ ÙˆÛŒØªØ§Ù…ÛŒÙ†â€ŒÙ‡Ø§ÛŒ B Ø§Ø³Øª Ú©Ù‡ Ø³ÛŒØ³ØªÙ… Ø§ÛŒÙ…Ù†ÛŒ Ø±Ø§ ØªÙ‚ÙˆÛŒØª Ú©Ø±Ø¯Ù‡ Ùˆ Ø§Ø² Ø¨ÛŒÙ…Ø§Ø±ÛŒâ€ŒÙ‡Ø§ÛŒ Ù…ØªØ¹Ø¯Ø¯ Ù¾ÛŒØ´Ú¯ÛŒØ±ÛŒ Ù…ÛŒâ€ŒÚ©Ù†Ø¯. ÙˆÛŒØªØ§Ù…ÛŒÙ† B6 Ø¨Ø±Ø§ÛŒ Ø­ÙØ¸ Ø¹Ù…Ù„Ú©Ø±Ø¯ Ø³ÛŒØ³ØªÙ… Ø§ÛŒÙ…Ù†ÛŒ Ø¶Ø±ÙˆØ±ÛŒ Ø§Ø³Øª. Ú©Ù…Ø¨ÙˆØ¯ ÙˆÛŒØªØ§Ù…ÛŒÙ† B6 Ù…Ù†Ø¬Ø± Ø¨Ù‡ Ù†Ø§Ú©Ø§Ø±Ø¢Ù…Ø¯ÛŒ Ø³ÛŒØ³ØªÙ… Ø§ÛŒÙ…Ù†ÛŒ Ø¨Ø±Ø§ÛŒ Ù…Ù‚Ø§Ø¨Ù„Ù‡ Ø¨Ø§ Ø¹ÙÙˆÙ†Øªâ€ŒÙ‡Ø§ Ù…ÛŒâ€ŒØ´ÙˆØ¯. Ù‡Ù…Ú†Ù†ÛŒÙ† Ù…ØµØ±Ù Ù¾Ø³ØªÙ‡ Ø¨Ù‡ Ø³Ø§Ø®ØªÙ‡ Ø´Ø¯Ù† Ù…Ù†Ø§Ø³Ø¨ Ú¯Ù„Ø¨ÙˆÙ„â€ŒÙ‡Ø§ÛŒ Ù‚Ø±Ù…Ø² Ø®ÙˆÙ†ÛŒ Ú©Ù…Ú© Ù…ÛŒâ€ŒÚ©Ù†Ø¯.  Ù¾Ø³ØªÙ‡ ÛŒÚ©ÛŒ Ø§Ø² Ø¨Ù‡ØªØ±ÛŒÙ† Ù…Ù†Ø§Ø¨Ø¹ Ù¾ØªØ§Ø³ÛŒÙ… Ù…Ø­Ø³ÙˆØ¨ Ù…ÛŒâ€ŒØ´ÙˆØ¯ Ú©Ù‡ Ù…ÛŒØ²Ø§Ù† Ù¾ØªØ§Ø³ÛŒÙ… Ø¢Ù† Ø¨Ø§ Ø§ÛŒÙ† Ø¬Ø«Ù‡ Ú©ÙˆÚ†Ú© Ø¨Ø±Ø§Ø¨Ø± Ø¨Ø§ Ù¾ØªØ§Ø³ÛŒÙ… Ù¾Ø±ØªÙ‚Ø§Ù„ Ø§Ø³Øª. \r\n\r\nÙ…ØµØ±Ù Ù¾Ø³ØªÙ‡ Ú†ÙˆÙ† Ø³Ø±Ø´Ø§Ø± Ø§Ø² ÙˆÛŒØªØ§Ù…ÛŒÙ† E Ø§Ø³Øª Ø¨Ø±Ø§ÛŒ Ù¾ÙˆØ³Øª Ù…ÙÛŒØ¯ Ø§Ø³ØªØ› Ø²ÛŒØ±Ø§ ÙˆÛŒØªØ§Ù…ÛŒÙ† E Ù¾ÙˆØ³Øª Ø±Ø§ Ø§Ø² Ø¢Ø³ÛŒØ¨ Ø§Ø´Ø¹Ù‡ Ù…Ø§ÙˆØ±Ø§ÛŒ Ø¨Ù†ÙØ´ Ù…Ø­Ø§ÙØ¸Øª Ù…ÛŒâ€ŒÚ©Ù†Ø¯. \r\n\r\nÙ¾Ø³ØªÙ‡ ÛŒÚ©ÛŒ Ø§Ø² Ù…ØºØ²Ù‡Ø§ÛŒÛŒ Ø§Ø³Øª Ú©Ù‡ Ø¨ÛŒØ´ØªØ±ÛŒÙ† Ù…Ù‚Ø¯Ø§Ø± ÙÛŒØ¨Ø± Ø±Ø§ Ø¯Ø± Ø®ÙˆØ¯ Ø¯Ø§Ø±Ø¯ Ùˆ Ù…ÛŒâ€ŒØªÙˆØ§Ù†Ø¯ Ø¹Ù„Ø§ÙˆÙ‡ Ø¨Ø± Ø¨Ù‡Ø¨ÙˆØ¯ Ù‡Ø¶Ù… ØºØ°Ø§ Ø¨Ù‡ Ú©Ø§Ù‡Ø´ Ù…ÛŒØ²Ø§Ù† Ú©Ù„Ø³ØªØ±ÙˆÙ„ Ùˆ Ù‚Ù†Ø¯ Ø®ÙˆÙ† Ú©Ù…Ú© Ú©Ù†Ø¯. \r\n\r\nÙ‡Ù…Ú†Ù†ÛŒÙ† Ù¾Ø³ØªÙ‡ Ø¨Ù‡ Ø¹Ù†ÙˆØ§Ù† ÛŒÚ© Ù…Ù†Ø¨Ø¹ Ø¢Ù‡Ù† Ø¨Ø±Ø§ÛŒ Ø¬Ù„ÙˆÚ¯ÛŒØ±ÛŒ Ø§Ø² Ú©Ù…â€ŒØ®ÙˆÙ†ÛŒ Ù…ÙÛŒØ¯ Ø§Ø³Øª. \r\n\r\nÙˆØ§Ú˜Ù‡ Ù¾Ø³ØªÙ‡ Ù¾Ø§Ø±Ø³ÛŒ Ù…ÛŒâ€ŒØ¨Ø§Ø´Ø¯ Ùˆ Ø§Ø² Ø·Ø±ÛŒÙ‚ Ø²Ø¨Ø§Ù† Ù„Ø§ØªÛŒÙ† Ø§Ø² Ù¾Ø§Ø±Ø³ÛŒ ÙˆØ§Ø±Ø¯ Ø²Ø¨Ø§Ù†Ù‡Ø§ÛŒ Ø§Ø±ÙˆÙ¾Ø§ÛŒÛŒ Ø´Ø¯Ù‡â€ŒØ§Ø³Øª              '),
(5, 'Ø²ØºÙØ±Ø§Ù† Ø¯Ø±Ø¬Ù‡ ÙŠÙƒ Ø§ÛŒØ±Ø§Ù†', 600, 900000, 'index1.jpg', 'Ú©Ø´Øª Ø²Ø¹ÙØ±Ø§Ù† Ø¯Ø± Ø§ÛŒØ±Ø§Ù† Ø¨Ù‡ ÙˆÛŒÚ˜Ù‡ Ø¯Ø± Ø´Ù‡Ø±Ø³ØªØ§Ù†â€ŒÙ‡Ø§ÛŒ Ø´Ù‡Ø±Ø³ØªØ§Ù† Ø²Ø§ÙˆÙ‡ØŒ ØªØ±Ø¨Øª Ø­ÛŒØ¯Ø±ÛŒÙ‡ØŒ ØªØ§ÛŒØ¨Ø§Ø¯ØŒ Ø¨Ø§Ø®Ø±Ø²ØŒ Ú¯Ù†Ø§Ø¨Ø§Ø¯ Ùˆ Ø¨Ø¬Ø³ØªØ§Ù† Ø¯Ø± Ø§Ø³ØªØ§Ù† Ø®Ø±Ø§Ø³Ø§Ù† Ø±Ø¶ÙˆÛŒ Ùˆ Ø´Ù‡Ø±Ø³ØªØ§Ù†â€ŒÙ‡Ø§ÛŒ Ù‚Ø§Ø¦Ù†Ø§ØªØŒ ÙØ±Ø¯ÙˆØ³ØŒ Ø³Ø±Ø§ÛŒØ§Ù† Ùˆ Ø¨ÛŒØ±Ø¬Ù†Ø¯ Ø¯Ø± Ø§Ø³ØªØ§Ù† Ø®Ø±Ø§Ø³Ø§Ù† Ø¬Ù†ÙˆØ¨ÛŒ Ùˆ Ø¨Ù‡ ØªØ§Ø²Ú¯ÛŒ Ø¯Ø± Ø§Ø³ØªØ§Ù†â€ŒÙ‡Ø§ÛŒ ÙØ§Ø±Ø³ Ùˆ Ú©Ø±Ù…Ø§Ù† Ùˆ Ù„Ø±Ø³ØªØ§Ù† Ùˆ Ù‚Ø²ÙˆÛŒÙ† (Ø§Ù„Ù…ÙˆØª) Ø±ÙˆØ§Ø¬ Ø¯Ø§Ø±Ø¯.\r\n\r\nØªØ§Ø±ÛŒØ®Ú†Ù‡ Ø²Ø¹ÙØ±Ø§Ù† Ø§ÛŒØ±Ø§Ù†ÛŒØ§Ù† Ø¶Ù…Ù† ØµØ¯ÙˆØ± Ø²Ø¹ÙØ±Ø§Ù† Ø¨Ù‡ Ø¨Ø³ÛŒØ§Ø±ÛŒ Ø§Ø² Ù†Ù‚Ø§Ø· Ø¬Ù‡Ø§Ù† Ø¨Ø§Ø³ØªØ§Ù†ØŒ Ø®ÙˆØ§Øµ Ø¢Ù† Ø±Ø§ Ø¨Ù‡ ÛŒÙˆÙ†Ø§Ù†ÛŒâ€ŒÙ‡Ø§ØŒ Ø±ÙˆÙ…ÛŒâ€ŒÙ‡Ø§ØŒ Ú†ÛŒÙ†ÛŒÙ‡Ø§ Ùˆ Ø§Ù‚ÙˆØ§Ù… Ø³Ø§Ù…ÛŒ Ø§Ø² Ø¬Ù…Ù„Ù‡ Ø¹Ø±Ø¨â€ŒÙ‡Ø§ Ù…Ø¹Ø±ÙÛŒ Ú©Ø±Ø¯Ù†Ø¯ Ùˆ Ø´ÛŒÙˆÙ‡ Ø²Ø±Ø§Ø¹Øª Ø¢Ù† Ø±Ø§ Ø¯Ø± Ø³Ø¯Ù‡â€ŒÙ‡Ø§ÛŒ Ø§ÙˆÙ„ ØªØ§ Ú†Ù‡Ø§Ø±Ù… Ù‡Ø¬Ø±ÛŒ Ø¨Ù‡ Ø§Ù…Øªâ€ŒÙ‡Ø§ÛŒ Ø§Ø³Ù„Ø§Ù…ÛŒ Ø§Ø·Ø±Ø§Ù Ù…Ø¯ÛŒØªØ±Ø§Ù†Ù‡ Ø¢Ù…ÙˆØ®ØªÙ†Ø¯. Ø¨Ù‡ Ø§ÛŒÙ† ØªØ±ØªÛŒØ¨ Ú©Ù‡ Ù†Ø®Ø³ØªÛŒÙ† Ø²Ø¹ÙØ±Ø§Ù† Ú©Ø§Ø±ÛŒ Ø¨Ù‡ ÙˆØ³ÛŒÙ„Ù‡ Ø§ÛŒØ±Ø§Ù†ÛŒØ§Ù† ØªØ¨Ø¹ÛŒØ¯ Ø´Ø¯Ù‡ ØªÙˆØ³Ø· Ù…Ø¹Ø§ÙˆÛŒÙ‡ Ø¯Ø± Ù†ÙˆØ§Ø­ÛŒ Ø´Ø§Ù… Ø¯Ø§ÛŒØ± Ø´Ø¯ØŒ Ø³Ù¾Ø³ Ú©Ø§Ø´Øª Ø²Ø¹ÙØ±Ø§Ù† Ø¯Ø± Ø´Ù…Ø§Ù„ Ø¢ÙØ±ÛŒÙ‚Ø§ Ùˆ Ø§Ù†Ø¯Ù„Ø³ (Ø§Ø³Ù¾Ø§Ù†ÛŒØ§ÛŒ Ø§Ø³Ù„Ø§Ù…ÛŒ) Ùˆ ØµÙ‚Ù„ÛŒÙ‡ (Ø³ÛŒØ³ÛŒÙ„) Ø±ÙˆØ§Ø¬ ÛŒØ§ÙØª Ùˆ Ø§Ù‚ÙˆØ§Ù… Ø§ÛŒØ±Ø§Ù†ÛŒ Ù‡Ù…Ú†ÙˆÙ† Ø±Ø³ØªÙ…ÛŒØ§Ù† Ùˆ Ø¨Ù†ÙˆØ·Ø¨Ø±ÛŒ Ø¯Ø± Ø§Ù†ØªÙ‚Ø§Ù„ ÙØ±Ù‡Ù†Ú¯ Ø²Ø¹ÙØ±Ø§Ù† Ú©Ø§Ø±ÛŒ Ù…Ø¤Ø«Ø± Ø¨ÙˆØ¯Ù†Ø¯. '),
(6, 'Ø®Ø±Ù…Ø§ Ù…Ø¶Ø§ÙØªÛŒ Ø¨Ù…', 1800, 89000, '895412_946.jpg', 'Ù…ØµØ±Ù Ø³Ø±Ø§Ù†Ù‡ Ø®Ø±Ù…Ø§ Ø¯Ø± Ø§ÛŒØ±Ø§Ù† Û· Ú©ÛŒÙ„ÙˆÚ¯Ø±Ù… Ø§Ø³Øª Ú©Ù‡ Ù…ÛŒØ§Ù†Ú¯ÛŒÙ†ÛŒ Ø§Ø² Ù…ØµØ±Ù Ø³Ø±Ø§Ù†Ù‡ Û²Ûµ Ú©ÛŒÙ„ÙˆÚ¯Ø±Ù…ÛŒ Ø§Ø³ØªØ§Ù†â€ŒÙ‡Ø§ÛŒ Ø¬Ù†ÙˆØ¨ÛŒ Ùˆ Û± Ú©ÛŒÙ„ÙˆÚ¯Ø±Ù…ÛŒ Ø³Ø§ÛŒØ± Ø§Ø³ØªØ§Ù†â€ŒÙ‡Ø§ Ù…ÛŒâ€ŒØ¨Ø§Ø´Ø¯. Ø¯Ø± Ø§ÛŒØ±Ø§Ù† Ø¨Ù‡ Ø·ÙˆØ± Ø³Ø§Ù„Ø§Ù†Ù‡ØŒ Û± Ù…ÛŒÙ„ÛŒÙˆÙ† ØªÙ† Ø®Ø±Ù…Ø§ ØªÙˆÙ„ÛŒØ¯ Ù…ÛŒâ€ŒØ´ÙˆØ¯ Ú©Ù‡ Ø¹Ù…Ø¯Ù‡ Ù…ØµØ±Ù Ø¯Ø§Ø®Ù„ÛŒ Ø¢Ù† Ø¯Ø± Ù…Ø§Ù‡ Ø±Ù…Ø¶Ø§Ù† ØµÙˆØ±Øª Ù…ÛŒâ€ŒÚ¯ÛŒØ±Ø¯. Ø§Ø² Ù…ÛŒØ§Ù† Ù…Ø­ØµÙˆÙ„ Ø®Ø±Ù…Ø§ÛŒ Ù‡Ø± Ø³Ø§Ù„ Ø§ÛŒØ±Ø§Ù†ØŒ Û±Û° Ø¯Ø±ØµØ¯ Ø¨Ø±Ø§ÛŒ ØµØ§Ø¯Ø±Ø§Øª Ø¨Ù‡ Ú©Ø´ÙˆØ±Ù‡Ø§ÛŒ Ø¯ÛŒÚ¯Ø± Ø§Ø®ØªØµØ§Øµ Ù…ÛŒâ€ŒÛŒØ§Ø¨Ø¯\r\n\r\n\r\nØ§Ø±Ù‚Ø§Ù… Ø¨ÙˆÙ…ÛŒ Ø®Ø±Ù…Ø§ Ø¯Ø± Ø¨Ù„ÙˆÚ†Ø³ØªØ§Ù† Ø§ÛŒØ±Ø§Ù†ï¼šØ®Ø±Ù…Ø§ÛŒ Ù…Ø¶Ø§ÙØªÛŒ (Ù…Ø±ØºÙˆØ¨â€ŒØªØ±ÛŒÙ† Ø±Ø·Ø¨ Ø¬Ù‡Ø§Ù†)ØŒ Ø±Ø¨Ù‘ÛŒØŒ Ø´ÙŽÚ©ÙŽØ±ÛŒØŒ Ø­Ù„ÛŒÙ„Ù‡ØŒ Ø¢Ø¨Ø±ÙˆÚ¯Ù†ØŒ Ú©ÙŽÙ„ÙŽÚ¯ÛŒØŒ Ú†Ø±Ø¨Ø§Ù†ØŒ Ø­Ø§Ø´Ù‡â€ŒØ§ÛŒØŒ Ø¬ÙˆØ§Ù†Ø¯Ø§Ú©ØŒ Ø§Ø´Ú©Ù†Ø¬Ú©ØŒ Ù¾ÙÙ¾ÙˆØŒ Ø¯ÙØ³Ú©ÛŒØŒ ÙˆØ±Ø¯ÛŒÙˆØ§Ø±ØŒ Ø¨ÙŽØ±Ù†ÛŒØŒ Ú©Ù„ÙˆØªØŒ Ù…ÙÙ„Ø³ÛŒØŒ Ú©Ø±ÙˆÚ†ØŒ\r\n\r\nØ§Ø±Ù‚Ø§Ù… Ø¨ÙˆÙ…ÛŒ Ø®Ø±Ù…Ø§ÛŒ Ø¨ÙˆØ´Ù‡Ø±: Ù‚Ø³Ø¨ØŒ Ú©Ø¨Ú©Ø§Ø¨ØŒ ØµÙ…Ø±ÙˆÙ†ØŒ Ø´Ú©Ø±ØŒ Ø³ÛŒØ³ÛŒØŒ Ø­Ù„ÙŽÙˆØŒ Ø³Ø±ÙˆØ±ÛŒØŒ Ø²Ù†Ø¯Ù†ÛŒØŒ Ø®Ø´Ù† Ø®Ø§Ø±ØŒ Ø§Ø³ØªÚ© Ø³Ø±Ø®ÙˆØŒ Ù…Ø±Ø³ÙˆØŒ Ø®Ø§ØµÙˆÛŒÛŒØŒ Ø¬Ù…Ø§Ø¯ÛŒØŒ Ø¨ÛŒØ±Ù…ÛŒØŒ ØªÛŒ Ø±Ø³ØŒ Ø´Ù‡Ø§Ø¨ÛŒØŒ Ù„Ø´ØŒ Ú©Ù†Ø¯ÛŒØŒ Ø®Ù†ÛŒØ²ÛŒØŒ Ø³Ù…ÛŒÙ„ÛŒØŒ Ø®Ø¶Ø±ÙˆÛŒØŒ Ú¯Ù†ØªØ§Ø±ØŒ Ø¨Ø±ÛŒÙ…ÛŒØŒ Ø´ÛŒØ® Ø¹Ø§Ù„ÛŒØŒ Ø²Ø§Ù…Ø±Ø¯ÙˆØŒ Ø¯Ù‡ Ø¯Ø§Ø±Ø¨ØŒ Ø§Ù‡Ø±Ù…ÛŒØŒ Ø®Ø§ÙˆÛŒØ²ÛŒØŒ Ø®Ø§ÙˆØ±ØŒ Ù…Ú©ØªÛŒØŒ Ø´Ø§Ø®ÙˆÙ†ÛŒØŒ Ù…ØµÙ„ÛŒØŒ Ø¬ÙˆØ²ÛŒØŒ ØºØµØ§Ø¨ Ùˆ Ø±Ø¯Ø³ØªÛŒ\r\n    Ø§Ø±Ù‚Ø§Ù… Ø®Ø±Ù…Ø§ÛŒ Ù‡Ø±Ù…Ø²Ú¯Ø§Ù†: Ø®Ø±Ù…Ø§ÛŒ Ù¾ÛŒØ§Ø±Ù…ØŒ Ù…Ø±Ø¯Ø§Ø³Ù†Ú¯ØŒ Ù‡Ù„ÛŒÙ„ÛŒØŒ Ù…Ø¶Ø§ÙØªÛŒØŒ Ø®Ø§ØµÙˆÛŒÛŒØŒ Ø®Ù†ÛŒØ²ÛŒØŒ Ø´Ø§Ù‡Ø§Ù†ÛŒØŒ Ú©Ø±ÛŒØªÙ‡ØŒ Ø²Ø±Ú© Ùˆ Ú©Ù„Ú© Ø³Ø±Ø®.\r\n\r\nØ§Ø±Ù‚Ø§Ù… Ø¨ÙˆÙ…ÛŒ Ø®Ø±Ù…Ø§ Ø¯Ø± Ø¬ÛŒØ±ÙØª:\r\n\r\nØ®Ø±Ù…Ø§ÛŒ Ù…Ø¶Ø§ÙØªÛŒ (Ù…Ø±ØºÙˆØ¨â€ŒØªØ±ÛŒÙ† Ø±Ø·Ø¨ Ø¬Ù‡Ø§Ù†)ØŒ Ø¹Ø§Ù„ÛŒ Ù…ÙÙ‡ØªÙØ±ÛŒØŒ Ø´ÙÚ©ÙŽØ±ÛŒ (Ø§ÛŒÙ† Ø¯Ùˆ Ø§Ø² Ø²ÙˆØ¯Ø±Ø³â€ŒØªØ±ÛŒÙ† Ú¯ÙˆÙ†Ù‡â€ŒÙ‡Ø§ÛŒ Ø®Ø±Ù…Ø§ Ù‡Ø³ØªÙ†Ø¯ Ú©Ù‡ Ø¨ÛŒØ´ØªØ± Ù…ØµØ±Ù Ù…Ø­Ù„ÛŒ Ø¯Ø§Ø±Ù†Ø¯)ØŒ Ú©Ù„ÙˆØªÙ‡ (Ú©Ù„ÛŒØªÙ‡)ØŒ Ù…Ø±Ø¯Ø§Ø³Ù†Ú¯ (ØªÙ†Ù‡Ø§ Ø®Ø±Ù…Ø§ÛŒ Ø·Ø¨Ø¹ Ø³Ø±Ø¯ Ø¯Ù†ÛŒØ§)ØŒ Ù‡Ù„ÛŒÙ„ÛŒØŒ Ø®ÙŽÙ†ÛŒØ²ÛŒØŒ Ø±ÙÙˆØºÙ†ÛŒØŒ Ø´Ø§Ù‡Ø§Ù†ÛŒØŒ Ø²Ø§Ù‡Ø¯ÛŒØŒ Ø®Ø¶Ø±Ø§ÙˆÛŒØŒ Ø±ÙŽØ¨ÛŒØŒ Ù†Ú¯Ø§Ø± (Ù…ÛŒÙˆÙ‡â€ŒÙ‡Ø§ÛŒÛŒ Ø¨Ø³ÛŒØ§Ø± Ú©Ø´ÛŒØ¯Ù‡ Ø¯Ø§Ø±Ø¯)ØŒ Ú¯Ø§Ø±Ø¯ÛŒØ§Ù„ØŒ Ù‚Ø±Ø¨Ø§Ù†ÛŒØŒ Ø¢Ø¬ÛŒÙ„ÛŒ\r\n\r\n    Ø§Ø±Ù‚Ø§Ù… Ø¨ÙˆÙ…ÛŒ Ø®Ø±Ù…Ø§ Ø¯Ø± ØºØ±Ø¨ Ø®ÙˆØ²Ø³ØªØ§Ù†:\r\n\r\nÙ„ÛŒÙ„ÙˆØ¦ÛŒØŒ Ø¨Ø±Ø­ÛŒØŒ Ø²Ø§Ù‡Ø¯ÛŒØŒ Ø¯ÛŒØ±ÛŒØŒ Ø§Ø´Ú©Ø± Ùˆ Ø¨Ø±ÛŒÙ…ØŒ Ø­Ù„Ø§ÙˆÛŒØŒ Ø¨Ù„ÛŒØ§Ù†ÛŒØŒ Ø³ÙˆÛŒØ¯Ø§Ù†ÛŒØŒ Ù‡Ø¯Ø§Ú©ØŒ Ø´Ú©Ø±ØŒ Ø¨Ù†Øª Ø§Ù„Ø³Ø¨ØŒ Ø¯Ú¯Ù„ Ø²Ø±Ø¯ØŒ Ø®Ø¶Ø±Ø§ÙˆÛŒØŒ Ø§Ø³ØªØ¹Ù…Ø±Ø§Ù†ØŒ Ø¨ÙˆØ¨Ú©ÛŒØŒ Ú†Ø¨Ú†Ø§Ø¨ØŒ Ù…Ø´ØªÙˆÙ…ØŒ Ø¬Ù‡Ø±Ù…ÛŒØŒ Ø¹Ù…ÙˆØ¨Ø­Ø±ÛŒØŒ Ø¯Ú¯Ù„ Ø³Ø±Ø®ØŒ ÙØ±Ø³ÛŒØŒ Ù‡Ø¯Ù„ØŒ Ø®ØµØ§Ø¨ØŒ Ø­Ù…Ø±Ø§ÙˆÛŒØŒ Ø­Ø³Ø§ÙˆÛŒØŒ Ø§Ø³Ø­Ø§Ù‚ØŒ Ø¬ÙˆØ²ÛŒ Ùˆ Ú¯Ù†ØªØ§Ø±\r\n\r\nØ§Ø±Ù‚Ø§Ù… Ø¨ÙˆÙ…ÛŒ Ø®Ø±Ù…Ø§ Ø¯Ø± Ø¨Ù… Ùˆ Ù†Ø±Ù…Ø§Ø´ÛŒØ±:\r\n\r\nÙ…Ø¶Ø§ÙØªÛŒØŒ Ú©Ø±ÙˆØªØŒ Ù‚Ù†Ø¯Ø´Ú©Ù† (Ø³Ù†Ú¯â€ŒØ´Ú©Ù†)ØŒ Ø±Ø¨ÛŒØŒ Ø®Ø±ÛŒÚ©ØŒ Ù‡Ù„ÛŒÙ„Ù‡â€ŒØ§ÛŒ'),
(7, 'Ú¯Ù„ÛŒÙ… Ùˆ ÙØ±Ø´ Ø¯Ø³Øª Ø¨Ø§Ù', 50, 3900000, '2492_629.jpg', 'ØµÙ†Ø§ÛŒØ¹ Ø¯Ø³ØªÛŒ Ø§ÛŒØ±Ø§Ù† Ø§Ø² Ø¸Ø±ÙÛŒØª Ù‡Ø§ÛŒ Ø¨Ø³ÛŒØ§Ø±ÛŒ Ø¨Ø±Ø®ÙˆØ±Ø¯Ø§Ø± Ø§Ø³Øª Ùˆ Ù…Ø­ØµÙˆÙ„Ø§Øª Ø¨Ø±Ø¢Ù…Ø¯Ù‡ Ø§Ø² Ø§ÛŒÙ† ØµÙ†Ø¹Øª Ù…ÙˆØ±Ø¯ Ø§Ù‚Ø¨Ø§Ù„ Ø¹Ù…ÙˆÙ… Ù…Ø±Ø¯Ù… Ùˆ ØªÙˆØ±ÛŒØ³Øª Ù‡Ø§ Ù‚Ø±Ø§Ø± Ø¯Ø§Ø±Ø¯ Ùˆ Ú©Ø§ÙÛŒØ³Øª Ú©Ù‡ Ø¨Ø§ Ù†Ú¯Ø§Ù‡ÛŒ Ø¬Ø§Ù…Ø¹ Ùˆ Ø¨Ø±Ù†Ø§Ù…Ù‡ Ø±ÛŒØ²ÛŒ Ù…Ù†Ø³Ø¬Ù… Ø¨Ø±Ø§ÛŒ ØªÙˆÙ„ÛŒØ¯ Ùˆ Ù…Ø¹Ø±ÙÛŒ Ø§ÛŒÙ† Ù…Ø­ØµÙˆÙ„Ø§Øª Ø§Ù‚Ø¯Ø§Ù…Ø§Øª Ù„Ø§Ø²Ù… Ø§Ù†Ø¬Ø§Ù… Ø´ÙˆØ¯.\r\n\r\nØ¯Ø± ÙˆØ§Ù‚Ø¹ ØµÙ†Ø§ÛŒØ¹ Ø¯Ø³ØªÛŒ Ù¾Ù„ÛŒ Ù…ÛŒØ§Ù† Ø§Ù‚ØªØµØ§Ø¯ Ùˆ ÙØ±Ù‡Ù†Ú¯ Ø§Ø³Øª Ùˆ Ø¨Ø§ ØªÙˆØ³Ø¹Ù‡ Ø¢Ù†ØŒ Ù†Ù‡ ØªÙ†Ù‡Ø§ Ø¨Ù‡ Ø§Ø´ØªØºØ§Ù„ Ø²Ø§ÛŒÛŒ Ùˆ Ø§Ù‚ØªØµØ§Ø¯ Ú©Ù…Ú© Ú©Ø±Ø¯Ù‡ Ø§ÛŒÙ… Ø¨Ù„Ú©Ù‡ Ú¯Ø§Ù… Ø¨Ù„Ù†Ø¯ÛŒ Ø¯Ø± Ø¬Ù‡Øª Ù…Ø¹Ø±ÙÛŒ ÙØ±Ù‡Ù†Ú¯ Ø§ØµÛŒÙ„ Ø§ÛŒØ±Ø§Ù†ÛŒ Ø¨Ø±Ø¯Ø§Ø´ØªÙ‡ Ø§ÛŒÙ….\r\n\r\nØµÙ†Ø§ÛŒØ¹â€Œ Ø¯Ø³ØªÛŒ Ø§Ø² ÛŒÚ©â€Œ Ø³Ùˆ ÙØ¹Ø§Ù„ÛŒØª Ùˆ Ø­ÙˆØ²Ù‡ â€ŒØ§ÛŒ Ø§Ù‚ØªØµØ§Ø¯ÛŒ Ø§Ø³Øª Ú©Ù‡ Ù‡Ù… Ù…ÛŒ â€ŒØªÙˆØ§Ù†Ø¯ Ø±ÙˆÛŒ Ø±Ø´Ø¯ ØµØ§Ø¯Ø±Ø§Øª ØºÛŒØ±Ù†ÙØªÛŒ Ú©Ø´ÙˆØ± ØªØ§Ø«ÛŒØ± ÙØ²Ø¢ÛŒÙ†Ø¯Ù‡ Ú¯Ø°Ø§Ø´ØªÙ‡ Ùˆ Ø²Ù…ÛŒÙ†Ù‡ Ø§Ø´ØªØºØ§Ù„ ÙØ±Ø§ÙˆØ§Ù†ÛŒ Ø±Ø§ Ø§ÛŒØ¬Ø§Ø¯ Ú©Ù†Ø¯ Ùˆ Ù‡Ù… Ø§Ø² Ø³ÙˆÛŒ Ø¯ÛŒÚ¯Ø± Ø¨Ø³ØªØ±ÛŒ Ø¨Ø±Ø§ÛŒ Ù…Ø¹Ø±ÙÛŒ Ø¨Ù‡ØªØ± Ùˆ ÙØ±Ø§Ú¯ÛŒØ± ÙØ±Ù‡Ù†Ú¯ Ùˆ Ù‡Ù†Ø± Ø§ÛŒØ±Ø§Ù† Ø¯Ø± Ø¯Ø§Ø®Ù„ Ùˆ Ø®Ø§Ø±Ø¬ Ú©Ø´ÙˆØ± Ø¨Ø§Ø´Ø¯.'),
(8, 'Ø¬Ø¹Ø¨Ù‡ Ù†ÙÛŒØ³ Ø®Ø§ØªÙ… Ú©Ø§Ø±ÛŒ Ø´Ø¯Ù‡', 14, 190000, 'khtamkari.jpg', 'ÛŒÚ©ÛŒ Ø§Ø² Ù‡Ù†Ø±Ù‡Ø§ÛŒ Ø¸Ø±ÛŒÙ Ùˆ ØµÙ†Ø§ÛŒØ¹ Ø¯Ø³ØªÛŒ Ø§ÛŒØ±Ø§Ù† Ø®Ø§ØªÙ… Ú©Ø§Ø±ÛŒ Ø§Ø³Øª Ú©Ù‡ Ø§Ø² Ú©Ù†Ø§Ø± Ù‡Ù… Ù‚Ø±Ø§Ø± Ø¯Ø§Ø¯Ù† ØªÚ©Ù‡ Ù‡Ø§ÛŒ Ú†ÙˆØ¨ÛŒ Ù…Ù†Ø¸Ù… Ùˆ Ø¸Ø±ÛŒÙ Ø¯Ø± Ø±Ù†Ú¯ Ù‡Ø§ÛŒ Ù…ØªÙØ§ÙˆØª Ø¯Ø±Ø³Øª Ù…ÛŒ Ø´ÙˆØ¯. Ø§ÛŒÙ† Ù‡Ù†Ø± ÛŒÚ©ÛŒ Ø§Ø² Ø§Ø±Ø²Ø´Ù…Ù†Ø¯ØªØ±ÛŒÙ† Ùˆ Ø²ÛŒØ¨Ø§ØªØ±ÛŒÙ† ØµÙ†Ø§ÛŒØ¹ Ø¯Ø³ØªÛŒ Ø´ÛŒØ±Ø§Ø² Ø§Ø³Øª Ú©Ù‡ Ø¨Ø§ Ú†ÙˆØ¨ØŒ Ø¹Ø§Ø¬ØŒ Ø§Ø³ØªØ®ÙˆØ§Ù†ØŒ Ø¨Ø±Ù†Ø¬ Ùˆ Ø·Ù„Ø§ Ø¯Ø±Ø³Øª Ù…ÛŒ Ø´ÙˆØ¯. Ù‡Ù†Ø±ÛŒ Ø¨Ø³ÛŒØ§Ø± Ø²ÛŒØ¨Ø§ØŒ Ø¯Ù‚ÛŒÙ‚ Ùˆ Ù¾Ø±Ú©Ø§Ø± Ú©Ù‡ Ø¨Ø§ Ø¯ÛŒØ¯Ù†Ø´ Ø¨Ù‡ ØµØ¨Ø± Ùˆ Ø­ÙˆØµÙ„Ù‡ Ùˆ Ø¯Ø³ØªØ§Ù† Ù‡Ù†Ø±Ù…Ù†Ø¯ Ø®Ø§Ù„Ù‚ Ø¢Ù† Ù¾ÛŒ Ø®ÙˆØ§Ù‡ÛŒØ¯ Ø¨Ø±Ø¯. Ø§ÛŒÙ† Ù‡Ù†Ø± Ø§Ø² Ø¯ÙˆØ±Ø§Ù† Ù‡Ø§ÛŒ Ø¨Ø³ÛŒØ§Ø± Ø¯ÙˆØ± Ø±ÙˆØ§Ø¬ Ø¯Ø§Ø´ØªÙ‡ Ø§Ù…Ø§ Ø§ÙˆØ¬ Ùˆ Ø´Ú©ÙˆÙØ§ÛŒÛŒ Ø¢Ù† Ø¯Ø± Ø¹ØµØ± ØµÙÙˆÛŒÙ‡ Ø¨ÙˆØ¯.\r\n\r\nØ¨Ø±Ø§ÛŒ Ø³Ø§Ø®Øª Ø®Ø§ØªÙ…ØŒ Ø³Ø·Ø­ Ø§Ø´ÛŒØ§ÛŒ Ú†ÙˆØ¨ÛŒ Ø±Ø§ Ø¨Ø§ Ù…Ø«Ù„Ø« Ù‡Ø§ÛŒ Ú©ÙˆÚ†Ú© Ø¨Ù‡ Ø´Ú©Ù„ Ù…ÙˆØ²Ø§Ø¦ÛŒÚ© Ø¯Ø± Ù…ÛŒ Ø¢ÙˆØ±Ù†Ø¯ Ùˆ Ø§Ø² Ú†ÙˆØ¨ Ù‡Ø§ÛŒ Ø¢Ø¨Ù†ÙˆØ³ØŒ ÙÙˆÙÙ„ØŒ Ú¯Ø±Ø¯ÙˆØŒ Ø¨Ù‚Ù…ØŒ Ø¹Ù†Ø§Ø¨ØŒ Ù†Ø§Ø±Ù†Ø¬ØŒ Ú©Ù‡Ú©Ù… Ùˆ Ú©Ø¨ÙˆØ¯Ù‡ Ùˆ Ø§Ù†ÙˆØ§Ø¹ Ø§Ø³ØªØ®ÙˆØ§Ù† Ùˆ Ø¹Ø§Ø¬ ÙÛŒÙ„ Ø§Ø³ØªÙØ§Ø¯Ù‡ Ù…ÛŒ Ú©Ù†Ù†Ø¯. Ú†ÙˆØ¨ Ø±Ø§ Ø¨Ø§ Ø¯Ø³ØªÚ¯Ø§Ù‡ Ù‡Ø§ÛŒ Ù…Ø®ØµÙˆØµ Ø¨Ù‡ Ø§Ù†Ø¯Ø§Ø²Ù‡ Ù‡Ø§ÛŒ Ú©ÙˆÚ†Ú© Ùˆ Ú†Ù†Ø¯ Ø¶Ù„Ø¹ÛŒ (Ù¾Ù†Ø¬ØŒ Ø´Ø´ØŒ Ù‡ÙØªØŒ Ù‡Ø´Øª Ùˆ ÛŒØ§ Ø¯Ù‡ Ø¶Ù„Ø¹ÛŒ ) Ø¨Ø±Ø´ Ù…ÛŒ Ø¯Ù‡Ù†Ø¯.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `realname` varchar(80) COLLATE utf8_persian_ci NOT NULL,
  `username` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`realname`, `username`, `password`, `email`, `type`) VALUES
('Ù…Ø¯ÛŒØ±ÛŒØª Ø³Ø§ÛŒØª', 'admin', 'admin', 'admin@medu.ir', 1),
('ali mohammadi', 'ali', '123', 'ali@irib.ir', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
