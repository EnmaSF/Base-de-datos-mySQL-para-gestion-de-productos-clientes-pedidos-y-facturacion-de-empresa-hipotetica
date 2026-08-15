-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2026 a las 19:22:45
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
-- Base de datos: `ecomstore_suarez`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `ID_CATEGORIA` int(11) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `DESCRIPCION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`ID_CATEGORIA`, `NOMBRE`, `DESCRIPCION`) VALUES
(1, 'Celulares', 'Dispositivos electronicos portatiles para hacer y recibir llamadas, mensajear y conexion a internet'),
(2, 'Tabletas', 'Dispositivos electronicos portatiles que se encuentran entre un celular inteligente y una laptop en terminos de tamaño y funcionalidad'),
(3, 'Computo', 'Computadoras, laptops y accesorios de computo'),
(4, 'TVs', 'Sistemas de transmision y recepcion de imagenes y sonidos a distancia'),
(5, 'Juegos y consolas', 'Consolas de ultima generacion y venta de los ultimos videojuegos del mercado'),
(6, 'Conectividad y redes', 'Dispositivos de conexion a internet'),
(7, 'Impresoras', 'Dispositivos que aceptan texto y gráficos de una computadora y transfieren la información a papel'),
(8, 'Conferencias y reuniones', 'Microfonos y camaras para facilitar la comunicacion a distancia'),
(9, 'Audio', 'Dispositivos para reproducir audio de otros dispositivos'),
(10, 'Seguridad', 'Dispositivos para cuidar de su hogar mientras no esta'),
(11, 'Electrodomesticos', 'Maquinas para facilitar sus tareas domesticas diarias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ID_CLIENTE` int(11) NOT NULL,
  `FECHA_REGISTRO` datetime DEFAULT current_timestamp(),
  `NOMBRES` varchar(100) NOT NULL,
  `APELLIDOS` varchar(100) NOT NULL,
  `DNI` char(8) NOT NULL,
  `DIRECCION` varchar(200) NOT NULL,
  `TELEFONO` varchar(9) NOT NULL,
  `CORREO` varchar(100) NOT NULL,
  `CONTRASEÑA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ID_CLIENTE`, `FECHA_REGISTRO`, `NOMBRES`, `APELLIDOS`, `DNI`, `DIRECCION`, `TELEFONO`, `CORREO`, `CONTRASEÑA`) VALUES
(1, '2025-12-03 19:31:27', 'Luis Alberto', 'Ramirez Torres', '74839201', 'Av. Defensores del Morro 1201, Chorrillos', '987654321', 'luis.ramirez@gmail.com', '2b6d2e9f084365a915e1cd24f7f717d756290135c568dae58f'),
(2, '2025-12-03 19:31:27', 'Maria Elena', 'Gomez Rojas', '83920147', 'Jr. Huaylas 245, Chorrillos', '912345678', 'maria.gomez@gmail.com', '32af9101bd4b11c123480180891599fdbaf8279bed32bbe3d9'),
(3, '2025-12-03 19:31:27', 'Carlos Andres', 'Quispe Flores', '70129483', 'Av. Guardia Civil 560, Chorrillos', '965874123', 'carlos.quispe@gmail.com', '20dc6c1b9ac403dc13812e426655bb40fc9981a49f4fd0b9b4'),
(4, '2025-12-03 19:31:27', 'Ana Lucia', 'Paredes Vega', '81937452', 'Psj. Santa Teresa 332, Chorrillos', '934561278', 'ana.paredes@gmail.com', '09db560bc9521eca81826d4f62e5a4dc9cf66e1b783b3b39aa'),
(5, '2025-12-03 19:31:27', 'Pedro Jose', 'Salazar Mendoza', '76483920', 'Av. Matellini 987, Chorrillos', '976543210', 'pedro.salazar@gmail.com', 'e38c381cdcdd9250eb4f79fa4865086573211351a86ae4a833'),
(6, '2025-12-03 19:31:27', 'Rosa Milagros', 'Castillo Navarro', '72839475', 'Jr. Ayacucho 344, Chorrillos', '988772211', 'rosa.castillo@gmail.com', '609de40624c78293fd7bcfa4b45af42795f66723ee862fbb15'),
(7, '2025-12-03 19:31:27', 'Jorge Luis', 'Medina Vargas', '68129374', 'Av. Alameda Sur 150, Chorrillos', '919283746', 'jorge.medina@gmail.com', 'c8f0d673118ef6c1b504407d63f66d44f4a09a92803b95ec4c'),
(8, '2025-12-03 19:31:27', 'Patricia Noemi', 'Rios Campos', '75649201', 'Jr. San Pedro 902, Chorrillos', '933211890', 'patricia.rios@gmail.com', '4b13feb1acb2a8393eff48fee13cfa180dc202e3cce32381be'),
(9, '2025-12-03 19:31:27', 'Miguel Angel', 'Cruz Ponce', '73829164', 'Av. Los Laureles 404, Chorrillos', '901234567', 'miguel.cruz@gmail.com', 'd56b374787d5d50bb424762298ae875e26223773107acf1048'),
(10, '2025-12-03 19:31:27', 'Daniel Enrique', 'Ortega Huaman', '70298341', 'Psj. San Juan 120, Chorrillos', '956789432', 'daniel.ortega@gmail.com', 'e3dea855264efea622941f02d092499dec9b82d4e5b550bd02'),
(11, '2025-12-03 19:31:27', 'Sandra Patricia', 'Nuñez Bravo', '79028364', 'Av. Buenos Aires 710, Chorrillos', '978912345', 'sandra.nunez@gmail.com', '2b9ee0b10b7046013e30f4426e51d5ff97333809c6c56e7ac0'),
(12, '2025-12-03 19:31:27', 'Juan Carlos', 'Peña Zapata', '78129403', 'Jr. Lima 998, Chorrillos', '965432187', 'juan.pena@gmail.com', 'd2c38285fc2c2c2d59d2b26808e70ac6fdd7722515016fe603'),
(13, '2025-12-03 19:31:27', 'Elvis Manuel', 'Rivas Lopez', '71938402', 'Av. Los Cedros 222, Chorrillos', '914567890', 'elvis.rivas@gmail.com', 'd8885aa077b260e4535a54d52c99bff11bc2ec112017e445d6'),
(14, '2025-12-03 19:31:27', 'Diana Rocio', 'Vargas Soto', '76820394', 'Psj. Los Sauces 88, Chorrillos', '936547218', 'diana.vargas@gmail.com', '127ba17294839d59d94189ed90a93a565e6cab0b7d30d85177'),
(15, '2025-12-03 19:31:27', 'Oscar David', 'Chavez Reyes', '73198420', 'Av. Prolongación Huaylas 1410, Chorrillos', '901987654', 'oscar.chavez@gmail.com', 'de8d1ea549438e0d8064604a88d8bbc2c01ea39c1142b9ed53'),
(16, '2025-12-03 19:31:27', 'Karen Fiorella', 'Mendoza Aguilar', '79820341', 'Jr. San Martin 320, Chorrillos', '934221199', 'karen.mendoza@gmail.com', '0807b3d9ec933f39b70e0f8d5e55181051595c3e34dcdaf6ce'),
(17, '2025-12-03 19:31:27', 'Renzo Alexander', 'Guerrero Arias', '70983214', 'Av. Alameda San Marcos 900, Chorrillos', '988345621', 'renzo.guerrero@gmail.com', '5a92db543e484b121e39ff360e4cde74b078bb01831ac281da'),
(18, '2025-12-03 19:31:27', 'Fiorella Valeria', 'Silva Morales', '74219038', 'Psj. Las Gaviotas 444, Chorrillos', '977610982', 'fiorella.silva@gmail.com', '7a30c797d11b8cb3aacef81daa816248e430c1994774ebec6e'),
(19, '2025-12-03 19:31:27', 'Alex Sebastian', 'Carrasco Diaz', '78190342', 'Av. Heroes del Pacífico 321, Chorrillos', '965721830', 'alex.carrasco@gmail.com', '19fa2410bb8a783e084d05cd8266a41bb7668729a766d8e7fe'),
(20, '2025-12-03 19:31:27', 'Paola Andrea', 'Sanchez Luna', '70938124', 'Jr. Chorrillos 555, Chorrillos', '987334211', 'paola.sanchez@gmail.com', '8019f4f2dac34c71c3749e93ed87c27920881c240aec4f6ce8'),
(21, '2025-12-03 19:31:27', 'Victor Hugo', 'Torres Benavides', '73182049', 'Av. Santa Anita 611, Chorrillos', '968734211', 'victor.torres@gmail.com', 'a1cd4ae4637fbfa5ef57c717781199d95d1ac7440870962212'),
(22, '2025-12-03 19:31:27', 'Melissa Nicole', 'Bustamante Cano', '75612098', 'Psj. El Sol 211, Chorrillos', '935227814', 'melissa.b@gmail.com', '3366faa0a2589e7f91d7c73e80433811509f7d060fe4ddf482'),
(23, '2025-12-03 19:31:27', 'Bryan Eduardo', 'Montoya Paz', '79461028', 'Av. Horizontes 744, Chorrillos', '978553210', 'bryan.montoya@gmail.com', '9d3204476f20f76cce0fcdb7b6fc7731cf76bd38357fb7c355'),
(24, '2025-12-03 19:31:27', 'Cynthia Alejandra', 'Farfan Mejia', '73612084', 'Jr. Ayabaca 305, Chorrillos', '916782345', 'cynthia.farfan@gmail.com', '5e6c2f9d2b0634598ddb2619663fb6cd1aa3bf112e28e68fe2'),
(25, '2025-12-03 19:31:27', 'Enmanuel Isaias', 'Suarez Franco', '70814362', 'Av. Villa Marina 542, Chorrillos', '984231900', 'enma.suarez@gmail.com', 'e8b8067a9942b8fcc1a39deac18f32ad62ae783e8c428656dc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `ID_DETALLE` int(11) NOT NULL,
  `ID_PEDIDO` int(11) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `PRECIO_UNITARIO` decimal(10,2) NOT NULL,
  `SUBTOTAL` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedidos`
--

INSERT INTO `detalle_pedidos` (`ID_DETALLE`, `ID_PEDIDO`, `ID_PRODUCTO`, `CANTIDAD`, `PRECIO_UNITARIO`, `SUBTOTAL`) VALUES
(1, 1, 7, 2, 3000.00, 6000.00),
(2, 2, 19, 1, 729.00, 729.00),
(3, 3, 3, 3, 349.90, 1049.70),
(4, 4, 25, 2, 150.00, 300.00),
(5, 5, 11, 3, 750.00, 2250.00),
(6, 6, 2, 1, 3100.00, 3100.00),
(7, 7, 14, 1, 270.00, 270.00),
(8, 8, 6, 2, 529.00, 1058.00),
(9, 9, 22, 3, 170.00, 510.00),
(10, 10, 9, 2, 25.90, 51.80),
(11, 11, 1, 1, 1300.00, 1300.00),
(12, 12, 17, 3, 70.00, 210.00),
(13, 13, 24, 3, 299.00, 897.00),
(14, 14, 5, 2, 599.00, 1198.00),
(15, 15, 12, 1, 1990.00, 1990.00),
(16, 16, 20, 2, 101.90, 203.80),
(17, 17, 4, 3, 349.90, 1049.70),
(18, 18, 26, 1, 879.00, 879.00),
(19, 19, 10, 2, 48.00, 96.00),
(20, 20, 18, 2, 349.00, 698.00),
(21, 21, 15, 1, 2000.00, 2000.00),
(22, 22, 27, 1, 799.00, 799.00),
(23, 23, 8, 1, 150.00, 150.00),
(24, 24, 23, 3, 60.90, 182.70),
(25, 25, 16, 2, 150.90, 301.80);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `ID_FACTURA` int(11) NOT NULL,
  `ID_PEDIDO` int(11) NOT NULL,
  `FECHA_EMISION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_VENCIMIENTO` date NOT NULL,
  `RAZON_SOCIAL` varchar(100) NOT NULL DEFAULT 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.',
  `IGV` varchar(5) NOT NULL DEFAULT '18%',
  `TOTAL` decimal(10,2) NOT NULL,
  `ESTADO_PAGO` enum('Pendiente','Pagado') DEFAULT 'Pendiente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`ID_FACTURA`, `ID_PEDIDO`, `FECHA_EMISION`, `FECHA_VENCIMIENTO`, `RAZON_SOCIAL`, `IGV`, `TOTAL`, `ESTADO_PAGO`) VALUES
(1, 1, '2025-12-03 21:00:50', '2025-12-10', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 7080.00, 'Pendiente'),
(2, 2, '2025-12-03 21:00:50', '2025-12-11', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 860.20, 'Pendiente'),
(3, 3, '2025-12-03 21:00:50', '2025-12-12', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 1238.60, 'Pendiente'),
(4, 4, '2025-12-03 21:00:50', '2025-12-10', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 354.00, 'Pendiente'),
(5, 5, '2025-12-03 21:00:50', '2025-12-11', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 2655.00, 'Pendiente'),
(6, 6, '2025-12-03 21:00:50', '2025-12-12', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 3658.00, 'Pendiente'),
(7, 7, '2025-12-03 21:00:50', '2025-12-10', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 318.60, 'Pendiente'),
(8, 8, '2025-12-03 21:00:50', '2025-12-11', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 1248.40, 'Pendiente'),
(9, 9, '2025-12-03 21:00:50', '2025-12-12', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 601.80, 'Pendiente'),
(10, 10, '2025-12-03 21:00:50', '2025-12-10', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 61.10, 'Pendiente'),
(11, 11, '2025-12-03 21:00:50', '2025-12-11', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 1534.00, 'Pendiente'),
(12, 12, '2025-12-03 21:00:50', '2025-12-12', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 247.80, 'Pendiente'),
(13, 13, '2025-12-03 21:00:50', '2025-12-10', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 1058.50, 'Pendiente'),
(14, 14, '2025-12-03 21:00:50', '2025-12-11', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 1413.60, 'Pendiente'),
(15, 15, '2025-12-03 21:00:50', '2025-12-12', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 1413.60, 'Pendiente'),
(16, 16, '2025-12-03 21:00:50', '2025-12-10', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 240.50, 'Pendiente'),
(17, 17, '2025-12-03 21:00:50', '2025-12-12', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 1238.60, 'Pendiente'),
(18, 18, '2025-12-03 21:00:50', '2025-12-12', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 1037.20, 'Pendiente'),
(19, 19, '2025-12-03 21:00:50', '2025-12-10', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 113.30, 'Pendiente'),
(20, 20, '2025-12-03 21:00:50', '2025-12-11', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 823.60, 'Pendiente'),
(21, 21, '2025-12-03 21:00:50', '2025-12-12', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 2360.00, 'Pendiente'),
(22, 22, '2025-12-03 21:00:50', '2025-12-10', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 942.80, 'Pendiente'),
(23, 23, '2025-12-03 21:00:50', '2025-12-11', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 177.00, 'Pendiente'),
(24, 24, '2025-12-03 21:00:50', '2025-12-12', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 215.60, 'Pendiente'),
(25, 25, '2025-12-03 21:00:50', '2025-12-10', 'ECOMSTORE TECHNOLOGY & E-COMMERCE S.A.C.', '18%', 356.10, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `ID_INVENTARIO` int(11) NOT NULL,
  `ID_PROVEEDOR` int(11) NOT NULL,
  `CODIGO` varchar(50) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL,
  `PRECIO_TOTAL_EXISTENCIAS` decimal(10,2) NOT NULL,
  `ULTIMO_INGRESO` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`ID_INVENTARIO`, `ID_PROVEEDOR`, `CODIGO`, `ID_PRODUCTO`, `PRECIO_TOTAL_EXISTENCIAS`, `ULTIMO_INGRESO`) VALUES
(1, 1, 'PX9A-4721-KL8Q', 1, 52000.00, '2025-11-26'),
(2, 1, 'ZX4M-8392-QW7E', 2, 93000.00, '2025-12-01'),
(3, 1, 'TQ7L-5603-PM2X', 3, 10747.50, '2025-11-26'),
(4, 1, 'NR8D-4029-FK6B', 4, 11196.80, '2025-12-01'),
(5, 2, 'LZ5Q-9812-RM3A', 5, 12579.00, '2025-11-26'),
(6, 2, 'WK2X-7745-VP9T', 6, 10580.00, '2025-12-01'),
(7, 3, 'JM6R-1038-ZQ4E', 7, 96000.00, '2025-11-26'),
(8, 3, 'FQ9T-6621-KX3N', 8, 3000.00, '2025-12-01'),
(9, 3, 'RP3A-8450-WM7L', 9, 1036.00, '2025-11-26'),
(10, 3, 'KV8M-2719-QZ4R', 10, 1200.00, '2025-12-01'),
(11, 4, 'XN2K-9036-TM5Q', 11, 27000.00, '2025-11-26'),
(12, 4, 'DR7Q-5810-LX9M', 12, 41790.00, '2025-12-01'),
(13, 5, 'PB9X-4627-QR5T', 13, 39172.00, '2025-11-26'),
(14, 5, 'MQ5Z-8193-XR2N', 14, 12960.00, '2025-12-01'),
(15, 5, 'VT4L-7306-QP9M', 15, 82000.00, '2025-11-26'),
(16, 6, 'EK6R-5921-ZX7Q', 16, 4828.80, '2025-12-01'),
(17, 6, 'WL3T-9408-MQ6N', 17, 1820.00, '2025-11-26'),
(18, 7, 'ZX9M-2167-FR5Q', 18, 6631.00, '2025-12-01'),
(19, 7, 'QD8X-7351-ZM2L', 19, 20412.00, '2025-11-26'),
(20, 8, 'MR5Q-4809-XT7N', 20, 4177.90, '2025-12-01'),
(21, 8, 'KX7L-3618-PM9R', 21, 4800.00, '0000-00-00'),
(22, 9, 'FZ2M-9045-QX8T', 22, 4760.00, '2025-12-01'),
(23, 9, 'RQ9T-5173-XM6Z', 23, 2009.70, '2025-11-26'),
(24, 10, 'XM4K-7826-Q9RL', 24, 12558.00, '2025-12-01'),
(25, 10, 'ZT6Q-4308-MRX5', 25, 4050.00, '2025-11-26'),
(26, 11, 'PN3X-8691-QT7M', 26, 21096.00, '2025-12-01'),
(27, 11, 'MQ9R-2148-XZ6T', 27, 12784.00, '2025-11-26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `ID_PEDIDO` int(11) NOT NULL,
  `ID_CLIENTE` int(11) NOT NULL,
  `FECHA_PEDIDO` datetime DEFAULT current_timestamp(),
  `ESTADO` enum('Pendiente','Pagado','Enviado','Entregado') DEFAULT 'Pendiente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`ID_PEDIDO`, `ID_CLIENTE`, `FECHA_PEDIDO`, `ESTADO`) VALUES
(1, 1, '2025-12-03 20:13:24', 'Pendiente'),
(2, 2, '2025-12-03 20:13:24', 'Pendiente'),
(3, 3, '2025-12-03 20:13:24', 'Pendiente'),
(4, 4, '2025-12-03 20:13:24', 'Pendiente'),
(5, 5, '2025-12-03 20:13:24', 'Pendiente'),
(6, 6, '2025-12-03 20:13:24', 'Pendiente'),
(7, 7, '2025-12-03 20:13:24', 'Pendiente'),
(8, 8, '2025-12-03 20:13:24', 'Pendiente'),
(9, 9, '2025-12-03 20:13:24', 'Pendiente'),
(10, 10, '2025-12-03 20:13:24', 'Pendiente'),
(11, 11, '2025-12-03 20:13:24', 'Pendiente'),
(12, 12, '2025-12-03 20:13:24', 'Pendiente'),
(13, 13, '2025-12-03 20:13:24', 'Pendiente'),
(14, 14, '2025-12-03 20:13:24', 'Pendiente'),
(15, 15, '2025-12-03 20:13:24', 'Pendiente'),
(16, 16, '2025-12-03 20:13:24', 'Pendiente'),
(17, 17, '2025-12-03 20:13:24', 'Pendiente'),
(18, 18, '2025-12-03 20:13:24', 'Pendiente'),
(19, 19, '2025-12-03 20:13:24', 'Pendiente'),
(20, 20, '2025-12-03 20:13:24', 'Pendiente'),
(21, 21, '2025-12-03 20:13:24', 'Pendiente'),
(22, 22, '2025-12-03 20:13:24', 'Pendiente'),
(23, 23, '2025-12-03 20:13:24', 'Pendiente'),
(24, 24, '2025-12-03 20:13:24', 'Pendiente'),
(25, 25, '2025-12-03 20:13:24', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID_PRODUCTO` int(11) NOT NULL,
  `ID_CATEGORIA` int(11) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `MARCA` varchar(50) NOT NULL,
  `MODELO` varchar(200) NOT NULL,
  `PRECIO` decimal(10,2) NOT NULL,
  `STOCK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID_PRODUCTO`, `ID_CATEGORIA`, `NOMBRE`, `MARCA`, `MODELO`, `PRECIO`, `STOCK`) VALUES
(1, 1, 'Smarthphone', 'Apple', 'Iphone 13 128GB azul medianoche', 1300.00, 40),
(2, 1, 'Smarthphone', 'Samsung', 'Galaxy S25+ 12GB 256GB Navy', 3100.00, 30),
(3, 1, 'Smarthphone', 'Motorola', 'Motorola G15 4GB 256GB Gris', 429.90, 25),
(4, 1, 'Smarthphone', 'Xiaomi', 'Redmi A5 4GB 128GB Dorado', 349.90, 32),
(5, 2, 'Tablet', 'Lenovo', 'Idea Tab 11” 4GB 128GB', 599.00, 21),
(6, 2, 'Tablet', 'Samsung', 'Galaxy Tab A9 4GB 64GB 8.7\" Gris + Cargador 15W', 529.00, 20),
(7, 3, 'Laptop', 'HP', 'Laptop 15.6\" HP Core i7-1355U 16GB 512GB Windows 11 Plateado natural', 3000.00, 32),
(8, 3, 'Base para laptop', 'CoolerMaster', 'Ergostand IV hasta 17\" color negro (R9-NBS-E42K-GP)', 150.00, 20),
(9, 3, 'Teclado', 'XTech', 'XTK-092S Negro', 25.90, 40),
(10, 3, 'Mouse', 'Spektra', 'Óptico Inalámbrico MS-600W Negro', 48.00, 25),
(11, 4, 'Smart TV', 'TCL', '43\" Google TV 43V6C 4K Ultra HD', 750.00, 36),
(12, 4, 'Smart TV', 'Philips', '75\" UHD Ambilight 75PUD7908', 1990.00, 21),
(13, 5, 'Consola Nintendo Swicth 2', 'Nintendo', 'Neon Mario Kart 8 Bundle + 3 Meses Switch Online', 1399.00, 28),
(14, 5, 'Juego Nintendo Switch', 'Nintendo', 'Juego Nintendo Switch Super Mario Galaxy 1+2', 270.00, 48),
(15, 5, 'Play Station 5', 'Sony', 'Consola PS5 Edición Digital LATAM Bundle 2 GT ASTRO NEW', 2000.00, 41),
(16, 6, 'Router', 'TP-Link', 'Router Doble Banda AC1200 Wi-Fi 5 (Archer C50)', 150.90, 32),
(17, 6, 'Switch', 'TP-Link', 'Switch de escritorio 5 puertos Gigabit 10/100/1000 Mbps Plastic Case (TL-SG1005D)', 70.00, 26),
(18, 7, 'Impresora laser', 'Brother', 'Brother Blanco y Negro WiFi HL-1212W', 349.00, 19),
(19, 7, 'Impresora multifuncional', 'Canon', 'Pixma G3170 WiFi + Audífonos inalámbricos', 729.00, 28),
(20, 8, 'Webcam', 'Logitech', 'C270 HD 720p con micrófono', 101.90, 41),
(21, 8, 'Microfono', 'Fifine', 'Micrófono USB Fifine A6V RGB Negro', 150.00, 32),
(22, 9, 'Audifonos con vincha', 'Logitech', 'Audífono Gamer G335 Negro', 170.00, 28),
(23, 9, 'Parlante', 'Scosche', 'Parlante Inalámbrico Bluetooth Boom Buoy BTBB Negro', 60.90, 33),
(24, 10, 'Videoportero', 'Argom', 'Videoportero Timbre WiFi Inteligente Vision 2 1080p FHD', 299.00, 42),
(25, 10, 'Camara de seguridad', 'TP-Link', 'Cámara de seguridad Wi-Fi Tapo C211 2K 360° para interior', 150.00, 27),
(26, 11, 'Refrigeradora', 'Electrolux', 'ERT18G2HNW, Frost Top Mount, 138 litros, Sistema Eurofrío, bandejas de vidrio templado', 879.00, 24),
(27, 11, 'Lavadora', 'Midea', '13kg, carga superior, HealthGuard, gris', 799.00, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `ID_PROVEEDOR` int(11) NOT NULL,
  `RUC` varchar(50) NOT NULL,
  `NOMBRE_PROVEEDOR` varchar(150) NOT NULL,
  `TELEFONO` varchar(9) NOT NULL,
  `CORREO_CONTACTO` varchar(150) NOT NULL,
  `DIRECCION` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`ID_PROVEEDOR`, `RUC`, `NOMBRE_PROVEEDOR`, `TELEFONO`, `CORREO_CONTACTO`, `DIRECCION`) VALUES
(1, '20604587121', 'MovilTech Perú SAC', '987654201', 'ventas@moviltechperu.com', 'Av. Wilson 1245, Cercado de Lima – Lima'),
(2, '20598741230', 'TabSolutions EIRL', '912340987', 'contacto@tabsolutions.pe', 'Jr. de la Unión 899, Lima'),
(3, '20478123095', 'Computo Total SAC', '965874230', 'soporte@computototal.com', 'Av. Arenales 1330, Lince – Lima'),
(4, '20601478952', 'VisionHome Perú SAC', '978563210', 'ventas@visionhome.pe', 'Av. La Marina 455, San Miguel – Lima'),
(5, '20563214789', 'GamerZone Import SAC', '947821360', 'ventas@gamerzone.pe', 'Av. Garcilaso 520, Cercado de Lima'),
(6, '20607891245', 'RedPerú Tech SAC', '934781250', 'redes@redperutech.pe', 'Av. San Juan 908, San Juan de Miraflores'),
(7, '20547891236', 'PrintMaster Perú SAC', '956782140', 'ventas@printmaster.pe', 'Av. Venezuela 765, Breña – Lima'),
(8, '20604125789', 'AudioVisual Pro SAC', '981453270', 'contacto@audiovisualpro.pe', 'Av. Grau 412, Barranco – Lima'),
(9, '20456987012', 'SoundMax Perú EIRL', '937640821', 'ventas@soundmax.pe', 'Jr. Huaraz 365, Lima'),
(10, '20603214578', 'SecureTech Perú SAC', '965743120', 'seguridad@securetech.pe', 'Av. Próceres 1240, San Juan de Lurigancho'),
(11, '20589647213', 'ElectroHogar Perú SAC', '984561239', 'ventas@electrohogar.pe', 'Av. Tomás Marsano 2450, Surquillo – Lima');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`ID_CATEGORIA`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID_CLIENTE`),
  ADD UNIQUE KEY `DNI` (`DNI`),
  ADD UNIQUE KEY `CORREO` (`CORREO`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`ID_DETALLE`),
  ADD KEY `ID_PEDIDO` (`ID_PEDIDO`),
  ADD KEY `ID_PRODUCTO` (`ID_PRODUCTO`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`ID_FACTURA`),
  ADD KEY `ID_PEDIDO` (`ID_PEDIDO`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`ID_INVENTARIO`),
  ADD UNIQUE KEY `CODIGO` (`CODIGO`),
  ADD KEY `ID_PROVEEDOR` (`ID_PROVEEDOR`),
  ADD KEY `fk_inventario_producto` (`ID_PRODUCTO`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`ID_PEDIDO`),
  ADD KEY `ID_CLIENTE` (`ID_CLIENTE`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID_PRODUCTO`),
  ADD UNIQUE KEY `MODELO` (`MODELO`),
  ADD KEY `ID_CATEGORIA` (`ID_CATEGORIA`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`ID_PROVEEDOR`),
  ADD UNIQUE KEY `TELEFONO` (`TELEFONO`),
  ADD UNIQUE KEY `CORREO_CONTACTO` (`CORREO_CONTACTO`),
  ADD UNIQUE KEY `DIRECCION` (`DIRECCION`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `ID_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `ID_DETALLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `ID_FACTURA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `ID_INVENTARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `ID_PEDIDO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID_PRODUCTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `ID_PROVEEDOR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `detalle_pedidos_ibfk_1` FOREIGN KEY (`ID_PEDIDO`) REFERENCES `pedidos` (`ID_PEDIDO`),
  ADD CONSTRAINT `detalle_pedidos_ibfk_2` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID_PRODUCTO`);

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`ID_PEDIDO`) REFERENCES `pedidos` (`ID_PEDIDO`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `fk_inventario_producto` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID_PRODUCTO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`ID_PROVEEDOR`) REFERENCES `proveedor` (`ID_PROVEEDOR`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `clientes` (`ID_CLIENTE`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `categorias` (`ID_CATEGORIA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
