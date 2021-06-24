-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 18-06-2021 a las 04:45:21
-- Versión del servidor: 10.3.29-MariaDB-0ubuntu0.20.04.1
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdsys`
--
CREATE DATABASE IF NOT EXISTS `bdsys` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdsys`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `IDCARGO` int(11) NOT NULL,
  `NOMBRECARGO` varchar(20) DEFAULT NULL,
  `ESTADO` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`IDCARGO`, `NOMBRECARGO`, `ESTADO`) VALUES
(1, 'ADMINISTRADOR', 1),
(2, 'ESTUDIANTE', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IDUSUARIO` int(11) NOT NULL,
  `NOMBREUSUARIO` varchar(20) DEFAULT NULL,
  `CLAVE` varchar(10) DEFAULT NULL,
  `ESTADO` int(3) DEFAULT NULL,
  `IDCARGO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IDUSUARIO`, `NOMBREUSUARIO`, `CLAVE`, `ESTADO`, `IDCARGO`) VALUES
(1, 'Luis', '1234', 1, 1),
(2, 'Alberto', '1234', 1, 2),
(22, '10012047', '1234', 1, 2),
(23, '19960925', '1234', 1, 1),
(24, 'keila', '1234', 1, 1),
(25, 'mariel', '1234', 1, 2),
(26, 'emmanuel', '1234', 1, 1),
(27, 'arit', '1234', 1, 2),
(28, '10012057', '1234', 1, 1),
(29, '10012058', '1234', 1, 1),
(30, 'Arit', '1234', 1, 1),
(31, 'Emmanuel', '1234', 1, 2),
(32, 'Eduardo', '1234', 1, 2),
(33, 'Jennifer', '1234', 1, 2),
(34, 'Paola', '1234', 1, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`IDCARGO`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IDUSUARIO`),
  ADD KEY `FK_USUARIO_CARGO` (`IDCARGO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `IDCARGO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IDUSUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_USUARIO_CARGO` FOREIGN KEY (`IDCARGO`) REFERENCES `cargo` (`IDCARGO`);
--
-- Base de datos: `sistemaJSP`
--
CREATE DATABASE IF NOT EXISTS `sistemaJSP` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sistemaJSP`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Roles`
--

CREATE TABLE `Roles` (
  `ID_Rol` int(50) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Roles`
--

INSERT INTO `Roles` (`ID_Rol`, `url`) VALUES
(1, 'images/136678627_10164474144740425_1600033842763677619_n.jpg'),
(2, 'images/luis_chavelas.jpg'),
(3, 'images/4ff4d2438af59586784918cb7b2ef594690bfd0094b91c651d31f421c09144e5.png'),
(4, 'images/937x624cut1.jpg'),
(5, 'images/11896358_964940376900718_7192473988254381907_o.jpg'),
(6, 'images/Captura5.jpeg'),
(7, 'images/UAEM2021.png'),
(8, 'images/UAEM2021.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `uname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `registeredon` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Roles`
--
ALTER TABLE `Roles`
  ADD PRIMARY KEY (`ID_Rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Roles`
--
ALTER TABLE `Roles`
  MODIFY `ID_Rol` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Base de datos: `titulaciones`
--
CREATE DATABASE IF NOT EXISTS `titulaciones` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `titulaciones`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativos`
--

CREATE TABLE `administrativos` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(55) NOT NULL,
  `puesto` varchar(55) NOT NULL,
  `matricula` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrativos`
--

INSERT INTO `administrativos` (`ID`, `nombre`, `puesto`, `matricula`, `password`) VALUES
(1, 'Luis Chavelas', 'Director de titulaciones', '19960925', '1234'),
(2, 'Doris', 'Jefa de carrera', '80957894', '123'),
(3, 'Ana Marin Herrera', 'Administradora', '196710012047', '12345'),
(4, 'Alcides Chavez', 'Capturador', '10012083', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(55) NOT NULL,
  `carrera` varchar(55) NOT NULL,
  `matricula` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`ID`, `nombre`, `carrera`, `matricula`, `password`) VALUES
(1, 'Luis Alberto Chavelas Marin', 'Licenciatura en Informatica', '10019960925', '12345'),
(2, 'Emmanuel', 'Licenciatura en informatica', '10012068', '12345'),
(3, 'Mariana Chavelas Marin', 'Licenciada en Educacion Primaria', '19931001207', '12345'),
(4, 'Heradio', 'Chavelas', '10012067', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registroalumno`
--

CREATE TABLE `registroalumno` (
  `ID` int(11) NOT NULL,
  `nivac` varchar(55) NOT NULL,
  `carr` varchar(55) NOT NULL,
  `lunac` varchar(55) NOT NULL,
  `curp` varchar(55) NOT NULL,
  `nom` varchar(55) NOT NULL,
  `apep` varchar(55) NOT NULL,
  `apem` varchar(55) NOT NULL,
  `gense` varchar(55) NOT NULL,
  `fechanac` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registroalumnorev1`
--

CREATE TABLE `registroalumnorev1` (
  `ID` int(11) NOT NULL,
  `nivac` varchar(55) NOT NULL,
  `carr` varchar(55) NOT NULL,
  `lunac` varchar(55) NOT NULL,
  `curp` varchar(55) NOT NULL,
  `nom` varchar(55) NOT NULL,
  `apep` varchar(55) NOT NULL,
  `apem` varchar(55) NOT NULL,
  `gense` varchar(55) NOT NULL,
  `fechanac` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `regular` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registroalumnorev1`
--

INSERT INTO `registroalumnorev1` (`ID`, `nivac`, `carr`, `lunac`, `curp`, `nom`, `apep`, `apem`, `gense`, `fechanac`, `email`, `regular`) VALUES
(43, 'Licenciatura', 'Informatica', 'Morelos', 'MARK970523MMSRDL08', 'Keila Mariel ', 'Martinez', 'Rodriguez', 'Femenino', '23/05/1997', 'escombros.cosmicos@gmail.com', 1),
(44, 'Licenciatura', 'Licenciatura en Informatica', 'Chihuahua, Chihuahua', 'CAMLXXXXXXXXXXXX03', 'Luis Alberto', 'Chavelas', 'Marin', 'Masculino', '25/09/1996', 'antraxr32@gmail.com', 1),
(45, 'Licenciatura', 'Informatica', 'Cuernavaca ', 'EDOA971102HMSNRR05', 'Eduardo', 'Orihuela', 'Aguilar', 'Masculino', '01/12/1995', 'eduardo_12@gmail.com', 1),
(46, 'Licenciatura', 'Informatica', 'Cuernavaca ', 'JEGG0023TMERJM09', 'Jennifer de la rosa', 'Gonzales', 'Gutierrez', 'Femenino', '15/01/1985', 'Jenni_GG007@gmail.com', 1),
(47, 'Licenciatura', 'Informatica', 'Cuernavaca ', 'PAHP028937HGMASGJ08', 'Paola', 'Hernandez', 'Perez', 'Femenino', '07/07/1992', 'Paola_HND2.0@gmail.com', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrativos`
--
ALTER TABLE `administrativos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `registroalumnorev1`
--
ALTER TABLE `registroalumnorev1`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrativos`
--
ALTER TABLE `administrativos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `registroalumnorev1`
--
ALTER TABLE `registroalumnorev1`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
