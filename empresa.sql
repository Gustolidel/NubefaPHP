-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-01-2022 a las 18:24:22
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `factura`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `nroDoc` int(11) DEFAULT NULL,
  `nombreCompleto` varchar(100) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `ubigeo` varchar(500) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefono` int(9) DEFAULT NULL,
  `telefonofijo` int(7) DEFAULT NULL,
  `idTipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nroDoc`, `nombreCompleto`, `alias`, `direccion`, `ubigeo`, `email`, `telefono`, `telefonofijo`, `idTipo`) VALUES
(1, 45671234, 'Supermercados Peruanos Sociedad Anonima ´o ´ S.P.S.A.', 'SUPERMERCADOS PERUANOS', 'Cal. Morelli Nro. 181 Int. P-2', 'San Borja', 'super@gmail.com', 123123455, 4567654, 2),
(2, 45677238, 'BANCO BBVA PERU', 'BBVA', 'Av. Rep de Panama Nro. 3055', 'San Isidro', 'bbva@gmail.com', 125127455, 4567674, 2),
(3, 45681221, 'SOCIEDAD MINERA CERRO VERDE S.A.A.', 'Minera Cerro Verde', 'Cal. Jacinto Ibañez Nro. 315', 'Arequipa', 'cerroverde@gmail.com', 223126458, 4567678, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1` (`idTipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`idTipo`) REFERENCES `tipo` (`idTipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
