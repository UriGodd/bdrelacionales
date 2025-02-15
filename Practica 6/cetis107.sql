-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2025 a las 01:15:41
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'César Alexis', 'López Molina', '23325061070539', '2008-07-02', 1, 'cesaralexislopezmolina128@gmail.com', '+52 6673084808'),
(2, 'Uriel', ' Rodríguez Rojo', '23325061070503', '0000-00-00', 1, 'urigoesgodporgod@gmail.com', '+52 6674939801'),
(3, 'David Sebastián', 'Payan Serrano', '2332506107602', '0000-00-00', 1, 'david.payan23@cetis107.edu.mx', '+52 6674573001'),
(4, 'Osman Edén', 'Quiñonez Sáenz', '23325061070604', '0000-00-00', 1, 'osman.quiñonez23@cetis107.edu.mx', '+52 667 578 4067'),
(5, 'Jesús Sebastián', 'Leal Vega', '23325061070589', '0000-00-00', 1, 'jesus.leal23@cetis107.edu.mx', '+52 6672167665'),
(6, 'Gibran Antonio', 'Arballo García', '23325061070362', '0000-00-00', 1, 'gibran.arballo23@cetis107.edu.mx', '+52 6676951896'),
(7, 'Sergi Braulio', 'Martínez Félix', '23325061070438', '0000-00-00', 1, 'sergio.martinez23@cetis107.edu.mx', '+52 6672075250'),
(8, 'Rubi Esmeralda', 'Zepeda Garcia', '23325061070514', '0000-00-00', 0, 'rubi.zepeda23@cetis107.edu.mx', '+52 6673940804'),
(9, 'Paolo Nicholas', 'Valdez Bernal', '23325061070460', '0000-00-00', 1, 'Paolo.valdez23@cetis107.edu.mx', '+52 6675412714'),
(10, 'Ángel Guillermo', 'Wong Valenzuela', '2332506107', '0000-00-00', 1, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carga_academica`
--

CREATE TABLE `carga_academica` (
  `id` int(11) NOT NULL,
  `clase_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carga_academica`
--

INSERT INTO `carga_academica` (`id`, `clase_id`, `alumno_id`, `calificacion`) VALUES
(11, 3, 2, 10),
(12, 4, 2, 10),
(13, 5, 2, 10),
(14, 6, 2, 10),
(15, 7, 2, 10),
(16, 8, 2, 10),
(17, 9, 2, 10),
(18, 2, 2, 10),
(19, 1, 2, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id` int(255) NOT NULL,
  `materia_id` int(11) NOT NULL,
  `Maestro_id` int(11) NOT NULL,
  `Hora` time NOT NULL,
  `aula` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id`, `materia_id`, `Maestro_id`, `Hora`, `aula`) VALUES
(1, 1, 1, '13:20:00', 'CC2'),
(2, 2, 3, '16:40:00', 'CC1-12'),
(3, 3, 4, '14:00:00', '12'),
(4, 4, 9, '15:20:00', '12'),
(5, 5, 9, '16:00:00', '12'),
(6, 6, 7, '16:40:00', '12'),
(7, 7, 6, '18:00:00', '12'),
(8, 8, 9, '16:00:00', '12'),
(9, 10, 11, '18:00:00', '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(255) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `Nombre`, `Descripcion`) VALUES
(1, 'Ofitmatica', 'En el contexto regional y nacional, la formación de Técnico en Ofimática es relevante porque ofrece las competencias profesionales que permiten\r\nal estudiante realizar actividades dirigidas a obtener y gestionar información de manera digital, mediante el uso eficaz y eficiente, de los recursos\r\ninfo'),
(2, 'Programacion', 'En el contexto nacional la formación de Técnicos en: Programación es relevante porque: contribuye a la formación de personas capaces de\r\nintegrarse a un mercado laboral dinámico y de alta demanda, que esta a la vanguardia en el uso de la tecnología y que contribuye a la\r\ntransformación digital de lo'),
(3, 'Construcción', 'La Reforma de la Educación Media Superior se orienta a la construcción de un Sistema Nacional de Bachillerato, con los propósitos de conformar\r\nuna identidad propia de este nivel educativo y lograr un perfil común del egresado en todos los subsistemas y modalidades que lo constituyen,\r\nsiempre dentr'),
(4, 'Electronica', 'acilitando al egresado su incorporación al mundo laboral en la reparación, mantenimiento, instalación y ensamble de aparatos eléctricos y\r\nelectrónicos para el hogar, personales, equipo industrial entre otros o en el desarrollo de procesos productivos independientes, de acuerdo con\r\nsus intereses pr'),
(5, 'Diseño grafico', 'El diseño gráfico es la creación visual de ideas y mensajes mediante elementos como imágenes, tipografía y colores, con el fin de comunicar de manera efectiva y estética.'),
(6, 'Contabilidad', 'La contabilidad es la disciplina que se encarga de estudiar, medir y registrar el patrimonio y las operaciones financieras de una entidad, con el fin de tomar decisiones económicas.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `nombre`, `correo`, `genero`, `fecha_nacimiento`) VALUES
(1, 'Jorge Ibarra Quintero', 'jorge.ibarra23@cetis107.edu.mx', 1, '1977-05-31'),
(2, 'Maria de jesus Verduzco ', 'maria.verduzco23@cetis107.edu.mx', 0, '1968-10-02'),
(3, 'Luis Carlos Santillan ', 'luis.santillan@cetis107.edu.mx', 1, '1987-08-11'),
(4, 'Ivan Berdusco', 'ivan.berdusco@cetis107.du.mx', 1, '2001-09-11'),
(5, 'Jose Francisco Rochin Gonzales', 'jose.rochin@cetis107.du.mx', 1, '1976-10-18'),
(6, 'Maria Teresa Suplveda Lomas', 'maria.teresa@cetis107.edu.mx', 0, '1998-09-21'),
(7, 'Pedro Noe del Real', 'noe.real@ctis107.edu.mx', 1, '1962-04-07'),
(8, 'Lupita Guadalupe Ruelas Astorgaa', 'lupita.ruelas@cetis107.edu.mx', 0, '1890-05-25'),
(9, 'Liliana Espinoza Juarez', 'juarez.liliana23@cetis107.edu.mx', 0, '1890-04-20'),
(10, 'Cynthia Eloisa Gonzalez Garcia', 'cynthia.gonlez@cetis107.edu.mx', 0, '1977-06-15'),
(11, 'Maria Teresa Suplveda Lomas', 'maria.Splveda@cetis107.edu.mx', 0, '1982-12-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(255) NOT NULL,
  `Nombre` varchar(90) NOT NULL,
  `Semestre` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `Nombre`, `Semestre`) VALUES
(1, 'Base de datos no relacionales', '3°'),
(2, 'Base de datos relacionales', '3°'),
(3, 'Ingles', '4°'),
(4, 'Temas Matematicos', '1°'),
(5, 'Recursos socioemocionales', '4°'),
(6, 'Reacciones quimicas', '1°'),
(7, 'Historia', '1°'),
(8, 'Tutoria', ' 4'),
(10, 'Ciencias Sociales', '4');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clase_id` (`clase_id`),
  ADD KEY `alumno_id` (`alumno_id`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materia_id` (`materia_id`),
  ADD KEY `Maestro_id` (`Maestro_id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD CONSTRAINT `carga_academica_ibfk_1` FOREIGN KEY (`clase_id`) REFERENCES `clases` (`id`),
  ADD CONSTRAINT `carga_academica_ibfk_2` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`);

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`Maestro_id`) REFERENCES `maestros` (`id`),
  ADD CONSTRAINT `clases_ibfk_2` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
