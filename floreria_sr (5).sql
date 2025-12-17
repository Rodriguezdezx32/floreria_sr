-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-12-2025 a las 12:01:46
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `floreria_sr`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`) VALUES
(1, 'Románticos'),
(2, 'Cumpleaños'),
(3, 'Condolencias'),
(4, 'Decorativos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `archivo` varchar(255) DEFAULT NULL,
  `pago` varchar(20) NOT NULL,
  `entrega` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `id_usuario`, `fecha`, `total`, `estado`, `archivo`, `pago`, `entrega`) VALUES
(43, 13, '2025-12-06 11:51:35', 85.00, 'Enviado', 'pedido_20251206175135_u13.pdf', '', ''),
(44, 13, '2025-12-06 12:18:16', 150.00, 'Procesando', 'pedido_20251206181816_u13.pdf', '', ''),
(45, 13, '2025-12-06 12:33:54', 85.00, 'Cancelado', 'pedido_20251206183354_u13.pdf', '', ''),
(50, 13, '2025-12-06 14:52:37', 205.00, 'Pendiente', 'pedido_50_u13.pdf', '', ''),
(56, 13, '2025-12-08 11:12:57', 150.00, 'Pendiente', 'pedido_56_u13.pdf', '', ''),
(58, 14, '2025-12-09 10:41:40', 365.00, 'Pendiente', 'pedido_58_u14.pdf', '', ''),
(59, 14, '2025-12-09 10:51:35', 130.00, 'Pendiente', 'pedido_59_u14.pdf', '', ''),
(60, 14, '2025-12-10 01:45:46', 365.00, 'Pendiente', 'pedido_60_u14.pdf', '', ''),
(61, 14, '2025-12-10 04:58:17', 515.00, 'Pendiente', 'pedido_61_u14.pdf', '', ''),
(63, 20, '2025-12-16 22:51:55', 260.00, 'Pendiente', 'pedido_20251217045155_u20.pdf', '', ''),
(64, 20, '2025-12-16 22:54:37', 130.00, 'Pendiente', 'pedido_20251217045437_u20.pdf', '', ''),
(65, 20, '2025-12-17 04:04:00', 130.00, 'Pendiente', 'pedido_20251217100400_u20.pdf', '', ''),
(66, 20, '2025-12-17 04:07:03', 130.00, 'Pendiente', 'pedido_20251217100703_u20.pdf', '', ''),
(67, 20, '2025-12-17 04:07:13', 215.00, 'Pendiente', 'pedido_20251217100713_u20.pdf', '', ''),
(68, 20, '2025-12-17 04:25:36', 85.00, 'Pendiente', 'pedido_20251217102536_u20.pdf', 'Contraentrega', 'Delivery'),
(69, 20, '2025-12-17 04:29:51', 130.00, 'Pendiente', 'pedido_20251217102951_u20.pdf', 'Yape/Plin', 'Recojo en tienda'),
(70, 20, '2025-12-17 04:37:46', 215.00, 'Pendiente', 'pedido_20251217103746_u20.pdf', 'Yape/Plin', 'Recojo en tienda'),
(71, 20, '2025-12-17 04:42:37', 130.00, 'Pendiente', 'pedido_20251217104237_u20.pdf', 'Tarjeta', 'Delivery'),
(72, 20, '2025-12-17 04:45:36', 85.00, 'Pendiente', 'pedido_20251217104536_u20.pdf', 'Yape/Plin', 'Delivery'),
(73, 20, '2025-12-17 04:45:53', 130.00, 'Pendiente', 'pedido_20251217104553_u20.pdf', 'Depósito', 'Delivery'),
(74, 20, '2025-12-17 04:46:07', 85.00, 'Pendiente', 'pedido_20251217104607_u20.pdf', 'Yape/Plin', 'Delivery'),
(75, 20, '2025-12-17 05:07:36', 85.00, 'Cancelado', 'pedido_20251217110736_u20.pdf', 'Tarjeta', 'Recojo en tienda'),
(76, 20, '2025-12-17 05:10:02', 130.00, 'Pendiente', 'pedido_20251217111002_u20.pdf', 'Tarjeta', 'Delivery');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen_url` varchar(255) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `descripcion`, `precio`, `imagen_url`, `id_categoria`, `stock`) VALUES
(1, 'Arreglo Amor Eterno', 'Rosas rojas y lirios blancos en caja decorativa', 130.00, '1765212656_amor_eterno.jpg', 1, 293),
(2, 'Bouquet Feliz Día', 'Tulipanes multicolor con tarjeta personalizada', 85.00, 'feliz_dia.jpg', 2, 394),
(3, 'Arreglo Paz y Luz', 'Orquídeas blancas y claveles en base de cerámica', 150.00, 'paz_luz.jpg', 3, 400),
(4, 'Centro de Mesa Primavera', 'Girasoles, margaritas y follaje en base de madera', 95.00, 'primavera.jpg', 4, 100),
(8, 'Ramo de Rosas Deluxe', 'Rosas premium con follaje fino', 95.00, 'rosas_deluxe.jpg', 1, 400),
(9, 'Caja Romántica', 'Caja cuadrada con lirios blancos y rosas rosadas', 130.00, 'caja_romantica.jpg', 1, 900),
(11, 'Tulipanes Pastel', 'Tulipanes en tonos pastel en base cilíndrica', 90.00, 'tulipanes_pastel.jpg', 2, 430),
(12, 'Arreglo Color Fiesta', 'Arreglo vibrante con flores de colores variados', 70.00, 'color_fiesta.jpg', 2, 500),
(14, 'Orquídea Imperial', 'Orquídea blanca en maceta decorativa', 180.00, 'orquidea_imperial.jpg', 3, 300),
(15, 'Elegancia Blanca', 'Arreglo blanco con orquídeas y hortensias', 160.00, 'elegancia_blanca.jpg', 3, 300),
(17, 'Girasoles Radiantes', 'Ramo de girasoles grandes y frescos', 75.00, 'girasoles_radiantes.jpg', 4, 200),
(18, 'Arreglo Campestre', 'Flores silvestres con toque rústico', 80.00, 'campestre.jpg', 4, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `clave` varchar(255) NOT NULL,
  `rol` varchar(50) NOT NULL,
  `creado_en` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `correo`, `telefono`, `direccion`, `clave`, `rol`, `creado_en`) VALUES
(3, 'Rodezx ', 'dezx@gmail.com', '987654321', 'Barranco', '$2y$10$sJprKXdV/cbq7igCCERKM.o3rvc4SfyN66I3iz7vI9z1v/D0LOVm6', 'admin', '2025-12-16'),
(8, 'Rodezx ', 'rodezx@gmail.com', '912345678', 'Barranco', '$2y$10$78zxOG9TLpUIMJ93bzpFjeKJz6Xgd20uR4/LwWiF7pTguh7kIJ43C', 'admin', '2025-12-16'),
(12, 'María López', 'maria.lopez@gmail.com', '912365478', 'Miraflores', '$2y$10$i7ZjRZAHqIDAaKgmuEYn7eOZF2EpcVF5T4SgqrC/Ut8dBVvxA9wgu', 'cliente', '2025-12-16'),
(13, 'codex', 'codex@gmail.com', '912365478', 'Barranco\r\n', '$2y$10$pxpwMbRLckDQmMT82C6pKeapDrhuo8jGti7SXGZ51NidQ9YSx8o7C', 'cliente', '2025-12-16'),
(14, 'Stif RT', 'stif@gmail.com', '920245123', 'Chorrillos', '$2y$10$hsUNyEVkVkra3mqoQA8Rp.u21dsyQcKbeGSgL07iObJfmiiWLavNG', 'cliente', '2025-12-16'),
(18, 'Dezx32', 'dezxcito@gmail.com', '912345677', 'Miraflores', '$2y$10$TGGM4uQeUjkRUVHMeQki6OzxWsM.5BdN9r5JmNNV3Wx0bvZ37RDyS', 'admin', '2025-12-16'),
(19, 'Nica MiMI', 'nica@gmail.comi', '999222111', 'Chorrillos', '$2y$10$Ok5TetLeO9foq0c9iv1ZCeeUl9jr13bx.LpXRDn01bSPJNuAhZWdm', 'cliente', '2025-12-16'),
(20, 'Cici Yoyo', 'cici@gmail.com', '911222105', 'Miraflores', '$2y$10$4foozV3azLnUMYoUWt2j6OfP5zqjf4fQ7hj.yyKr60JB6Xbo1vgZW', 'cliente', '2025-12-09'),
(22, 'Nico', 'nico@gmail.com', '999222111', 'Barranco', '$2y$10$SYCTLQ4csDO54ZJEydb7O.Ro.dXqq.UgPNU8riZvuLfQ7cPxUQFX6', 'admin', '2025-12-17');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
