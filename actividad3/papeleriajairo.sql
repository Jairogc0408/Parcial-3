-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2024 a las 03:12:54
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `papeleriajairo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `papeleria_jairo`
--

CREATE TABLE `papeleria_jairo` (
  `id` int(11) NOT NULL,
  `producto` varchar(100) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `papeleria_jairo`
--

INSERT INTO `papeleria_jairo` (`id`, `producto`, `categoria`, `precio`, `cantidad`) VALUES
(1, 'Lápiz de Colores (12 piezas)', 'Arte y Diseño', 60.00, 40),
(2, 'Bloc de Notas Adhesivas', 'Papelería General', 25.00, 70),
(3, 'Pegamento Líquido Escolar', 'Útiles Escolares', 18.00, 90),
(4, 'Corrector Líquido', 'Útiles Escolares', 12.00, 80),
(5, 'Hojas Bond Tamaño Carta (500)', 'Papelería General', 80.00, 20),
(6, 'Papel Lustre', 'Arte y Diseño', 15.00, 100),
(7, 'Cinta Adhesiva Transparente', 'Útiles Escolares', 10.00, 120),
(8, 'Marcador para Textos', 'Útiles Escolares', 20.00, 60),
(9, 'Engrapadora Manual', 'Papelería General', 50.00, 30),
(10, 'Juego de Plumones', 'Arte y Diseño', 90.00, 25);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `papeleria_jairo`
--
ALTER TABLE `papeleria_jairo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `papeleria_jairo`
--
ALTER TABLE `papeleria_jairo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
