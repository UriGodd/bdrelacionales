-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2025 a las 00:27:34
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
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
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
(1, 'Uriel', 'Rodríguez Rojo', '23325061070503', '2008-08-05', 1, 'urigodesgodporgod@gmail.com', '+52 6674939801'),
(2, 'César Alexis', 'López Molina', '23325061070539', '2008-07-02', 1, 'cesaralexislopezmolina128@gmail.com', '+52 6673084808'),
(3, 'Osman Eden', 'Quiñonez Saenz', '23325061070604', '2008-03-16', 1, 'osman.quiñonez23@cetis107.edu.mx', '+52 6675784067'),
(4, 'David Sebastián', 'Payan Serrano', '23325061070602', '2008-11-05', 1, 'david.payan23@cetis107.edu.mx', '+52 6674573001'),
(5, 'Sergio Braulio', 'Martinez Felix', '23325061070438', '2008-08-14', 1, 'sergio.martinez23@cetis107.edu.mx', '+52 6672075250'),
(6, 'Rubi Esmeralda ', 'Zepeda Garcia', '23325061070514', '2007-09-29', 0, 'rubi.zepeda23@cetis107.edu.mx', '+52 6673940804'),
(7, 'Jonathan Horus', 'Zazueta Hernandez ', '23325061070413', '2008-04-09', 1, 'jonathan.zazueta23@cetis107.edu.mx', '+52 6677562259'),
(9, 'Santiago', 'Lopez Aispuro', '23325061070386', '2008-04-20', 1, 'santiago.lopeza23@cetis107.edu.mx', '+52  6673309322'),
(11, 'Ryhanna Patricia', 'Ramirez Montiel', '23325061070555', '2008-05-31', 0, 'ryhanna.ramirez23@cetis107.edu.mx', ''),
(12, 'Jose Daniel', 'Arreola Soto', '23325061070466', '2008-02-06', 1, 'jose.arreola23@cetis107.edu.mx', ''),
(13, 'Victor Emilia', 'Ojeda Castro', '23325061070496', '2008-09-28', 1, 'victor.ojeda23@cetis107.edu.mx', '+52 6677554258'),
(14, 'Juan Pablo', 'Ochoa Hermosillo', '23325061070396', '2008-07-23', 1, 'juan.ochoa23@cetis107.edu.mx', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `Nombre`, `Descripcion`) VALUES
(1, 'Programacion', 'El CETIS 107 ofrece la carrera técnica en Programación, donde los estudiantes aprenden a desarrollar software, trabajando con lenguajes de programación, bases de datos y desarrollo de aplicaciones. La formación está enfocada en la resolución de problemas y el uso de tecnologías actuales, preparando '),
(2, 'Ofimatica', 'La ofimática en el CETIS 107 se refiere al uso de herramientas y software para realizar tareas administrativas, contables, de comunicación y gestión de documentos, como procesadores de texto, hojas de cálculo y presentaciones, aplicados a diversos contextos laborales y educativos.'),
(3, 'Contabilidad', 'La contabilidad en el CETIS 107 se enfoca en el estudio y manejo de los procesos financieros, como el registro de operaciones, la elaboración de estados financieros y la gestión de impuestos, utilizando herramientas y conceptos clave para la administración económica en empresas.'),
(4, 'Construccion', 'En el CETIS 107, la carrera de construcción abarca el aprendizaje de técnicas y procesos para la edificación de estructuras, gestión de obras, cálculo de materiales y seguridad en el trabajo, utilizando herramientas y tecnologías modernas para el desarrollo de proyectos de construcción.'),
(5, 'Electronica', 'La electrónica en el CETIS 107 se centra en el estudio de circuitos, dispositivos y sistemas electrónicos, incluyendo el diseño, mantenimiento y reparación de equipos, así como la implementación de tecnologías innovadoras en diversos sectores industriales'),
(6, 'Diseño Grafico', 'El diseño gráfico en el CETIS 107 ofrece una formación integral en la creación visual, combinando arte y tecnología para desarrollar proyectos gráficos como logotipos, folletos, anuncios y diseño digital, utilizando herramientas de software para la comunicación visual efectiva.');

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
(10, 'Cynthia Eloisa Gonzalez Garcia', 'cynthia.gonlez@cetis107.edu.mx', 0, '1977-06-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `semestre`) VALUES
(1, 'Base de datos no relacionales', 3),
(2, 'Ingles', 4),
(3, 'Historia', 1),
(4, 'Temas Matematicos', 1),
(5, 'Recursos Socioemocionales', 4),
(6, 'Reacciones Quimicas', 1),
(7, 'Tutorias', 4),
(8, 'Ciencias Sociales', 3),
(9, 'Base de datos relacionales', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
