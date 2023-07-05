-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-07-2023 a las 21:19:23
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reservadb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fecha_ida` datetime NOT NULL,
  `fecha_vuelta` datetime NOT NULL,
  `email` varchar(50) NOT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp(),
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `codigo`, `nombre`, `apellido`, `fecha_ida`, `fecha_vuelta`, `email`, `estado`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '1688581182461', 'Maria José', 'Cánepa', '2023-07-07 18:19:00', '2023-07-26 18:19:00', 'canepamariajose95@gmail.com', 1, '2023-07-05 18:19:42', '2023-07-05 19:18:20', NULL),
(2, '1688581219796', 'Victoria ', 'Henk', '2023-07-14 18:22:00', '2023-07-19 18:22:00', 'victoria_modificado@hotmail.com', 0, '2023-07-05 18:20:19', '2023-07-05 18:23:16', NULL),
(3, '1688581570061', 'Alba', 'Reche', '2023-07-30 18:26:00', '2023-07-11 18:48:00', 'alba_reche_modificado@hotmail.com', 0, '2023-07-05 18:26:10', '2023-07-05 18:51:31', NULL),
(4, '1688582270632', 'Bautista', 'Váldez', '2023-07-10 18:37:00', '2023-07-12 18:37:00', 'joaquin@gmail.com', 0, '2023-07-05 18:37:50', '2023-07-05 19:08:09', NULL),
(5, '1688583929309', 'Lidia', 'Acevedo', '2023-07-16 19:05:00', '2023-07-22 19:05:00', 'lidia@yahoo.com', 1, '2023-07-05 19:05:29', '2023-07-05 19:05:29', NULL),
(6, '1688584023855', 'Johanna Vanessa', 'Cánepa', '2023-08-18 19:06:00', '2023-08-28 19:06:00', 'johanna@gmail.com', 1, '2023-07-05 19:07:03', '2023-07-05 19:07:49', NULL),
(7, '1688584391652', 'José Heriberto', 'Cánepa', '2023-07-18 21:00:00', '2023-07-23 19:12:00', 'jhc@hotmail.com', 0, '2023-07-05 19:13:11', '2023-07-05 19:19:05', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
