-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-07-2023 a las 05:44:10
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `e-market_place`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'minhaj', 'minhajulalam@gmail.com', '1234'),
(2, 'sifat', 'irfansifat@gmail.com', '1234'),
(3, 'saimon', 'saimon.ctg@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productId` int(11) NOT NULL,
  `proName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `proPic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `size` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `customerQty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`cartId`, `sId`, `productId`, `proName`, `proPic`, `price`, `size`, `customerQty`) VALUES
(19, 'tvfudko1opep0ci6g0f3h4ldaf', 17, 'Long Dress for Girl', '15189689721UGEDSEFN.jpg', 6000, 'Medium', 1),
(21, 'tvfudko1opep0ci6g0f3h4ldaf', 18, 'Navy blue t-shirt', '151897129113ZIZJNP5.jpg', 350, 'Large', 2),
(25, 'vdhe4099r0ha8vlb3huq663lag', 3, 'sweater for man', '1518640117DP.jpg', 500, 'Short', 1),
(37, 's69irrhc5tp9ibm54r3le10ri5', 19, 'Shirt for man', '15192239131A8LJPNK0.jpg', 600, 'Short', 1),
(39, '96uhjb4e9ok03mme96jm6b2i3l', 16, 'T-shirt for man blue', '15189673741NRJO577I.jpg', 350, 'Short', 1),
(41, 'mpeh0a7qn5s6cfsanfp2gptovj', 21, 'kids party dress', '15192322481MVGHSYR2.jpg', 1000, 'Short', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comment`
--

CREATE TABLE `comment` (
  `SL` int(255) NOT NULL,
  `post_id` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comment`
--

INSERT INTO `comment` (`SL`, `post_id`, `email`, `name`, `comment`) VALUES
(47, 10, 'sebastian@gmail.com', 'sebastian', 'a mi me tardan 5 días'),
(48, 10, 'ericlopezgaaa@gmail.com', 'Erick', 'tardan aprox 3 dias habiles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `community`
--

CREATE TABLE `community` (
  `post_id` int(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `post_text` varchar(200) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `community`
--

INSERT INTO `community` (`post_id`, `email`, `name`, `post_text`, `date`, `time`) VALUES
(10, 'juan@gmial.com', 'Juan ', 'Hola, cuanto les tarda en llegar los productos a Campeche\r\n', '14/05/23', '07:18:48am'),
(11, 'sebastian@gmail.com', 'sebastian', 'Buena pagina\r\n', '14/05/23', '07:39:49am'),
(12, 'ericlopezgaaa@gmail.', 'Erick', 'buenos productos', '05/06/23', '05:29:23am');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_info`
--

CREATE TABLE `delivery_info` (
  `id` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `card` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cardNumber` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `holderName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `exDate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `deliAddress` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `delivery_info`
--

INSERT INTO `delivery_info` (`id`, `sId`, `card`, `cardNumber`, `holderName`, `exDate`, `sCode`, `name`, `email`, `deliAddress`, `phone`) VALUES
(163596168, '38ki9171k4sv3jcmt3ur43djv0', 'visa', '4232213412453789', 'Juan', '12/2028', '242', 'Juan', 'juan@gmial.com', 'Calle santa Isabel numero 201, santo domingo keste.', '9811424402'),
(163597397, '38ki9171k4sv3jcmt3ur43djv0', 'visa', '5442344509875687', 'sebastian', '12/2034', '543', 'sebastian', 'sebastian@gmail.com', 'Calle santa isabel numero 200, santo domingo keste', '9811424402'),
(673518029, '38ki9171k4sv3jcmt3ur43djv0', 'visa', '5432123412341234', 'eric', '10/2023', '123', 'eric', 'eric@gmail.com', 'keste', '982100050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productlist`
--

CREATE TABLE `productlist` (
  `id` int(11) NOT NULL,
  `shopName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `productPic` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productFor` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sellerQuantity` int(11) DEFAULT NULL,
  `Day` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Month` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boost` int(10) NOT NULL DEFAULT 0,
  `keyword` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productlist`
--

INSERT INTO `productlist` (`id`, `shopName`, `email`, `productPic`, `productFor`, `productName`, `description`, `price`, `quantity`, `sellerQuantity`, `Day`, `Month`, `Year`, `boost`, `keyword`) VALUES
(3, 'Quarry', 'ahsaimon.ctg@gmail.com', '1518640117DP.jpg', 'Men\'s Fashion', 'suéter para hombre', 'Jersey azul roto para hombre\nAlgodón completo.\nTodos los tamaños disponibles.', 500, 7, 7, '14', '05', '23', 1, 'mensmansboysmales'),
(16, 'Quarry', 'ahsaimon.ctg@gmail.com', '15189673741NRJO577I.jpg', 'Men\'s Fashion', 'Camiseta hombre azul', 'Camiseta azul para hombre - Edición especial', 350, 2, 2, '27', '04', '23', 1, 'mensmansboysmales'),
(17, 'Quarry', 'msifat5@gmail.com', '15189689721UGEDSEFN.jpg', 'Women\'s Fashion', 'vestido - Edición especial', 'Lindo vestido de noche para eventos sociales', 7000, 8, 8, '14', '05', '23', 0, 'womenswomansgirlsfemales'),
(18, 'Quarry', 'msifat5@gmail.com', '151897129113ZIZJNP5.jpg', 'Men\'s Fashion', 'Camiseta azul - Edición especial', 'Camiseta de media manga para hombre', 450, 14, 7, '20', '3', '2018', 1, 'mensmansboysmales'),
(19, 'Yummy', 'msifat5@gmail.com', '15192239131A8LJPNK0.jpg', 'Men\'s Fashion', 'Camisa para hombre', 'Camisa de vestir manga larga para hombre - Edición Especial.\nTamaño: M, S, L y XL disponibles.', 600, 6, 6, '05', '06', '23', 1, 'mensmansboysmales'),
(20, 'Quarry', 'ahsaimon.ctg@gmail.com', '151923159514FWA29ML.jpg', 'Men\'s Fashion', 'Camiseta de media manga ', 'Camisa negra de manga larga para hombre - Edición Limitada.\nalgodón completo.\nTamaño: M, S, L, XL disponible.', 650, 12, 10, '21', '3', '2018', 0, 'mensmansboysmales'),
(21, 'Pick n Pay', 'ahsaimon.ctg@gmail.com', '15192322481MVGHSYR2.jpg', 'Baby\'s Fashion', 'vestido de fiesta para niños', 'Precioso vestido de fiesta para niños.\nCómodo.\nTamaño disponible.', 1000, 11, 11, '14', '05', '23', 1, 'childrentoybaby'),
(24, 'Quarry', 'msifat5@gmail.com', '15215283231L3XCNF23.jpg', 'Men\'s Fashion', 'Camiseta', 'Camiseta color gris para hombre.', 320, 13, 13, '14', '05', '23', 0, 'mensmansboysmales'),
(25, 'Oppo', 'msifat5@gmail.com', '1521537526oppo As7.jpg', 'Phone and Tablets', 'Oppo A57', 'GENERAL:\r\nFecha de lanzamiento: noviembre de 2016\r\nFactor de forma: pantalla táctil\r\nDimensiones (mm): 149,10 x 72,90 x 7,65\r\nPeso (g) : 147.00\r\nCapacidad de la batería (mAh): 2900\r\nBatería extraíble: Sí\r\nColores: oro rosa, oro\r\n\r\nMOSTRAR:\r\nTamaño de pantalla (pulgadas): 5,20\r\nPantalla táctil: Sí\r\nResolución: 720x1280 píxeles\r\n\r\nHARDWARE:\r\nProcesador: 1,4 GHz de ocho núcleos\r\nMarca del procesador: Qualcomm Snapdragon 435\r\nRAM: 3GB\r\nAlmacenamiento interno: 32GB\r\nAlmacenamiento expandible: Sí\r\nTip', 2899, 3, 3, '05', '06', '23', 0, 'phonemobilembltablet'),
(26, 'Apple ', 'msifat5@gmail.com', '1521538743iphonex.png', 'Phone and Tablets', 'iPhone X', 'Pantalla completa OLED multitáctil de 5,8 pulgadas (en diagonal) Sistema operativo iOS 11 Cámara Primaria-Dual de 12 MP, CPU secundaria de 7 MP Hexa-core BATERÍA Batería de iones de litio no extraíble RAM 3 GB ROM 64/256 GB Cara del sensor ID Barómetro Giroscopio de tres ejes Acelerómetro Sensor de proximidad Sensor de luz ambiental', 9447, 8, 8, '14', '05', '23', 1, 'phonemobilembltablet'),
(27, 'Addidas', 'msifat5@gmail.com', '1521564374basketball.jpg', 'Sports and Travels', 'Baloncesto', 'Baloncesto de color naranja.', 350, 4, 4, '14', '05', '23', 0, 'sportstravelsbastektballcricketbatfootball'),
(28, 'Nike', 'msifat5@gmail.com', '1521564673cricketbat.jpg', 'Sports and Travels', 'Bate de cricket', 'MRF cricket bat.', 550, 11, 11, '24', '03', '18', 0, 'sportstravelsbastektballcricketbatfootball'),
(29, 'Xiaomi ', 'msifat5@gmail.com', '1521603328mi 4x.jpg', 'Phone and Tablets', 'Mi 4x', 'Mi 4x\nRam: 2GB.\nAlmacenamiento: 32GB.\nCamara: Trasera: 13mp y frontal: 5mp.', 3400, 6, NULL, NULL, NULL, NULL, 0, 'phonemobilembltablet'),
(30, 'Boi Bhandar', 'abidsaimon2323@gmail.com', '157505681658542854_172413980341936_1181573764014407680_n.jpg', 'Others', 'Procesamiento Digital de Imágenes [Noticias]', 'Guionista: Rafael C.\nEdición: 12ª.\nImpresión de noticias.', 180, 9, 9, '27', '04', '23', 0, 'othersbook'),
(33, 'Boi Bhandar', 'abidsaimon2323@gmail.com', '157500947351417385_621294401655199_936946187909464064_o.jpg', 'Others', 'Descifrando la entrevista de codificación', 'Autor: Gayle Laakmann.\nEdición: 6ta.', 320, 18, 18, '30', '11', '19', 0, 'othersbook'),
(34, 'Pick n Pay', 'ahsaimon.ctg@gmail.com', '1575055656for CV.jpeg', 'Men\'s Fashion', 'Panjaby de algodón', 'Para Hombres', 1650, 15, NULL, NULL, NULL, NULL, 0, 'mensmansboysmales'),
(35, 'Boi Bhandar', 'abidsaimon2323@gmail.com', '1575056687Computer Programming First part.jpg', 'Others', 'Programación de Computadoras (Primera Parte)', 'Autor: Subeen\nDimik.\nPrimera parte', 190, 15, NULL, NULL, NULL, NULL, 0, 'othersbook');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revenue`
--

CREATE TABLE `revenue` (
  `id` int(11) NOT NULL,
  `ProductsSold` int(11) NOT NULL,
  `TotalAmount` int(11) NOT NULL,
  `Revenue` double NOT NULL,
  `Day` int(255) NOT NULL,
  `Month` int(255) NOT NULL,
  `Year` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `revenue`
--

INSERT INTO `revenue` (`id`, `ProductsSold`, `TotalAmount`, `Revenue`, `Day`, `Month`, `Year`) VALUES
(3, 56, 1321488, 132148.80000000002, 20, 3, 2018),
(4, 33, 51350, 5135, 21, 3, 2018);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sellerinfo`
--

CREATE TABLE `sellerinfo` (
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seller_photo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `seller_nid` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sellerinfo`
--

INSERT INTO `sellerinfo` (`email`, `address`, `category`, `postal_code`, `seller_photo`, `seller_nid`) VALUES
('abidsaimon2323@gmail.com', 'Chattogram', 'Book', '4216', '1575008645logo.png', '1575008645Picture1.png'),
('ahsaimon.ctg@gmail.com', 'Halishahar, Chittagong, Bangladesh.', 'Apparel', '4216', '1518968495DP.jpg', '1518968495allah.jpg'),
('any@gmail.com', 'Cheragi pahar, Chittagong', 'Pet Item', '4300', '1518967759223.JPG', '1518967759allah.jpg'),
('msifat5@gmail.com', '42/43 Equity Central, Momin Road', 'Apparel', '4000', '1521524648IMG_5319.JPG', '1521524648IMG_6344.JPG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `store`
--

CREATE TABLE `store` (
  `email` varchar(100) NOT NULL,
  `store` int(100) NOT NULL DEFAULT 0,
  `store_id` bigint(20) NOT NULL,
  `store_name` varchar(100) NOT NULL,
  `store_banner` varchar(200) NOT NULL,
  `store_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `store`
--

INSERT INTO `store` (`email`, `store`, `store_id`, `store_name`, `store_banner`, `store_description`) VALUES
('abidsaimon2323@gmail.com', 1, 1305742819, 'librería', '1575008645fb_banner_2.png', 'Librería'),
('msifat5@gmail.com', 1, 1476664186, 'Apple ', '1521524648IMG_2185.JPG', 'Store Store Store Store Store Store'),
('ahsaimon.ctg@gmail.com', 1, 1894735621, 'Pick n Pay', '1518968495banner 2.jpg', 'Pick n Pay offers customerâ€™s fantastic quality clothing at the best prices. There is something for everyone in the family, from mom and dad to brother, sister and even baby.\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `account_type` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`account_type`, `name`, `email`, `phone`, `password`, `gender`, `hash`, `active`) VALUES
('Personal', 'Erick', 'ericlopezgaaa@gmail.com', 2147483647, '$2y$10$9ax3Hzl6DelMfjhe8mGJSu.rSf7neeCsMnOHkjbaY/txLkLJ3mhcm', 'Male', '9b72e31dac81715466cd580a448cf823', 0),
('Personal', 'Juan ', 'juan@gmial.com', 2147483647, '$2y$10$887./10UzKCwsh4mYLCq3e6QkiVj/PmyZO6dk4RV/i0ZYy1/AgvOi', 'Male', 'c0e190d8267e36708f955d7ab048990d', 0),
('Personal', 'Saimon Storm', 'saimon.ctg@gmail.com', 1682966471, '$2y$10$ymuigh/Uf.5nT7fbUVRIEuSksy9vU55ubMcRnOBO2ra8rLY1BkpjS', 'Male', '310dcbbf4cce62f762a2aaa148d556bd', 1),
('Personal', 'sebastian', 'sebastian@gmail.com', 2147483647, '$2y$10$ZY61e7f/UDuBJHUnu/KATeK0PxQFnxtMrxBfSV6Qy21ELwkFuCxBi', 'Male', 'b6edc1cd1f36e45daf6d7824d7bb2283', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indices de la tabla `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`SL`);

--
-- Indices de la tabla `community`
--
ALTER TABLE `community`
  ADD PRIMARY KEY (`post_id`);

--
-- Indices de la tabla `delivery_info`
--
ALTER TABLE `delivery_info`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productlist`
--
ALTER TABLE `productlist`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `revenue`
--
ALTER TABLE `revenue`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sellerinfo`
--
ALTER TABLE `sellerinfo`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `comment`
--
ALTER TABLE `comment`
  MODIFY `SL` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `community`
--
ALTER TABLE `community`
  MODIFY `post_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `productlist`
--
ALTER TABLE `productlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `revenue`
--
ALTER TABLE `revenue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
