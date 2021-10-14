-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-10-2021 a las 12:50:07
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cedula_cliente` bigint(20) NOT NULL,
  `direccion_cliente` varchar(255) NOT NULL,
  `email_cliente` varchar(255) NOT NULL,
  `nombre_cliente` varchar(255) NOT NULL,
  `telefono_cliente` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cedula_cliente`, `direccion_cliente`, `email_cliente`, `nombre_cliente`, `telefono_cliente`) VALUES
(488, '027 Debs Road', 'jrizzolo7@tiny.cc', 'Jennine Rizzolo', '921-889-9712'),
(499, '048 Emmet Street', 'aandrusov9@answers.com', 'Augie Andrusov', '546-248-0908'),
(504, '3008 6th Trail', 'mdaulby17@answers.com', 'Margalo D\'Aulby', '210-824-2678'),
(506, '807 Jenna Point', 'bscarre12@samsung.com', 'Brandyn Scarre', '126-253-0193'),
(507, '50 Anniversary Street', 'dbarbery1c@bluehost.com', 'Diena Barbery', '182-614-1912'),
(508, '375 Mcguire Street', 'fdils11@ted.com', 'Frankie Dils', '504-863-7602'),
(515, '2745 Maple Court', 'gstaintonj@furl.net', 'Gay Stainton', '384 655 3591'),
(528, '0535 Erie Court', 'gkentish3@amazon.co.jp', 'Garrett Kentish', '631-655-0631'),
(542, '4648 Artisan Crossing', 'kjaycoxg@ted.com', 'Karla Jaycox', '235 871 4777'),
(555, '0 Nevada Crossing', 'jrutledge13@amazon.co.jp', 'Jada Rutledge', '627-354-1834'),
(559, '26394 Mccormick Terrace', 'zlinton2@pbs.org', 'Zita Linton', '953-697-0090'),
(567, '0446 Anhalt Center', 'rfabb14@rambler.ru', 'Rosabella Fabb', '617-870-1348'),
(568, '3752 Vernon Avenue', 'shoulworthy@bing.com', 'Shelley Houlworth', '652-626-5801'),
(571, '38099 Briar Crest Circle', 'cgravenall7@howstuffworks.com', 'Cecilius Gravenall', '145 842 0976'),
(579, '44 Burning Wood Trail', 'dbootherstonem@wordpress.com', 'Denney Bootherstone', '957-239-6436'),
(580, '03290 Mallard Avenue', 'bpruvost8@wikipedia.org', 'Bern Pruvost', '988 433 4820'),
(594, '9 Redwing Alley', 'rmcwhinnie9@tuttocitta.it', 'Ripley Mcwhinnie', '518 153 7126'),
(602, '459 Monument Court', 'rcampleni@chron.com', 'Reeba Camplen', '848-453-4420'),
(603, '0 Atwood Hill', 'cdubble1@census.gov', 'Celle Dubble', '518-458-9729'),
(605, '7 Harbort Hill', 'ecramptone@pcworld.com', 'Edie Crampton', '448 886 4901'),
(642, '573 5th Plaza', 'nandreacci6@usgs.gov', 'Nicolais Andreacci', '579 534 7866'),
(657, '30 Tennyson Road', 'abowlands5@arstechnica.com', 'Anson Bowlands', '270-352-8066'),
(660, '02 Morningstar Way', 'mreei@booking.com', 'Margy Ree', '553 589 8173'),
(662, '72 Continental Court', 'kanstee3@rakuten.co.jp', 'Kerrin Anstee', '684 324 8357'),
(687, '00466 Forster Junction', 'bcapner1b@engadget.com', 'Bernita Capner', '740-955-4448'),
(716, '0794 Mendota Center', 'mterbeek4@de.vu', 'Mariele Terbeek', '345 828 4401'),
(754, '429 Jay Center', 'sgantletta@123-reg.co.uk', 'Stanislaus Gantlett', '152-198-8737'),
(776, '138 Northwestern Crossing', 'hoxt@slideshare.net', 'Halley Ox', '337-632-2975'),
(779, '62122 Paget Road', 'mrickword4@youtu.be', 'Michal Rickword', '527-591-6322'),
(781, '950 Riverside Center', 'dcasswellr@linkedin.com', 'Delmore Casswell', '286-259-3092'),
(784, '11542 Russell Drive', 'eellereyb@theglobeandmail.com', 'Evangelia Ellerey', '179 435 6513'),
(787, '11 Sachs Drive', 'yovey2@histats.com', 'Yul Ovey', '718 247 0175'),
(791, '93894 International Place', 'gklemza@sina.com.cn', 'Grethel Klemz', '901 617 8855'),
(794, '22115 Sunbrook Center', 'lroomsb@jimdo.com', 'Leelah Rooms', '262-223-3952'),
(805, '7346 Packers Lane', 'fmartinetsc@ezinearticles.com', 'Frants Martinets', '734-583-9437'),
(824, '240 Huxley Court', 'ssharphousez@skype.com', 'Stafford Sharphouse', '453-383-0851'),
(831, '99063 Autumn Leaf Court', 'mcasterouv@chicagotribune.com', 'Margret Casterou', '595-690-1547'),
(832, '2272 Crest Line Pass', 'feakinsq@addthis.com', 'Farris Eakins', '444-942-5931'),
(840, '1 Northport Trail', 'ufarlane0@yale.edu', 'Ulick Farlane', '259 803 9500'),
(849, '1 Holmberg Point', 'dsurby16@elpais.com', 'Dukie Surby', '425-519-6549'),
(882, '97664 Ryan Court', 'mstigersg@upenn.edu', 'Melvin Stigers', '568-181-2344'),
(899, '1155 Eagan Trail', 'jkoppelmannp@lulu.com', 'Jorgan Koppelmann', '209-409-9593'),
(1042, 'wq', 'w@w.com', 'william', '123'),
(1152, 'sopetran', 'yudy@gmail.com', 'Yudy Londoño', '318');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `codigo_detalle_venta` bigint(20) NOT NULL,
  `cantidad_producto` int(11) NOT NULL,
  `codigo_producto` bigint(20) NOT NULL,
  `codigo_venta` bigint(20) NOT NULL,
  `valor_venta` double NOT NULL,
  `valoriva` double NOT NULL,
  `valor_total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`codigo_detalle_venta`, `cantidad_producto`, `codigo_producto`, `codigo_venta`, `valor_venta`, `valoriva`, `valor_total`) VALUES
(1, 1, 7, 6, 1500, 285, 1785),
(2, 2, 2, 6, 3600, 684, 4284),
(3, 3, 6, 6, 23100, 4389, 27489),
(4, 1, 2, 7, 1800, 342, 2142),
(5, 2, 5, 7, 9900, 1881, 11781),
(6, 3, 7, 7, 4500, 855, 5355),
(7, 2, 2, 8, 3600, 684, 4284),
(8, 5, 5, 8, 24750, 4693, 29443),
(9, 7, 8, 8, 20300, 3857, 24157),
(10, 5, 6, 9, 38500, 7315, 45815),
(11, 7, 8, 9, 20300, 3857, 24157),
(12, 5, 2, 9, 9000, 1710, 10710);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigo_producto` bigint(20) NOT NULL,
  `nombre_producto` varchar(255) NOT NULL,
  `nitproveedor` bigint(20) NOT NULL,
  `precio_compra` double NOT NULL,
  `ivacompra` double NOT NULL,
  `precio_venta` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo_producto`, `nombre_producto`, `nitproveedor`, `precio_compra`, `ivacompra`, `precio_venta`) VALUES
(1, 'Naranjas', 1032, 1000, 19, 1250),
(2, 'Papayas', 1032, 1500, 19, 1800),
(3, 'Limones', 1032, 1300, 19, 1430),
(4, 'Lechugas', 1032, 2000, 19, 2200),
(5, 'Cebollas', 21830, 4500, 19, 4950),
(6, 'Zanahorias', 21830, 7000, 19, 7700),
(7, 'Repollos', 21830, 1200, 19, 1500),
(8, 'Ajos', 21830, 2000, 19, 2900),
(9, 'Guayabas', 3401, 1200, 19, 1400),
(10, 'Peras', 3401, 2000, 19, 2200),
(11, 'Pepinos', 3401, 2800, 19, 3100),
(12, 'Aguacates', 3401, 1200, 19, 1400),
(13, 'Arvejas', 3401, 2000, 19, 2200),
(14, 'Mangos', 3401, 2800, 19, 3100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `nitproveedor` bigint(20) NOT NULL,
  `ciudad_provedor` varchar(255) NOT NULL,
  `direccion_proveedor` varchar(255) NOT NULL,
  `nombre_proveedor` varchar(255) NOT NULL,
  `telefono_proveedor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`nitproveedor`, `ciudad_provedor`, `direccion_proveedor`, `nombre_proveedor`, `telefono_proveedor`) VALUES
(1032, 'bogota', 'Calle 11a #22', 'CampoVerde', '3155233569'),
(3401, 'medellin', 'carrera 25 # 54', 'Verduras Paco', '2113231'),
(21830, 'Medellin', 'carrera 12B #12-14', 'Mayorista Verduras', '2145897');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `cedula_usuario` bigint(20) NOT NULL,
  `email_usuario` varchar(255) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`cedula_usuario`, `email_usuario`, `nombre_usuario`, `password`, `usuario`) VALUES
(123, 'admin@correo.com', 'Administrador', '123', 'admin'),
(777, 'w@w.w', 'william ', 'w', 'w');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `codigo_venta` bigint(20) NOT NULL,
  `cedula_usuario` bigint(20) NOT NULL,
  `cedula_cliente` bigint(20) NOT NULL,
  `valor_venta` double NOT NULL,
  `ivaventa` double NOT NULL,
  `total_venta` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`codigo_venta`, `cedula_usuario`, `cedula_cliente`, `valor_venta`, `ivaventa`, `total_venta`) VALUES
(5, 123, 1042, 28200, 5358, 33558),
(6, 123, 1042, 28200, 5358, 33558),
(7, 123, 1042, 16200, 3078, 19278),
(8, 123, 1042, 48650, 9234, 57884),
(9, 123, 1042, 67800, 12882, 80682);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cedula_cliente`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`codigo_detalle_venta`),
  ADD KEY `codigo_producto_idx` (`codigo_producto`),
  ADD KEY `codigo_venta_idx` (`codigo_venta`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo_producto`),
  ADD KEY `nitproveedor` (`nitproveedor`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`nitproveedor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`cedula_usuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`codigo_venta`),
  ADD KEY `cedula_cliente_idx` (`cedula_cliente`),
  ADD KEY `cedula_usuario_idx` (`cedula_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cedula_cliente` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1153;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `codigo_detalle_venta` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `codigo_producto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2223;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `nitproveedor` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1042707010;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `cedula_usuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1152447251;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `codigo_venta` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `codigo_producto` FOREIGN KEY (`codigo_producto`) REFERENCES `productos` (`codigo_producto`),
  ADD CONSTRAINT `codigo_venta` FOREIGN KEY (`codigo_venta`) REFERENCES `ventas` (`codigo_venta`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `cedula_cliente` FOREIGN KEY (`cedula_cliente`) REFERENCES `clientes` (`cedula_cliente`),
  ADD CONSTRAINT `cedula_usuario` FOREIGN KEY (`cedula_usuario`) REFERENCES `usuarios` (`cedula_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
