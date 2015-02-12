-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2015 a las 02:39:28
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `data_base`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE IF NOT EXISTS `estudiantes` (
`id_estudiante` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiante`, `nombre`, `apellidos`) VALUES
(1, 'Maria', 'Perez'),
(2, 'Sofia', 'henao'),
(3, 'Carlos', 'Cortez'),
(4, 'Antonio Jose', 'Piedrahita'),
(5, 'Cristina', 'Potters'),
(6, 'Andrew', 'Diaz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_materia`
--

CREATE TABLE IF NOT EXISTS `estudiante_materia` (
`id` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiante_materia`
--

INSERT INTO `estudiante_materia` (`id`, `id_estudiante`, `id_materia`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(7, 3, 2),
(4, 4, 1),
(9, 4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE IF NOT EXISTS `materia` (
`id_materia` int(11) NOT NULL,
  `codigo_materia` int(11) NOT NULL,
  `nombre_materia` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `codigo_materia`, `nombre_materia`) VALUES
(1, 5432, 'HCI2'),
(2, 12345, 'Competencias Administrativas Basicas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE IF NOT EXISTS `nota` (
`id_notas` int(11) NOT NULL,
  `nombre_nota` varchar(45) NOT NULL,
  `porcentaje` float NOT NULL,
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`id_notas`, `nombre_nota`, `porcentaje`, `id_materia`) VALUES
(1, 'Primer Parcial', 0.2, 1),
(2, 'Final', 0.8, 1),
(3, 'Segundo Parcial', 40, 1),
(4, 'Quiz', 15, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas_estudiante`
--

CREATE TABLE IF NOT EXISTS `notas_estudiante` (
`id_nota_estudiante` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `id_notas` int(11) NOT NULL,
  `float` float DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `notas_estudiante`
--

INSERT INTO `notas_estudiante` (`id_nota_estudiante`, `id_estudiante`, `id_materia`, `id_notas`, `float`) VALUES
(1, 1, 1, 1, 5),
(2, 1, 1, 2, 5),
(3, 3, 1, 1, 2),
(4, 3, 1, 2, 1),
(5, 4, 1, 2, 5),
(6, 4, 2, 1, 4.5),
(7, 5, 2, 1, 2.5),
(8, 6, 2, 2, 4.3),
(9, 2, 2, 1, 4.3),
(10, 3, 2, 1, 3.3),
(11, 4, 2, 2, 3.2),
(12, 3, 2, 2, 3.8),
(13, 2, 2, 2, 2.6),
(14, 2, 1, 3, 4.3),
(15, 5, 2, 4, 3.5),
(16, 4, 1, 4, 2.8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
 ADD PRIMARY KEY (`id_estudiante`);

--
-- Indices de la tabla `estudiante_materia`
--
ALTER TABLE `estudiante_materia`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_estudiante` (`id_estudiante`,`id_materia`), ADD KEY `id_estudiante_idx` (`id_estudiante`), ADD KEY `id_materia_idx` (`id_materia`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
 ADD PRIMARY KEY (`id_materia`);

--
-- Indices de la tabla `nota`
--
ALTER TABLE `nota`
 ADD PRIMARY KEY (`id_notas`), ADD KEY `id_materia_idx` (`id_materia`);

--
-- Indices de la tabla `notas_estudiante`
--
ALTER TABLE `notas_estudiante`
 ADD PRIMARY KEY (`id_nota_estudiante`), ADD KEY `id_estudiante_idx` (`id_estudiante`), ADD KEY `id_materia_idx` (`id_materia`), ADD KEY `id_nota_idx` (`id_notas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `estudiante_materia`
--
ALTER TABLE `estudiante_materia`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `nota`
--
ALTER TABLE `nota`
MODIFY `id_notas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `notas_estudiante`
--
ALTER TABLE `notas_estudiante`
MODIFY `id_nota_estudiante` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
