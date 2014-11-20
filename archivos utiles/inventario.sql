-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2014 a las 12:27:57
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `inventario`
--
CREATE DATABASE IF NOT EXISTS `inventario` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `inventario`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE IF NOT EXISTS `departamentos` (
  `id_depto` int(11) NOT NULL AUTO_INCREMENT,
  `depto` varchar(128) NOT NULL,
  PRIMARY KEY (`id_depto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id_depto`, `depto`) VALUES
(1, 'Direccion'),
(2, 'Analisis Del Delito'),
(3, 'Ayudantia'),
(4, 'No Asignado '),
(5, 'Estadística Y Sistemas'),
(6, 'Snisp'),
(7, 'Plataforma México'),
(8, 'Site Snisp Uruapan'),
(9, 'Site Snisp Cereso Mil Cumbres'),
(10, 'Site Snisp Cereso Morelia'),
(11, 'Site Snisp Dprs'),
(12, 'Site Snisp Lázaro Cárdenas'),
(13, 'Site Central'),
(14, 'Site Snisp Pgje'),
(15, 'Site Snisp La Piedad'),
(16, 'Site Snisp En La Pep');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE IF NOT EXISTS `marcas` (
  `id_Marca` int(11) NOT NULL AUTO_INCREMENT,
  `Marca` varchar(128) NOT NULL,
  PRIMARY KEY (`id_Marca`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_Marca`, `Marca`) VALUES
(1, '3M '),
(2, 'ALFRA '),
(3, 'AMITZU '),
(4, 'BAME '),
(5, 'FAN STAR '),
(6, 'GBC MEXICANA '),
(7, 'ALPRECIO'),
(8, 'REQUIEZ '),
(9, 'KOMBOY GBC'),
(10, 'LASKO '),
(11, 'LOHNOS'),
(12, 'MAN '),
(13, 'VANTA'),
(14, 'MYTEK'),
(15, 'SEVILLE'),
(16, 'BOSTON'),
(17, 'INGENTO '),
(18, 'VANTA '),
(19, 'GBC '),
(20, 'SONY '),
(21, 'TRANE - 3 TONELADAS'),
(22, 'PANASONIC '),
(23, 'STARFARM '),
(24, 'TRANE '),
(25, 'VONHAUCKE'),
(26, 'BRILLIANT'),
(27, 'S/M');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mobiliario`
--

CREATE TABLE IF NOT EXISTS `mobiliario` (
  `id_Mob` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(256) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `numSerie` varchar(128) NOT NULL,
  `estadoFisico` varchar(8) NOT NULL,
  `marcas_id_Marca` int(11) NOT NULL,
  `usuarios_Id_Usuario` int(11) NOT NULL,
  `numInventario` varchar(45) DEFAULT NULL,
  `departamentos_id_depto` int(11) NOT NULL,
  `resguardos_id` int(11) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_Mob`),
  KEY `fk_mobiliario_marcas1_idx` (`marcas_id_Marca`),
  KEY `fk_mobiliario_usuarios1_idx` (`usuarios_Id_Usuario`),
  KEY `fk_mobiliario_departamentos1_idx` (`departamentos_id_depto`),
  KEY `fk_mobiliario_resguardos1_idx` (`resguardos_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=349 ;

--
-- Volcado de datos para la tabla `mobiliario`
--

INSERT INTO `mobiliario` (`id_Mob`, `descripcion`, `modelo`, `numSerie`, `estadoFisico`, `marcas_id_Marca`, `usuarios_Id_Usuario`, `numInventario`, `departamentos_id_depto`, `resguardos_id`, `foto`) VALUES
(1, 'Escritorio Metalico Color Gris, Formaica Caf', 'S/M', 'S/S', 'Regular', 27, 1, '640100031010500001', 2, NULL, NULL),
(2, 'Silla Giratoria Secretarial Pliana Negro /Coderas', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 2, NULL, NULL),
(3, 'Escritorio Secretarial 3 Cajones Camel/Ng.Aglom', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 2, NULL, NULL),
(4, 'Silla Giratoria Secretarial Pliana Negro /Coderas', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 2, NULL, NULL),
(5, 'Modulo De Computo 3 Cajones Negro/Caoba Aglomerado', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 2, NULL, NULL),
(6, 'Silla Giratoria Secretarial Pliana Negro /Coderas', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 2, NULL, NULL),
(7, 'Silla Giratoria Secretarial Pliana Negro /Coderas', 'S/M', 'S/S', 'Regular', 27, 1, 'S/N', 6, NULL, NULL),
(8, 'Escritorio Secretarial 3 Cajones Camel/Ng.Aglom', 'S/M', 'S/S', 'Regular', 27, 1, 'S/N', 6, NULL, NULL),
(9, 'C?moda ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0050', 13, NULL, NULL),
(10, 'Silla Ejecutiva ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0031', 13, NULL, NULL),
(11, 'Banco De Madera ', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 13, NULL, NULL),
(12, 'Banco De Madera ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0039', 13, NULL, NULL),
(13, 'Comoda ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0063', 13, NULL, NULL),
(14, 'Escritorio ', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 13, NULL, NULL),
(15, 'Escritorio2 ', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 13, NULL, NULL),
(16, 'Escritorio ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0055', 13, NULL, NULL),
(17, 'Mesa De Trabajo ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0068', 13, NULL, NULL),
(18, 'Librero ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0083', 13, NULL, NULL),
(19, 'Librero ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0084', 13, NULL, NULL),
(20, 'Mesa De Reuniones', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0078', 13, NULL, NULL),
(21, 'Mesa De Trabajo ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0049', 13, NULL, NULL),
(22, 'Mesa De Trabajo ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0047', 13, NULL, NULL),
(23, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0080', 13, NULL, NULL),
(24, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0081', 13, NULL, NULL),
(25, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0034', 13, NULL, NULL),
(26, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0044', 13, NULL, NULL),
(27, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0048', 13, NULL, NULL),
(28, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0059', 13, NULL, NULL),
(29, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0060', 13, NULL, NULL),
(30, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0052', 13, NULL, NULL),
(31, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0053', 13, NULL, NULL),
(32, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0054', 13, NULL, NULL),
(33, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 13, NULL, NULL),
(34, 'Silla ', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSM0042', 13, NULL, NULL),
(35, 'Comoda ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0046', 13, NULL, NULL),
(36, 'Silla2 ', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 13, NULL, NULL),
(37, 'Comoda ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0041', 13, NULL, NULL),
(38, 'Modulo De Trabajo ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0058', 13, NULL, NULL),
(39, 'Mesa De Trabajo ', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSM0061', 13, NULL, NULL),
(40, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0033', 13, NULL, NULL),
(41, 'Silla ', 'S/M', 'S/N', 'Bueno', 27, 1, 'S/N', 13, NULL, NULL),
(42, 'Silla3 ', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 13, NULL, NULL),
(43, 'Comoda ', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 13, NULL, NULL),
(44, 'M?dulo De Trabajo ', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 13, NULL, NULL),
(45, 'Silla Ejecutiva ', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 13, NULL, NULL),
(46, 'Escritorio ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0045', 13, NULL, NULL),
(47, 'Silla4 ', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 13, NULL, NULL),
(48, 'Silla5 ', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 13, NULL, NULL),
(49, 'Anaquel ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0012', 13, NULL, NULL),
(50, 'Anaquel ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0013', 13, NULL, NULL),
(51, 'Banco De Madera', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSM0003', 13, NULL, NULL),
(52, 'Escritorio Secretarial 3 Cajones Camel/Ng.Aglom', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 6, NULL, NULL),
(53, 'Silla Giratoria Secretarial Pliana Negro /Sin Coderas', 'S/M', 'S/S', 'Regular', 27, 1, 'S/N', 6, NULL, NULL),
(54, 'Banco', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 15, NULL, NULL),
(55, 'Silla', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 15, NULL, NULL),
(56, 'Tripie', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 15, NULL, NULL),
(57, 'M?dulo De Computo 2 Cajones Negro/Caoba Aglomerado', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 5, NULL, NULL),
(58, 'Silla Giratoria Secretarial Pliana Negro /Sin Coderas', 'S/M', 'S/S', 'Regular', 27, 1, '1607000010114500000', 5, NULL, NULL),
(59, 'M?dulo De Computo 3 Cajones Negro/Caoba Aglomerado', 'S/M', 'S/S', 'Regular', 27, 1, '160700001010500000', 5, NULL, NULL),
(60, 'Silla Giratoria Secretarial Pliana Negro /Coderas', 'S/M', 'S/S', 'Regular', 27, 1, 'S/N', 5, NULL, NULL),
(61, 'M?dulo De Computo 3 Cajones Negro/Caoba Aglomerado/ Esquinero 2 Piezas', 'S/M', 'S/S', 'Regular', 27, 1, '160700001010050000', 3, NULL, NULL),
(62, 'Silla Tubular Negra  Tapizado En Pliana', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 3, NULL, NULL),
(63, 'Banco De Madera', 'S/M', 'S/N', 'REGULAR', 27, 1, '160500031010150000', 16, NULL, NULL),
(64, 'Mesa De Trabajo ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0001', 16, NULL, NULL),
(65, 'Mesa De Trabajo ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0002', 16, NULL, NULL),
(66, 'Modulo ', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSM0024', 14, NULL, NULL),
(67, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0027', 14, NULL, NULL),
(68, 'Mesa De Trabajo ', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSM0021', 14, NULL, NULL),
(69, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0026', 14, NULL, NULL),
(70, 'Banco De Madera', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSM0096', 14, NULL, NULL),
(71, 'Mesa De Trabajo ', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSM0022', 14, NULL, NULL),
(72, 'Modulo ', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 14, NULL, NULL),
(73, 'Silla ', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSM0028', 14, NULL, NULL),
(74, 'Silla ', 'S/M', 'S/N', 'Bueno', 27, 1, 'S/N', 14, NULL, NULL),
(75, 'Modulo ', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSM0023', 14, NULL, NULL),
(76, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0025', 14, NULL, NULL),
(77, 'M?dulo De Computo 3 Cajones Negro/Caoba Aglomerado', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 2, NULL, NULL),
(78, 'Silla Giratoria Secretarial Pliana Negro /Coderas', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 2, NULL, NULL),
(79, 'M?dulo De Computo 3 Cajones Negro/Caoba Aglomerado', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 5, NULL, NULL),
(80, 'Silla Giratoria Secretarial Pliana Negro /Con Coderas', 'S/M', 'S/S', 'Regular', 27, 1, 'S/N', 5, NULL, NULL),
(81, 'Escritorio Modular Ejecutivo Credenza ', 'S/M', 'S/S', 'Bueno', 27, 1, '1607 0000 10105 00001', 1, NULL, NULL),
(82, 'Archivero Madera 4 Cajones, Aglomerado Negro/Caoba', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 1, NULL, NULL),
(83, 'Mesa Redonda Para Reuniones Aglomerado Negro/Caoba', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 1, NULL, NULL),
(84, 'Librero Caf? Claro C/ Entrepa?o De Cristal', 'S/M', 'S/S', 'Bueno', 27, 1, '1607 0000 10108 0001', 1, NULL, NULL),
(85, 'Silla Tubular Negra Con Coderas Tapizado En Pliana', 'S/M', 'S/S', 'Bueno', 27, 1, '1607 0000 10114 50001', 1, NULL, NULL),
(86, 'Silla Tubular Negra Con Coderas Tapizado En Pliana', 'S/M', 'S/S', 'Bueno', 27, 1, '1607 0000 10114 50002', 1, NULL, NULL),
(87, 'Silla Tubular Negra Con Coderas Tapizado En Pliana', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 1, NULL, NULL),
(88, 'Silla Tubular Negra Con Coderas Tapizado En Pliana', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 1, NULL, NULL),
(89, 'Silla Tubular Negra  Tapizado En Pliana', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 1, NULL, NULL),
(90, 'Sill?n Giratorio Ejecutivo C/Antebrazos Tapizado En Pliana Negro', 'S/M', 'S/S', 'Malo', 27, 1, '1607 0000 10115 50001', 1, NULL, NULL),
(91, 'Mesa Met?lica Formaica Caf', 'S/M', 'S/S', 'Regular', 27, 1, 'S/N', 1, NULL, NULL),
(92, 'Sill?n Giratorio Ejecutivo C/Antebrazos Tapizado En Vinil Negro', 'S/M', 'S/S', 'Malo', 27, 1, 'S/N', 1, NULL, NULL),
(93, 'Silla Tubular Naranja Tapizado En Pliana', 'S/M', 'S/S', 'Malo', 27, 1, 'S/N', 1, NULL, NULL),
(94, 'Silla Tubular Negro Tapizado En Pliana', 'S/M', 'S/S', 'Malo', 27, 1, 'S/N', 1, NULL, NULL),
(95, 'Escritorio Triplay Caf', 'S/M', 'S/S', 'Malo', 27, 1, 'S/N', 1, NULL, NULL),
(96, 'Mesa Pl?stico Blanca Redonda', 'S/M', 'S/S', 'Malo', 27, 1, 'S/N', 1, NULL, NULL),
(97, 'Escritorio Ejecutivo 3 Cajones Negro Met?lico Formaica Gris ', 'S/M', 'S/S', 'Regular', 27, 1, '160700001010500000', 5, NULL, NULL),
(98, 'Silla Giratoria Secretarial Pliana Negro/Coderas', 'S/M', 'S/S', 'Regular', 27, 1, 'S/N', 5, NULL, NULL),
(99, 'Escritorio Met?lico Color Gris, Formaica Caf', 'S/M', 'S/S', 'Regular', 27, 1, 'S/N', 5, NULL, NULL),
(100, 'M?dulo De Computo 3 Cajones Negro/Caoba Aglomerado', 'S/M', 'S/S', 'Bueno', 27, 1, '160700001010500000', 5, NULL, NULL),
(101, 'Silla Tubular Negra  Tapizado En Pliana', 'S/M', 'S/S', 'Regular', 27, 1, '160700001011450000', 5, NULL, NULL),
(102, 'Escritorio Met?lico Color Gris, Formaica Caf', 'S/M', 'S/S', 'Regular', 27, 1, 'S/N', 5, NULL, NULL),
(103, 'Silla Tubular Negra  Tapizado En Pliana', 'S/M', 'S/S', 'Malo', 27, 1, 'S/N', 5, NULL, NULL),
(104, 'Escritorio  Met?lico Tres Cajones Color Negro/Gris/ Formaica Caf', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 5, NULL, NULL),
(105, 'Sill?n Ejecutivo Color Negro, Giratorio Con Ruedas Tapizado En Piel', 'S/M', 'S/S', 'Regular', 27, 1, 'S/N', 5, NULL, NULL),
(106, 'Silla Tubular Negra  Tapizado En Pliana', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 4, NULL, NULL),
(107, 'Silla Tubular Negra  Tapizado En Pliana', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 4, NULL, NULL),
(108, 'Silla Giratoria Secretarial Pliana Negro /Sin Coderas', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 2, NULL, NULL),
(109, 'M?dulo De Computo 3 Cajones Negro/Caoba Aglomerado', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 2, NULL, NULL),
(110, 'Archivero 3 Cajones Negro/Caoba', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 2, NULL, NULL),
(111, 'Pintarron Blanco', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 2, NULL, NULL),
(112, 'Escritorio  Met?lico Tres Cajones Color Negro/Gris/ Formaica Caf', 'S/M', 'S/S', 'Regular', 27, 1, '308006011010500000', 2, NULL, NULL),
(113, 'Silla Tubular Negra  Tapizado En Pliana', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 4, NULL, NULL),
(114, 'Silla Tubular Negra  Tapizado En Pliana', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 4, NULL, NULL),
(115, 'Silla Tubular Negra  Tapizado En Pliana', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 1, NULL, NULL),
(116, 'Silla Tubular Negra  Tapizado En Pliana', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 1, NULL, NULL),
(117, 'Silla Tubular Negra  Tapizado En Pliana', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 1, NULL, NULL),
(118, 'Silla Tubular Negra  Tapizado En Pliana', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 1, NULL, NULL),
(119, 'Silla Giratoria Secretarial Pliana Negro /Sin Coderas', 'S/M', 'S/S', 'Malo', 27, 1, 'S/N', 2, NULL, NULL),
(120, 'Mesa Rectangular', 'S/M', 'S/S', 'Regular', 27, 1, '1607 0000 10109 50001', 2, NULL, NULL),
(121, 'Mesa Rectangular', 'S/M', 'S/S', 'Regular', 27, 1, '1607 0000 10109 50002', 2, NULL, NULL),
(122, 'Mesa Rectangular', 'S/M', 'S/S', 'Regular', 27, 1, '1607 0000 10109 50003', 2, NULL, NULL),
(123, 'Escritorio Met?lico Negro Con Caf?, 3 Cajones Con Extensi?n', 'S/M', 'S/S', 'Bueno', 27, 1, '1607 0000 10105 00007', 3, NULL, NULL),
(124, 'Archivero 4 Cajones Negro Aglomerado', 'S/M', 'S/S', 'Regular', 27, 1, '1607 0000 10100 50002', 2, NULL, NULL),
(125, 'M?dulo De Computo 3 Cajones Negro/Caoba Aglomerado', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 4, NULL, NULL),
(126, 'Silla Tubular Negra  Tapizado En Pliana', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 3, NULL, NULL),
(127, 'Sill?n Giratorio Ejecutivo C/Antebrazos Tapizado En Vinil Negro', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 2, NULL, NULL),
(128, 'Pintarron Blanco', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 2, NULL, NULL),
(129, 'M?dulo De Computo 3 Cajones Negro/Caoba Aglomerado', 'S/M', 'S/S', 'Bueno', 27, 1, '160700001010500000', 5, NULL, NULL),
(130, 'Silla Giratoria Secretarial Pliana Negro /Sin Coderas', 'S/M', 'S/S', 'Regular', 27, 1, '1607000010114500000', 5, NULL, NULL),
(131, 'Escritorio Secretarial 3 Cajones Camel/Ng.Aglom', 'S/M', 'S/S', 'Bueno', 27, 1, '160700001010500000', 4, NULL, NULL),
(132, 'Silla Tubular Fija Color Camel', 'S/M', 'S/S', 'Bueno', 27, 1, '160700001011450000', 3, NULL, NULL),
(133, 'Silla Giratoria Secretarial Pliana Negro /Sin Coderas', 'S/M', 'S/S', 'Regular', 27, 1, '160700001011450000', 6, NULL, NULL),
(134, 'M?dulo De Computo 3 Cajones Negro/Caoba Aglomerado', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 5, NULL, NULL),
(135, 'Silla Giratoria Secretarial Pliana Negro /Sin Coderas', 'S/M', 'S/S', 'Regular', 27, 1, '160700001011450000', 5, NULL, NULL),
(136, 'Archivero Madera 4 Cajones, Caf', 'S/M', 'S/S', 'Regular', 27, 1, '1607 0000 10100 50003', 5, NULL, NULL),
(137, 'Silla Giratoria Secretarial Pliana Negro /Coderas', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 6, NULL, NULL),
(138, 'M?dulo De Computo 3 Cajones Negro/Caoba Aglomerado', 'S/M', 'S/S', 'Bueno', 27, 1, '160700001010500000', 6, NULL, NULL),
(139, 'Escritorio Ejecutivo 3 Cajones Negro Met?lico Formaica Claro', 'S/M', 'S/S', 'Bueno', 27, 1, '160700001010500000', 3, NULL, NULL),
(140, 'Silla Tubular Negra  Tapizado En Pliana', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 3, NULL, NULL),
(141, 'Silla Tubular Negra  Tapizado En Pliana', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 3, NULL, NULL),
(142, 'Archivero 4 Cajones Negro Aglomerado', 'S/M', 'S/S', 'Regular', 27, 1, '160700001010050000', 4, NULL, NULL),
(143, 'M?dulo De Computo 3 Cajones Negro/Caoba Aglomerado', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 2, NULL, NULL),
(144, 'Silla Giratoria Secretarial Pliana Negro /Con Coderas', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 2, NULL, NULL),
(145, 'Silla Giratoria Secretarial Pliana Negro /Coderas', 'S/M', 'S/S', 'Regular', 27, 1, 'S/N', 7, NULL, NULL),
(146, 'Escritorio Secretarial 3 Cajones Camel/Ng.Aglom', 'S/M', 'S/S', 'Regular', 27, 1, '16070000101050001C', 7, NULL, NULL),
(147, 'M?dulo De Computo 3 Cajones Negro/Caoba Aglomerado', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 5, NULL, NULL),
(148, 'Archivero 2', 'S/M', 'S/N', 'BUENO', 27, 1, '6007001011010850000', 8, NULL, NULL),
(149, 'Archivero 4', 'S/M', 'S/N', 'BUENO', 27, 1, '6007001011010850000', 8, NULL, NULL),
(150, 'Mesa 5', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSU0011', 8, NULL, NULL),
(151, 'Silla 2', 'S/M', 'S/N', 'Malo', 27, 1, '6007001011010850000', 8, NULL, NULL),
(152, 'Silla 10', 'S/M', 'S/N', 'Malo', 27, 1, '16055101SNSU0027', 8, NULL, NULL),
(153, 'Silla 7', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSU0024', 8, NULL, NULL),
(154, 'Conjunto Peninsular L 2', 'S/M', 'S/N', 'BUENO', 27, 1, '6007001011010850000', 8, NULL, NULL),
(155, 'Conjunto Peninsular L 3', 'S/M', 'S/N', 'BUENO', 27, 1, '6007001011010850000', 8, NULL, NULL),
(156, 'Archivero 1', 'S/M', 'S/N', 'BUENO', 27, 1, '6007001011010850000', 8, NULL, NULL),
(157, 'Archivero 3', 'S/M', 'S/N', 'BUENO', 27, 1, '6007001011010850000', 8, NULL, NULL),
(158, 'Conjunto Peninsular L 4', 'S/M', 'S/N', 'BUENO', 27, 1, '6007001011010850000', 8, NULL, NULL),
(159, 'Mesa 2', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSU0005', 8, NULL, NULL),
(160, 'Mesa 3', 'S/M', 'S/N', 'BUENO', 27, 1, '6007001011010850000', 8, NULL, NULL),
(161, 'Conjunto Peninsular L 1', 'S/M', 'S/N', 'BUENO', 27, 1, '6007001011010850000', 8, NULL, NULL),
(162, 'Conjunto Peninsular L 5', 'S/M', 'S/N', 'BUENO', 27, 1, '6007001011010850000', 8, NULL, NULL),
(163, 'Silla 5', 'S/M', 'S/N', 'REGULAR', 27, 1, '6007001011010850000', 8, NULL, NULL),
(164, 'Silla 6', 'S/M', 'S/N', 'Malo', 27, 1, '16055101SNSU0020', 8, NULL, NULL),
(165, 'Silla 3', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSU0017', 8, NULL, NULL),
(166, 'Banca', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSU0012', 8, NULL, NULL),
(167, 'Banco', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSU0014', 8, NULL, NULL),
(168, 'Banco ', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSU0013', 8, NULL, NULL),
(169, 'Conjunto Ejecutivo', 'S/M', 'S/N', 'BUENO', 27, 1, '6007001011010850000', 8, NULL, NULL),
(170, 'Mesa 7', 'S/M', 'S/N', 'REGULAR', 27, 1, '6007001011010850000', 8, NULL, NULL),
(171, 'Mesa 1', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSU0004', 8, NULL, NULL),
(172, 'Mesa 4', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSU0008', 8, NULL, NULL),
(173, 'Mesa 6', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSU0011', 8, NULL, NULL),
(174, 'Silla 14', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 8, NULL, NULL),
(175, 'Silla 13', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0048', 8, NULL, NULL),
(176, 'Silla 1', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSU0015', 8, NULL, NULL),
(177, 'Silla 11', 'S/M', 'S/N', 'Malo', 27, 1, '16055101SNSU0026', 8, NULL, NULL),
(178, 'Silla 12', 'S/M', 'S/N', 'Malo', 27, 1, '16055101SNSU0026', 8, NULL, NULL),
(179, 'Silla 4', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSU0018', 8, NULL, NULL),
(180, 'Silla 8', 'S/M', 'S/N', 'Malo', 27, 1, '16055101SNSU0025', 8, NULL, NULL),
(181, 'Silla 9', 'S/M', 'S/N', 'Malo', 27, 1, '16055101SNSU0026', 8, NULL, NULL),
(182, 'Sill?n 1', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSU0021', 8, NULL, NULL),
(183, 'Sill?n 2', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSU0022', 8, NULL, NULL),
(184, 'Sill?n 3', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSU0023', 8, NULL, NULL),
(185, 'Escritorio Semi-Ejecutivo 3 Cajones Negro Caoba Aglomerado', 'S/M', 'S/S', 'Regular', 27, 1, 'S/N', 7, NULL, NULL),
(186, 'Silla Giratoria Secretarial Pliana Negro/Coderas', 'S/M', 'S/S', 'Regular', 27, 1, 'S/N', 7, NULL, NULL),
(187, 'Escritorio Secretarial 3 Cajones Camel/Ng.Aglom', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 2, NULL, NULL),
(188, 'Silla Giratoria Secretarial Pliana Negro /Coderas', 'S/M', 'S/S', 'Regular', 27, 1, 'S/N', 2, NULL, NULL),
(189, 'Mesa De Trabajo ', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSM0006', 9, NULL, NULL),
(190, 'Mesa De Trabajo ', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSM0007', 9, NULL, NULL),
(191, 'Silla Tubular ', 'S/M', 'S/N', 'Malo', 27, 1, '16055101SNSM0008', 9, NULL, NULL),
(192, 'Silla Tubular ', 'S/M', 'S/N', 'Malo', 27, 1, '16055101SNSM0009', 9, NULL, NULL),
(193, 'Silla Tubular ', 'S/M', 'S/N', 'Malo', 27, 1, '16055101SNSM0010', 9, NULL, NULL),
(194, 'Archivero', 'S/M', 'S/N', 'Malo', 27, 1, '16055101SNSM0014', 10, NULL, NULL),
(195, 'Banco De Madera', 'S/M', 'S/N', 'Regular', 27, 1, '16055105SNSM0005', 10, NULL, NULL),
(196, 'Escritorio Con 3 Cajones', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 10, NULL, NULL),
(197, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0056', 10, NULL, NULL),
(198, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0051', 10, NULL, NULL),
(199, 'Silla ', 'S/M', 'S/N', 'Malo', 27, 1, 'S/N', 10, NULL, NULL),
(200, 'Mesa', 'S/M', 'S/N', 'Bueno', 27, 1, '16055101SNSM0016', 11, NULL, NULL),
(201, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0017', 11, NULL, NULL),
(202, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0018', 11, NULL, NULL),
(203, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0019', 11, NULL, NULL),
(204, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0020', 11, NULL, NULL),
(205, 'Silla ', 'S/M', 'S/N', 'Regular', 27, 1, '16055101SNSM0065', 11, NULL, NULL),
(206, 'Archivero', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(207, 'Archivero2', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(208, 'Anaquel De Fierro', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(209, 'Anaquel De Fierro2', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(210, 'Anaquel De Fierro3', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(211, 'Anaquel De Fierro4', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(212, 'Anaquel De Fierro5', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(213, 'Mesa', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(214, 'Mesa2', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(215, 'Mesa3', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(216, 'Mesa4', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(217, 'Mesa5', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(218, 'Mesa6', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(219, 'Mesa7', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(220, 'Banca 2 Plazas De Polipropileno', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(221, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(222, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado2', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(223, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado3', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(224, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado4', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(225, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado5', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(226, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado6', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(227, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado7', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(228, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado8', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(229, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado9', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(230, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado10', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(231, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado11', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(232, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado12', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(233, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado13', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(234, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado14', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(235, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado15', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(236, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado16', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(237, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado17', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(238, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado18', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(239, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado19', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(240, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado20', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(241, 'Mesa De Trabajo De 1.20x.60x.75 Con Faldon C/Porta teclado21', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(242, 'Mesa De Trabajo 1.00x44x75 Color Caoba', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(243, 'Mesa De Trabajo De 180x80x75 Color Caoba', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(244, 'Sill?n En Piel/Vinil', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(245, 'Sill?n En Piel/Vinil2', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(246, 'Sill?n En Pliana C/Descansabrazos', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(247, 'Conjunto Ejecutivo Tipo Gota, Con Mesa Frontal  1.80x80x75 Y Lateral 1.20x60x75 C/Porta teclado,  ', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(248, 'Credenza 1.80x45x75,', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(249, 'Librero Y Archivero 3 Cajones', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(250, 'Extinguidor Bi?xido De Carbono De 2 Kg.', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(251, 'Extinguidor Bi?xido De Carbono De 2 Kg. 2', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(252, 'Extinguidor Bi?xido De Carbono De 2 Kg.3', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(253, 'Extinguidor Bi?xido De Carbono De 2 Kg. 4', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(254, 'Extinguidor Bi?xido De Carbono De 2 Kg. 5', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(255, 'Silla Giratoria', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(256, 'Silla Giratoria 2', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(257, 'Silla Giratoria 3', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(258, 'Silla Giratoria 4', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(259, 'Silla Giratoria 5', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(260, 'Silla Giratoria 6', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(261, 'Silla Giratoria 7', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(262, 'Silla Giratoria 8', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(263, 'Silla Giratoria 9', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(264, 'Silla Giratoria10', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(265, 'Silla Giratoria11', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(266, 'Silla Giratoria12', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(267, 'Silla Giratoria13', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(268, 'Silla Giratoria14', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(269, 'Silla Giratoria15', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(270, 'Silla Giratoria16', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(271, 'Silla Giratoria17', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(272, 'Silla Giratoria C/Descansabrazos', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(273, 'Silla Giratoria C/Descansabrazos2', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(274, 'Silla Giratoria C/Descansabrazos3', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(275, 'Silla Industrial', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(276, 'Silla Industrial 2', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(277, 'Silla Industrial 3', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(278, 'Silla Industrial 4', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(279, 'Silla Industrial 5', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(280, 'Silla Industrial 6', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(281, 'Silla Industrial 7', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(282, 'Silla Industrial 8', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(283, 'Silla Industrial 9', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(284, 'Silla Industrial 10', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(285, 'Buro De 3 Cajones', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(286, 'Buro De 3 Cajones 2', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(287, 'Buro De 3 Cajones 3', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(288, 'Buro De 3 Cajones 4', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(289, 'Buro De 3 Cajones 5', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(290, 'Buro De 3 Cajones 6', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(291, 'Buro De 3 Cajones 7', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(292, 'Buro De 3 Cajones 8', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(293, 'Buro De 3 Cajones 9', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(294, 'Banco De Madera', 'S/M', 'S/N', 'Regular', 27, 1, 'S/N', 12, NULL, NULL),
(295, 'M?dulo De Computo 3 Cajones Negro/Caoba Aglomerado', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 2, NULL, NULL),
(296, 'Silla Giratoria Secretarial Pliana Negro /Con Coderas', 'S/M', 'S/S', 'Bueno', 27, 1, 'S/N', 4, NULL, NULL),
(297, 'Pantalla Para Proyector ', 'S/M', 'S/S', 'Bueno', 1, 1, 'S/N', 2, NULL, NULL),
(298, 'Pintarron Blanco', 'S/M', 'S/S', 'Regular', 2, 1, 'S/N', 7, NULL, NULL),
(299, 'Silla Giratoria Secretarial Pliana Negro /Con Coderas', 'S/M', 'S/S', 'Regular', 3, 1, '160700001010500000', 5, NULL, NULL),
(300, 'Bascula', 'S/M', 'S/N', 'Malo', 4, 1, '16055105SNSM0082', 10, NULL, NULL),
(301, 'Ventilador', 'S/M', 'S/N', 'Bueno', 5, 1, 'S/N', 13, NULL, NULL),
(302, 'Engargoladora', 'S/M', 'S/N', 'Regular', 6, 1, 'S/N', 13, NULL, NULL),
(303, 'Silla Plegable De Aluminio ', 'XH0188', 'S/N', 'Regular', 7, 1, 'S/N', 13, NULL, NULL),
(304, 'Silla Plegable De Aluminio 2', 'XH0188', 'S/N', 'Regular', 7, 1, 'S/N', 13, NULL, NULL),
(305, 'Silla Plegable De Aluminio  3', 'XH0188', 'S/N', 'Regular', 7, 1, 'S/N', 13, NULL, NULL),
(306, 'Sill?n Ejecutivo Respaldo Bajo ', 'RE-1201', 'S/N', 'BUENO', 8, 1, '16055101SNSMO098', 13, NULL, NULL),
(307, 'Engargoladora', 'S/M', 'RJ00331P', 'Regular', 9, 1, 'S/N', 4, NULL, NULL),
(308, 'Ventilador De Mini-Torre Gris', 'S/M', 'S/S', 'Bueno', 10, 1, 'S/N', 2, NULL, NULL),
(309, 'Ventilador De Pedestal Blanco', 'S/M', 'S/S', 'Bueno', 10, 1, '160109001021400000', 4, NULL, NULL),
(310, 'Sill?n Ejecutivo Respaldo Bajo ', 'RE-1201', 'S/N', 'Bueno', 8, 1, 'S/N', 13, NULL, NULL),
(311, 'Guillotina', 'S/M', 'S/S', 'Regular', 11, 1, 'S/N', 4, NULL, NULL),
(312, 'Ventilador De Pedestal Blanco', 'S/M', 'S/S', 'Regular', 12, 1, '160700001021400000', 6, NULL, NULL),
(313, 'Ventilador De Pedestal', 'S/M', 'S/S', 'Malo', 12, 1, 'S/N', 7, NULL, NULL),
(314, 'Tripie', '8005', 'S/N', 'Malo', 13, 1, 'S/N', 13, NULL, NULL),
(315, 'Ventilador De Pedestal Blanco', 'S/M', 'S/S', 'Bueno', 14, 1, 'S/N', 2, NULL, NULL),
(316, 'Sill?n Ejecutivo Respaldo Bajo ', 'RE-1201', 'S/N', 'BUENO', 8, 1, '16055101SNSMO100', 13, NULL, NULL),
(317, 'Ventilador De Torre Gris', 'S/M', 'S/S', 'Bueno', 15, 1, 'S/N', 2, NULL, NULL),
(318, 'Sacapuntas  El?ctrico', 'I9', 'S/N', 'Regular', 16, 1, 'S/N', 13, NULL, NULL),
(319, 'Sacapuntas El?ctrico', 'I9', 'S/N', 'Regular', 16, 1, 'S/N', 13, NULL, NULL),
(320, 'Sacapuntas El?ctrico 2', 'I9', 'S/N', 'Regular', 16, 1, 'S/N', 13, NULL, NULL),
(321, 'Guillotina', '1162', 'S/N', 'Regular', 17, 1, 'S/N', 13, NULL, NULL),
(322, 'Tripie', '8005', 'S/N', 'Bueno', 18, 1, '16055101SNSM0087', 13, NULL, NULL),
(323, 'Ventilador De Torre Gris', 'S/M', 'S/S', 'Regular', 15, 1, 'S/N', 5, NULL, NULL),
(324, 'Tripie', '8005', 'S/N', 'Regular', 18, 1, '16055101SNSM0088', 14, NULL, NULL),
(325, 'Trituradora', '950S-1 - SKREDMASTER', 'S/S', 'Malo', 19, 1, '160700001050900000', 1, NULL, NULL),
(326, 'DVD', ' DVPN53R5', '21877731', 'Bueno', 20, 1, '1607 0000 30207 60005', 1, NULL, NULL),
(327, 'Aire Acondicionado', 'S/M', 'S/S', 'Bueno', 21, 1, 'S/N', 1, NULL, NULL),
(328, 'Televisor 27"', 'WEGA KV-29FA310', '4129085', 'Bueno', 20, 1, '1607 0000 30219 00001', 1, NULL, NULL),
(329, 'Videograbadora Vhs', 'NVFJ6160PLS', 'D5A20102', 'Bueno', 22, 1, '1607 0000 30220 90001', 1, NULL, NULL),
(330, 'Ventilador De Torre Gris', 'S/M', 'S/S', 'Bueno', 15, 1, 'S/N', 6, NULL, NULL),
(331, 'Ventilador De Pedestal Blanco', 'S/M', 'S/S', 'Malo', 23, 1, 'S/N', 2, NULL, NULL),
(332, 'Aire Acondicionado ', 'S/M', 'S/N', 'Bueno', 24, 1, 'S/N', 13, NULL, NULL),
(333, 'Aire Acondicionado ', 'S/M', 'S/N', 'Bueno', 24, 1, '16055101SNSM0092', 13, NULL, NULL),
(334, 'Aire Acondicionado', 'S/M', 'S/N', 'Bueno', 24, 1, '16055101SNSM0095', 14, NULL, NULL),
(335, 'Aire Acondicionado', 'S/M', 'MCLU512K10RRAB(63222579', 'Regular', 24, 1, 'S/N', 5, NULL, NULL),
(336, 'Escritorio ', 'S/M', 'S/N', 'Regular', 25, 1, 'S/N', 13, NULL, NULL),
(337, 'Comoda ', 'S/M', 'S/N', 'Regular', 25, 1, '16055101SNSM0035', 13, NULL, NULL),
(338, 'Escritorio ', 'S/M', 'S/N', 'Regular', 25, 1, '16055101SNSM0074', 13, NULL, NULL),
(339, 'M?dulo De Trabajo ', 'S/M', 'S/N', 'Regular', 25, 1, '16055101SNSM0045', 13, NULL, NULL),
(340, 'Ventilador De Pedestal', '101325054', 'S/S', 'Regular', 12, 1, '160700001021400000', 7, NULL, NULL),
(341, 'Escritorio ', 'S/M', 'S/N', 'Regular', 25, 1, '16055101SNSM0066', 13, NULL, NULL),
(342, 'Tripie', '8005', 'S/N', 'Malo', 13, 1, '16055101SNSU0039', 8, NULL, NULL),
(343, 'Escritorio ', 'S/M', 'S/N', 'Regular', 25, 1, '16055101SNSM0072', 13, NULL, NULL),
(344, 'Escritorio ', 'S/M', 'S/N', 'Regular', 25, 1, '16055101SNSM0040', 13, NULL, NULL),
(345, 'Escritorio 2', 'S/M', 'S/N', 'Regular', 25, 1, 'S/N', 13, NULL, NULL),
(346, 'Escritorio En Escuadra', 'S/M', 'S/N', 'Bueno', 25, 1, '16055105SNSM0004', 10, NULL, NULL),
(347, 'Tripie ', 'TT3396L', 'S/N', 'Regular', 26, 1, '16055101SNSM0091', 10, NULL, NULL),
(348, 'Tripie', '8005', 'S/N', 'Bueno', 13, 1, '16055101SNSM0089', 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE IF NOT EXISTS `permisos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permiso` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `permiso`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos`
--

CREATE TABLE IF NOT EXISTS `puestos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `puesto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `puestos`
--

INSERT INTO `puestos` (`id`, `puesto`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resguardos`
--

CREATE TABLE IF NOT EXISTS `resguardos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `folio` varchar(45) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `usuarios_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_resguardos_usuarios1_idx` (`usuarios_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `apellido_pat` varchar(45) NOT NULL,
  `apellido_mat` varchar(45) NOT NULL,
  `departamentos_id_depto` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `permisos_id` int(11) NOT NULL,
  `puestos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuarios_departamentos_idx` (`departamentos_id_depto`),
  KEY `fk_usuarios_permisos1_idx` (`permisos_id`),
  KEY `fk_usuarios_puestos1_idx` (`puestos_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `Nombre`, `apellido_pat`, `apellido_mat`, `departamentos_id_depto`, `username`, `pass`, `lastlogin`, `permisos_id`, `puestos_id`) VALUES
(1, 'admin', 'admin', 'admin', 1, 'admin', 'admin', '2014-11-17 00:00:00', 1, 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mobiliario`
--
ALTER TABLE `mobiliario`
  ADD CONSTRAINT `fk_mobiliario_departamentos1` FOREIGN KEY (`departamentos_id_depto`) REFERENCES `departamentos` (`id_depto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mobiliario_marcas1` FOREIGN KEY (`marcas_id_Marca`) REFERENCES `marcas` (`id_Marca`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mobiliario_resguardos1` FOREIGN KEY (`resguardos_id`) REFERENCES `resguardos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mobiliario_usuarios1` FOREIGN KEY (`usuarios_Id_Usuario`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `resguardos`
--
ALTER TABLE `resguardos`
  ADD CONSTRAINT `fk_resguardos_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_departamentos` FOREIGN KEY (`departamentos_id_depto`) REFERENCES `departamentos` (`id_depto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuarios_permisos1` FOREIGN KEY (`permisos_id`) REFERENCES `permisos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuarios_puestos1` FOREIGN KEY (`puestos_id`) REFERENCES `puestos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
