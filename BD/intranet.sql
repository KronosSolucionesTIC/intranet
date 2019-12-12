-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-12-2019 a las 22:39:55
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `intranet`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banco`
--

CREATE TABLE `banco` (
  `id_banco` int(3) NOT NULL COMMENT 'Llave primaria de la tabla banco',
  `nombre_banco` varchar(100) NOT NULL COMMENT 'Nombre del banco',
  `estado_banco` int(1) NOT NULL DEFAULT 1 COMMENT 'Estado en sistema del registro de la tabla banco'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banco`
--

INSERT INTO `banco` (`id_banco`, `nombre_banco`, `estado_banco`) VALUES
(1, 'Bancolombia', 1),
(2, 'Davivienda', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cesantias`
--

CREATE TABLE `cesantias` (
  `id_cesantias` int(3) NOT NULL COMMENT 'Llave primaria de la tabla cesantias',
  `nombre_cesantias` varchar(100) NOT NULL COMMENT 'Nombre del fondo de cesantias',
  `estado_cesantias` int(1) NOT NULL DEFAULT 1 COMMENT 'Estado en sistema del registro de la tabla cesantias'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cesantias`
--

INSERT INTO `cesantias` (`id_cesantias`, `nombre_cesantias`, `estado_cesantias`) VALUES
(1, 'Compensar', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL COMMENT 'Codigo de la ciudad',
  `nombre_ciudad` char(50) DEFAULT NULL COMMENT 'Descripcion de la ciudad',
  `fkID_departamento` int(11) DEFAULT NULL COMMENT 'Codigo del departamento',
  `estado_ciudad` int(1) NOT NULL DEFAULT 1 COMMENT 'Estado en sistema del registro de la tabla ciudad'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `nombre_ciudad`, `fkID_departamento`, `estado_ciudad`) VALUES
(1, 'Bogotá D.C.', 1, 1),
(2, 'Puerto Nariño', 2, 1),
(3, 'Leticia', 2, 1),
(4, 'Medellín', 3, 1),
(5, 'Abejorral', 3, 1),
(6, 'Abriaqui', 3, 1),
(7, 'Alejandría', 3, 1),
(8, 'Amagá', 3, 1),
(9, 'Amalfi', 3, 1),
(10, 'Andes', 3, 1),
(11, 'Angelópolis', 3, 1),
(12, 'Angostura', 3, 1),
(13, 'Anorí', 3, 1),
(14, 'Antioquia', 3, 1),
(15, 'Anzá', 3, 1),
(16, 'Apartadó', 3, 1),
(17, 'Arboletes', 3, 1),
(18, 'Argelia', 3, 1),
(19, 'Armenia', 3, 1),
(20, 'Barbosa', 3, 1),
(21, 'Belmira', 3, 1),
(22, 'Bello', 3, 1),
(23, 'Betania', 3, 1),
(24, 'Betulia', 3, 1),
(25, 'Bolívar', 3, 1),
(26, 'Briseño', 3, 1),
(27, 'Buriticá', 3, 1),
(28, 'Cáceres', 3, 1),
(29, 'Caicedo', 3, 1),
(30, 'Caldas', 3, 1),
(31, 'Campamento', 3, 1),
(32, 'Cañasgordas', 3, 1),
(33, 'Caracolí', 3, 1),
(34, 'Caramanta', 3, 1),
(35, 'Carepa', 3, 1),
(36, 'Carmen de Viboral', 3, 1),
(37, 'Carolina', 3, 1),
(38, 'Caucasia', 3, 1),
(39, 'Chigorodó', 3, 1),
(40, 'Cisneros', 3, 1),
(41, 'Cocorná', 3, 1),
(42, 'Concepción', 3, 1),
(43, 'Concordia', 3, 1),
(44, 'Copacabana', 3, 1),
(45, 'Dabeiba', 3, 1),
(46, 'Don Matías', 3, 1),
(47, 'Ebéjico', 3, 1),
(48, 'El Bagre', 3, 1),
(49, 'Entrerríos', 3, 1),
(50, 'Envigado', 3, 1),
(51, 'Fredonia', 3, 1),
(52, 'Frontino', 3, 1),
(53, 'Giraldo', 3, 1),
(54, 'Girardota', 3, 1),
(55, 'Gómez Plata', 3, 1),
(56, 'Granada', 3, 1),
(57, 'Guadalupe', 3, 1),
(58, 'Guarne', 3, 1),
(59, 'Guatapé', 3, 1),
(60, 'Heliconia', 3, 1),
(61, 'Hispania', 3, 1),
(62, 'Itagüí', 3, 1),
(63, 'Ituango', 3, 1),
(64, 'Jardín', 3, 1),
(65, 'Jericó', 3, 1),
(66, 'La Ceja', 3, 1),
(67, 'La Estrella', 3, 1),
(68, 'La Pintada', 3, 1),
(69, 'La Unión', 3, 1),
(70, 'Liborina', 3, 1),
(71, 'Maceo', 3, 1),
(72, 'Marinilla', 3, 1),
(73, 'Montebello', 3, 1),
(74, 'Murindó', 3, 1),
(75, 'Mutatá', 3, 1),
(76, 'Nariño', 3, 1),
(77, 'Necoclí', 3, 1),
(78, 'Nechí', 3, 1),
(79, 'Olaya', 3, 1),
(80, 'Peñol', 3, 1),
(81, 'Peque', 3, 1),
(82, 'Pueblorrico', 3, 1),
(83, 'Puerto Berrío', 3, 1),
(84, 'Puerto Nare', 3, 1),
(85, 'Puerto Triunfo', 3, 1),
(86, 'Remedios', 3, 1),
(87, 'Retiro', 3, 1),
(88, 'Rionegro', 3, 1),
(89, 'Sabanalarga', 3, 1),
(90, 'Sabaneta', 3, 1),
(91, 'Salgar', 3, 1),
(92, 'San Andrés', 3, 1),
(93, 'San Carlos', 3, 1),
(94, 'San francisco', 3, 1),
(95, 'San Jerónimo', 3, 1),
(96, 'San José de Montaña', 3, 1),
(97, 'San Juan de Urabá', 3, 1),
(98, 'San Luis', 3, 1),
(99, 'San Pedro', 3, 1),
(100, 'San Pedro de Urabá', 3, 1),
(101, 'San Rafael', 3, 1),
(102, 'San Roque', 3, 1),
(103, 'San Vicente', 3, 1),
(104, 'Santa Bárbara', 3, 1),
(105, 'Santa Rosa de Osos', 3, 1),
(106, 'Santo Domingo', 3, 1),
(107, 'Santuario', 3, 1),
(108, 'Segovia', 3, 1),
(109, 'Sonsón', 3, 1),
(110, 'Sopetrán', 3, 1),
(111, 'Támesis', 3, 1),
(112, 'Tarazá', 3, 1),
(113, 'Tarso', 3, 1),
(114, 'Titiribí', 3, 1),
(115, 'Toledo', 3, 1),
(116, 'Turbo', 3, 1),
(117, 'Uramita', 3, 1),
(118, 'Urrao', 3, 1),
(119, 'Valdivia', 3, 1),
(120, 'Valparaíso', 3, 1),
(121, 'Vegachí', 3, 1),
(122, 'Venecia', 3, 1),
(123, 'Vigía del Fuerte', 3, 1),
(124, 'Yalí', 3, 1),
(125, 'Yarumal', 3, 1),
(126, 'Yolombó', 3, 1),
(127, 'Yondó (Casabe)', 3, 1),
(128, 'Zaragoza', 3, 1),
(129, 'Arauca', 4, 1),
(130, 'Arauquita', 4, 1),
(131, 'Cravo Norte', 4, 1),
(132, 'Fortul', 4, 1),
(133, 'Puerto Rondón', 4, 1),
(134, 'Fortul', 4, 1),
(135, 'Puerto Rondón', 4, 1),
(136, 'Saravena', 4, 1),
(137, 'Tame', 4, 1),
(138, 'Barranquilla', 5, 1),
(139, 'Baranoa', 5, 1),
(140, 'Campo de la Cruz', 5, 1),
(141, 'Candelaria', 5, 1),
(142, 'Galapa', 5, 1),
(143, 'Juan de Acosta', 5, 1),
(144, 'Luruaco', 5, 1),
(145, 'Malambo', 5, 1),
(146, 'Manatí', 5, 1),
(147, 'Palmar de Varela', 5, 1),
(148, 'Piojó', 5, 1),
(149, 'Polonuevo', 5, 1),
(150, 'Ponedera', 5, 1),
(151, 'Puerto Colombia', 5, 1),
(152, 'Repelón', 5, 1),
(153, 'Sabanagrande', 5, 1),
(154, 'Sabanalarga', 5, 1),
(155, 'Santa Lucía', 5, 1),
(156, 'Santo Tomás', 5, 1),
(157, 'Soledad', 5, 1),
(158, 'Suán', 5, 1),
(159, 'Tubará', 5, 1),
(160, 'Usiacurí', 5, 1),
(161, 'Cartagena', 6, 1),
(162, 'Achí', 6, 1),
(163, 'Altos del Rosario', 6, 1),
(164, 'Arenal', 6, 1),
(165, 'Arjona', 6, 1),
(166, 'Arroyohondo', 6, 1),
(167, 'Barranco de Loba', 6, 1),
(168, 'Calamar', 6, 1),
(169, 'Cantagallo', 6, 1),
(170, 'Cicuto', 6, 1),
(171, 'Córdoba', 6, 1),
(172, 'Clemencia', 6, 1),
(173, 'El Carmen de Bolívar', 6, 1),
(174, 'El Guamo', 6, 1),
(175, 'El Peñón', 6, 1),
(176, 'Hatillo de Loba', 6, 1),
(177, 'Magangue', 6, 1),
(178, 'Mahates', 6, 1),
(179, 'Margarita', 6, 1),
(180, 'María la Baja', 6, 1),
(181, 'Montecristo', 6, 1),
(182, 'Mompós', 6, 1),
(183, 'Morales', 6, 1),
(184, 'Pinillos', 6, 1),
(185, 'Regidor', 6, 1),
(186, 'Río Viejo', 6, 1),
(187, 'San Cristóbal', 6, 1),
(188, 'San Estanislao', 6, 1),
(189, 'San Fernando', 6, 1),
(190, 'San Jacinto', 6, 1),
(191, 'San Jacinto del Cauca', 6, 1),
(192, 'San Juan Nepomuceno', 6, 1),
(193, 'San Martín de Loba', 6, 1),
(194, 'San Pablo', 6, 1),
(195, 'Santa Catalina', 6, 1),
(196, 'Santa Rosa', 6, 1),
(197, 'Santa Rosa del Sur', 6, 1),
(198, 'Simití', 6, 1),
(199, 'Soplaviento', 6, 1),
(200, 'Talaigua Nuevo', 6, 1),
(201, 'Tiquisio (Puerto Rico)', 6, 1),
(202, 'Turbaco', 6, 1),
(203, 'Turbaná', 6, 1),
(204, 'Villanueva', 6, 1),
(205, 'Zambrano', 6, 1),
(206, 'Tunja', 7, 1),
(207, 'Almeida', 7, 1),
(208, 'Aquitania', 7, 1),
(209, 'Arcabuco', 7, 1),
(210, 'Belén', 7, 1),
(211, 'Berbeo', 7, 1),
(212, 'Beteitiva', 7, 1),
(213, 'Boavita', 7, 1),
(214, 'Boyacá', 7, 1),
(215, 'Briseño', 7, 1),
(216, 'Buenavista', 7, 1),
(217, 'Busbanzá', 7, 1),
(218, 'Caldas', 7, 1),
(219, 'Campohermoso', 7, 1),
(220, 'Cerinza', 7, 1),
(221, 'Chinavita', 7, 1),
(222, 'Chiquinquirá', 7, 1),
(223, 'Chiscas', 7, 1),
(224, 'Chita', 7, 1),
(225, 'Chitaranque', 7, 1),
(226, 'Chivatá', 7, 1),
(227, 'Ciénaga', 7, 1),
(228, 'Cómbita', 7, 1),
(229, 'Coper', 7, 1),
(230, 'Corrales', 7, 1),
(231, 'Covarachia', 7, 1),
(232, 'Cubar', 7, 1),
(233, 'Cucaita', 7, 1),
(234, 'Cuitiva', 7, 1),
(235, 'Chíquiza', 7, 1),
(236, 'Chivor', 7, 1),
(237, 'Duitama', 7, 1),
(238, 'El Cocuy', 7, 1),
(239, 'El Espino', 7, 1),
(240, 'Firavitoba', 7, 1),
(241, 'Floresta', 7, 1),
(242, 'Gachantivá', 7, 1),
(243, 'Gámeza', 7, 1),
(244, 'Garagoa', 7, 1),
(245, 'Guacamayas', 7, 1),
(246, 'Guateque', 7, 1),
(247, 'Guayatá', 7, 1),
(248, 'Guicán', 7, 1),
(249, 'Iza', 7, 1),
(250, 'Jenesano', 7, 1),
(251, 'Jericó', 7, 1),
(252, 'Labranzagrande', 7, 1),
(253, 'La Capilla', 7, 1),
(254, 'La Victoria', 7, 1),
(255, 'La Ubita', 7, 1),
(256, 'Villa de Leyva', 7, 1),
(257, 'Macanal', 7, 1),
(258, 'Maripí', 7, 1),
(259, 'Miraflores', 7, 1),
(260, 'Mongua', 7, 1),
(261, 'Monguí', 7, 1),
(262, 'Moniquirá', 7, 1),
(263, 'Motavita', 7, 1),
(264, 'Muzo', 7, 1),
(265, 'Nobsa', 7, 1),
(266, 'Nuevo Colón', 7, 1),
(267, 'Oicatá', 7, 1),
(268, 'Otanche', 7, 1),
(269, 'Pachavita', 7, 1),
(270, 'Páez', 7, 1),
(271, 'Paipa', 7, 1),
(272, 'Pajarito', 7, 1),
(273, 'Panqueba', 7, 1),
(274, 'Pauna', 7, 1),
(275, 'Paya', 7, 1),
(276, 'Paz de Río', 7, 1),
(277, 'Pesca', 7, 1),
(278, 'Pisva', 7, 1),
(279, 'Puerto Boyacá', 7, 1),
(280, 'Quípama', 7, 1),
(281, 'Ramiquirí', 7, 1),
(282, 'Ráquira', 7, 1),
(283, 'Rondón', 7, 1),
(284, 'Saboyá', 7, 1),
(285, 'Sáchica', 7, 1),
(286, 'Samacá', 7, 1),
(287, 'San Eduardo', 7, 1),
(288, 'San José de Pare', 7, 1),
(289, 'San Luis de Gaceno', 7, 1),
(290, 'San Mateo', 7, 1),
(291, 'San Miguel de Sema', 7, 1),
(292, 'San Pablo de Borbur', 7, 1),
(293, 'Santana', 7, 1),
(294, 'Santa María', 7, 1),
(295, 'Santa Rosa de Viterbo', 7, 1),
(296, 'Santa Sofía', 7, 1),
(297, 'Sativanorte', 7, 1),
(298, 'Sativasur', 7, 1),
(299, 'Siachoque', 7, 1),
(300, 'Soatá', 7, 1),
(301, 'Socotá', 7, 1),
(302, 'Socha', 7, 1),
(303, 'Sogamoso', 7, 1),
(304, 'Somondoco', 7, 1),
(305, 'Sora', 7, 1),
(306, 'Sotaquirá', 7, 1),
(307, 'Soracá', 7, 1),
(308, 'Susacón', 7, 1),
(309, 'Sutamarchán', 7, 1),
(310, 'Sutatenza', 7, 1),
(311, 'Tasco', 7, 1),
(312, 'Tenza', 7, 1),
(313, 'Tibaná', 7, 1),
(314, 'Tibasosa', 7, 1),
(315, 'Tinjacá', 7, 1),
(316, 'Tipacoque', 7, 1),
(317, 'Toca', 7, 1),
(318, 'Toguí', 7, 1),
(319, 'Tópaga', 7, 1),
(320, 'Tota', 7, 1),
(321, 'Tunungua', 7, 1),
(322, 'Turmequé', 7, 1),
(323, 'Tuta', 7, 1),
(324, 'Tutazá', 7, 1),
(325, 'Úmbita', 7, 1),
(326, 'Ventaquemada', 7, 1),
(327, 'Viracachá', 7, 1),
(328, 'Zetaquirá', 7, 1),
(329, 'Manizales', 8, 1),
(330, 'Aguadas', 8, 1),
(331, 'Anserma', 8, 1),
(332, 'Aranzazu', 8, 1),
(333, 'Belalcázar', 8, 1),
(334, 'Chinchina', 8, 1),
(335, 'Filadelfia', 8, 1),
(336, 'La Dorada', 8, 1),
(337, 'La Merced', 8, 1),
(338, 'Manzanares', 8, 1),
(339, 'Marmato', 8, 1),
(340, 'Marquetalia', 8, 1),
(341, 'Marulanda', 8, 1),
(342, 'Neira', 8, 1),
(343, 'Pácora', 8, 1),
(344, 'Palestina', 8, 1),
(345, 'Pensilvania', 8, 1),
(346, 'Riosucio', 8, 1),
(347, 'Risaralda', 8, 1),
(348, 'Salamina', 8, 1),
(349, 'Samaná', 8, 1),
(350, 'San José', 8, 1),
(351, 'Supía', 8, 1),
(352, 'Victoria', 8, 1),
(353, 'Villamaría', 8, 1),
(354, 'Viterbo', 8, 1),
(355, 'Florencia', 9, 1),
(356, 'Albania', 9, 1),
(357, 'Belén de los Andaquíes', 9, 1),
(358, 'Cartagena del Chairá', 9, 1),
(359, 'Curillo', 9, 1),
(360, 'El Doncello', 9, 1),
(361, 'El Paujil', 9, 1),
(362, 'La Montañita', 9, 1),
(363, 'Milán', 9, 1),
(364, 'Morelia', 9, 1),
(365, 'Puerto Rico', 9, 1),
(366, 'San José del Fragua', 9, 1),
(367, 'San Vicente del Caguán', 9, 1),
(368, 'Solano', 9, 1),
(369, 'Solita', 9, 1),
(370, 'Valparaíso', 9, 1),
(371, 'Yopal', 10, 1),
(372, 'Aguazul', 10, 1),
(373, 'Chameza', 10, 1),
(374, 'Hato Corozal', 10, 1),
(375, 'La Salina', 10, 1),
(376, 'Maní', 10, 1),
(377, 'Monterrey', 10, 1),
(378, 'Nunchía', 10, 1),
(379, 'Orocué', 10, 1),
(380, 'Paz de Ariporo', 10, 1),
(381, 'Pore', 10, 1),
(382, 'Recetor', 10, 1),
(383, 'Sabalarga', 10, 1),
(384, 'Sácama', 10, 1),
(385, 'San Luis de Palenque', 10, 1),
(386, 'Támara', 10, 1),
(387, 'Tauramena', 10, 1),
(388, 'Trinidad', 10, 1),
(389, 'Villanueva', 10, 1),
(390, 'Popayán', 11, 1),
(391, 'Almaguer', 11, 1),
(392, 'Argelia', 11, 1),
(393, 'Balboa', 11, 1),
(394, 'Bolívar', 11, 1),
(395, 'Buenos Aires', 11, 1),
(396, 'Cajibío', 11, 1),
(397, 'Caldono', 11, 1),
(398, 'Caloto', 11, 1),
(399, 'Corinto', 11, 1),
(400, 'El Tambo', 11, 1),
(401, 'Florencia', 11, 1),
(402, 'Guapi', 11, 1),
(403, 'Inzá', 11, 1),
(404, 'Jambaló', 11, 1),
(405, 'La Sierra', 11, 1),
(406, 'La Vega', 11, 1),
(407, 'López (Micay)', 11, 1),
(408, 'Mercaderes', 11, 1),
(409, 'Miranda', 11, 1),
(410, 'Morales', 11, 1),
(411, 'Padilla', 11, 1),
(412, 'Páez (Belalcazar)', 11, 1),
(413, 'Patía (El Bordo)', 11, 1),
(414, 'Piamonte', 11, 1),
(415, 'Piendamó', 11, 1),
(416, 'Puerto Tejada', 11, 1),
(417, 'Puracé (Coconuco)', 11, 1),
(418, 'Rosas', 11, 1),
(419, 'San Sebastián', 11, 1),
(420, 'Santander de Quilichao', 11, 1),
(421, 'Santa Rosa', 11, 1),
(422, 'Silvia', 11, 1),
(423, 'Sotará (Paispamba)', 11, 1),
(424, 'Suárez', 11, 1),
(425, 'Timbío', 11, 1),
(426, 'Timbiquí', 11, 1),
(427, 'Toribío', 11, 1),
(428, 'Totoro', 11, 1),
(429, 'Valledupar', 12, 1),
(430, 'Aguachica', 12, 1),
(431, 'Agustín Codazzi', 12, 1),
(432, 'Astrea', 12, 1),
(433, 'Becerril', 12, 1),
(434, 'Bosconia', 12, 1),
(435, 'Chimichagua', 12, 1),
(436, 'Chiriguaná', 12, 1),
(437, 'Curumaní', 12, 1),
(438, 'El Copey', 12, 1),
(439, 'El Paso', 12, 1),
(440, 'Gamarra', 12, 1),
(441, 'González', 12, 1),
(442, 'La Gloria', 12, 1),
(443, 'La Jagua de Ibirico', 12, 1),
(444, 'Manaure Balcón Cesar', 12, 1),
(445, 'Pailitas', 12, 1),
(446, 'Pelaya', 12, 1),
(447, 'Pueblo Bello', 12, 1),
(448, 'Río de Oro', 12, 1),
(449, 'La Paz (Robles)', 12, 1),
(450, 'San Alberto', 12, 1),
(451, 'San Diego', 12, 1),
(452, 'San Martín', 12, 1),
(453, 'Tamalameque', 12, 1),
(454, 'Montería', 14, 1),
(455, 'Ayapel', 14, 1),
(456, 'Buenavista', 14, 1),
(457, 'Canalete', 14, 1),
(458, 'Cereté', 14, 1),
(459, 'Chima', 14, 1),
(460, 'Chinú', 14, 1),
(461, 'Ciénaga de Oro', 14, 1),
(462, 'Cotorra', 14, 1),
(463, 'La Apartada (Frontera)', 14, 1),
(464, 'Lorica', 14, 1),
(465, 'Los Córdobas', 14, 1),
(466, 'Momil', 14, 1),
(467, 'Montelíbano', 14, 1),
(468, 'Monitos', 14, 1),
(469, 'Planeta Rica', 14, 1),
(470, 'Pueblo Nuevo', 14, 1),
(471, 'Puerto Escondido', 14, 1),
(472, 'Puerto Libertador', 14, 1),
(473, 'Purísima', 14, 1),
(474, 'Sahagún', 14, 1),
(475, 'San Andrés Sotavento', 14, 1),
(476, 'San Antero', 14, 1),
(477, 'San Bernardo del Viento', 14, 1),
(478, 'San Carlos', 14, 1),
(479, 'San Pelayo', 14, 1),
(480, 'Tierralta', 14, 1),
(481, 'Valencia', 14, 1),
(482, 'Agua de Dios', 15, 1),
(483, 'Albán', 15, 1),
(484, 'Anapoima', 15, 1),
(485, 'Anolaima', 15, 1),
(486, 'Arbeláez', 15, 1),
(487, 'Beltrán', 15, 1),
(488, 'Bituima', 15, 1),
(489, 'Bojacá', 15, 1),
(490, 'Cabrera', 15, 1),
(491, 'Cachipay', 15, 1),
(492, 'Cajicá', 15, 1),
(493, 'Caparrapí', 15, 1),
(494, 'Cáqueza', 15, 1),
(495, 'Carmen de Carupa', 15, 1),
(496, 'Chaguaní', 15, 1),
(497, 'Chía', 15, 1),
(498, 'Chipaque', 15, 1),
(499, 'Choachí', 15, 1),
(500, 'Chocontá', 15, 1),
(501, 'Cogua', 15, 1),
(502, 'Cota', 15, 1),
(503, 'Cucunubá', 15, 1),
(504, 'El Colegio', 15, 1),
(505, 'El Peñón', 15, 1),
(506, 'El Rosal', 15, 1),
(507, 'Facatativá', 15, 1),
(508, 'Fómeque', 15, 1),
(509, 'Fosca', 15, 1),
(510, 'Funza', 15, 1),
(511, 'Fúquene', 15, 1),
(512, 'Fusagasugá', 15, 1),
(513, 'Gachalá', 15, 1),
(514, 'Gachancipá', 15, 1),
(515, 'Gachetá', 15, 1),
(516, 'Gama', 15, 1),
(517, 'Girardot', 15, 1),
(518, 'Granada', 15, 1),
(519, 'Guachetá', 15, 1),
(520, 'Guaduas', 15, 1),
(521, 'Guasca', 15, 1),
(522, 'Guataquí', 15, 1),
(523, 'Guatavita', 15, 1),
(524, 'Guayabal de Síquima', 15, 1),
(525, 'Guayabetal', 15, 1),
(526, 'Gutiérrez', 15, 1),
(527, 'Jerusalén', 15, 1),
(528, 'Junín', 15, 1),
(529, 'La Calera', 15, 1),
(530, 'La Mesa', 15, 1),
(531, 'La Palma', 15, 1),
(532, 'La Peña', 15, 1),
(533, 'La Vega', 15, 1),
(534, 'Lenguazaque', 15, 1),
(535, 'Machetá', 15, 1),
(536, 'Madrid', 15, 1),
(537, 'Manta', 15, 1),
(538, 'Medina', 15, 1),
(539, 'Mosquera', 15, 1),
(540, 'Nariño', 15, 1),
(541, 'Nemocón', 15, 1),
(542, 'Nilo', 15, 1),
(543, 'Nimaima', 15, 1),
(544, 'Nocaima', 15, 1),
(545, 'Venecia (Ospina Pérez)', 15, 1),
(546, 'Pacho', 15, 1),
(547, 'Paime', 15, 1),
(548, 'Pandi', 15, 1),
(549, 'Paratebueno', 15, 1),
(550, 'Pasca', 15, 1),
(551, 'Puerto Salgar', 15, 1),
(552, 'Pulí', 15, 1),
(553, 'Quebradanegra', 15, 1),
(554, 'Quetame', 15, 1),
(555, 'Quipile', 15, 1),
(556, 'Rafael', 15, 1),
(557, 'Ricaurte', 15, 1),
(558, 'San Antonio de Tequendama', 15, 1),
(559, 'San Bernardo', 15, 1),
(560, 'San Cayetano', 15, 1),
(561, 'San Francisco', 15, 1),
(562, 'San Juan de Rioseco', 15, 1),
(563, 'Sasaima', 15, 1),
(564, 'Sesquilé', 15, 1),
(565, 'Sibate', 15, 1),
(566, 'Silvania', 15, 1),
(567, 'Simijaca', 15, 1),
(568, 'Soacha', 15, 1),
(569, 'Sopó', 15, 1),
(570, 'Subachoque', 15, 1),
(571, 'Suesca', 15, 1),
(572, 'Supatá', 15, 1),
(573, 'Susa', 15, 1),
(574, 'Sutatausa', 15, 1),
(575, 'Tabio', 15, 1),
(576, 'Tausa', 15, 1),
(577, 'Tena', 15, 1),
(578, 'Tenjo', 15, 1),
(579, 'Tibacuy', 15, 1),
(580, 'Tibiritá', 15, 1),
(581, 'Tocaima', 15, 1),
(582, 'Tocancipá', 15, 1),
(583, 'Topaipí', 15, 1),
(584, 'Ubalá', 15, 1),
(585, 'Ubaque', 15, 1),
(586, 'Ubaté', 15, 1),
(587, 'Une', 15, 1),
(588, 'Útica', 15, 1),
(589, 'Vergara', 15, 1),
(590, 'Vianí', 15, 1),
(591, 'Villagómez', 15, 1),
(592, 'Villapinzón', 15, 1),
(593, 'Villeta', 15, 1),
(594, 'Viotá', 15, 1),
(595, 'Yacopí', 15, 1),
(596, 'Zipacón', 15, 1),
(597, 'Zipaquirá', 15, 1),
(598, 'Quibdó', 13, 1),
(599, 'Acandí', 13, 1),
(600, 'Alto Baudó (Pie de Pato)', 13, 1),
(601, 'Atrato (Yuto)', 13, 1),
(602, 'Bagadó', 13, 1),
(603, 'Bahía Solano (Mútis)', 13, 1),
(604, 'Bajo Baudó (Pizarro)', 13, 1),
(605, 'Bojayá (Bellavista)', 13, 1),
(606, 'Cantón de San Pablo', 13, 1),
(607, 'Condoto', 13, 1),
(608, 'El Carmen', 13, 1),
(609, 'El Litoral de San Juan', 13, 1),
(610, 'Itsmina', 13, 1),
(611, 'Juradó', 13, 1),
(612, 'Lloró', 13, 1),
(613, 'Nóvita', 13, 1),
(614, 'Nuquí', 13, 1),
(615, 'Riosucio', 13, 1),
(616, 'San José del Palmar', 13, 1),
(617, 'Sipí', 13, 1),
(618, 'Tadó', 13, 1),
(619, 'Unguía', 13, 1),
(620, 'Inírida', 16, 1),
(621, 'San José del Guaviare', 17, 1),
(622, 'Calamar', 17, 1),
(623, 'El Retorno', 17, 1),
(624, 'Miraflores', 17, 1),
(625, 'Neiva', 18, 1),
(626, 'Acevedo', 18, 1),
(627, 'Agrado', 18, 1),
(628, 'Aipe', 18, 1),
(629, 'Algeciras', 18, 1),
(630, 'Altamira', 18, 1),
(631, 'Baraya', 18, 1),
(632, 'Campoalegre', 18, 1),
(633, 'Colombia', 18, 1),
(634, 'Elías', 18, 1),
(635, 'Garzón', 18, 1),
(636, 'Gigante', 18, 1),
(637, 'Guadalupe', 18, 1),
(638, 'Hobo', 18, 1),
(639, 'Iquira', 18, 1),
(640, 'Isnos', 18, 1),
(641, 'La Argentina', 18, 1),
(642, 'La Plata', 18, 1),
(643, 'Nátaga', 18, 1),
(644, 'Oporapa', 18, 1),
(645, 'Paicol', 18, 1),
(646, 'Palermo', 18, 1),
(647, 'Palestina', 18, 1),
(648, 'Pital', 18, 1),
(649, 'Pitalito', 18, 1),
(650, 'Rivera', 18, 1),
(651, 'Saladoblanco', 18, 1),
(652, 'San Agustín', 18, 1),
(653, 'Santa María', 18, 1),
(654, 'Suazá', 18, 1),
(655, 'Tarqui', 18, 1),
(656, 'Tesalia', 18, 1),
(657, 'Tello', 18, 1),
(658, 'Teruel', 18, 1),
(659, 'Timaná', 18, 1),
(660, 'Villavieja', 18, 1),
(661, 'Yaguará', 18, 1),
(662, 'Riohacha', 19, 1),
(663, 'Barrancas', 19, 1),
(664, 'Dibulla', 19, 1),
(665, 'Distracción', 19, 1),
(666, 'El Molino', 19, 1),
(667, 'Fonseca', 19, 1),
(668, 'Hatonuevo', 19, 1),
(669, 'Maicao', 19, 1),
(670, 'Manaure', 19, 1),
(671, 'San Juan del Cesar', 19, 1),
(672, 'Uribía', 19, 1),
(673, 'Urumita', 19, 1),
(674, 'Villanueva', 19, 1),
(675, 'Santa Marta', 20, 1),
(676, 'Aracataca', 20, 1),
(677, 'Ariguaní (El Difícil)', 20, 1),
(678, 'Cerro San Antonio', 20, 1),
(679, 'Chivolo', 20, 1),
(680, 'Ciénaga', 20, 1),
(681, 'El Banco', 20, 1),
(682, 'El Piñón', 20, 1),
(683, 'El Retén', 20, 1),
(684, 'Fundación', 20, 1),
(685, 'Guamal', 20, 1),
(686, 'Pedraza', 20, 1),
(687, 'Pijiño del Carmen', 20, 1),
(688, 'Pivijay', 20, 1),
(689, 'Plato', 20, 1),
(690, 'Publoviejo', 20, 1),
(691, 'Remolino', 20, 1),
(692, 'Salamina', 20, 1),
(693, 'San Sebastián de Buuenavista', 20, 1),
(694, 'San Zenón', 20, 1),
(695, 'Santa Ana', 20, 1),
(696, 'Sitionuevo', 20, 1),
(697, 'Tenerife', 20, 1),
(698, 'Villavicencio', 21, 1),
(699, 'Acacias', 21, 1),
(700, 'Barranca de Upía', 21, 1),
(701, 'Cabuyaro', 21, 1),
(702, 'Castilla la Nueva', 21, 1),
(703, 'Cubarral', 21, 1),
(704, 'Cumaral', 21, 1),
(705, 'El Calvario', 21, 1),
(706, 'El Castillo', 21, 1),
(707, 'El Dorado', 21, 1),
(708, 'Fuente de Oro', 21, 1),
(709, 'Granada', 21, 1),
(710, 'Guamal', 21, 1),
(711, 'Mapiripán', 21, 1),
(712, 'Mesetas', 21, 1),
(713, 'La Macarena', 21, 1),
(714, 'La Uribe', 21, 1),
(715, 'Lejanías', 21, 1),
(716, 'Puerto Concordia', 21, 1),
(717, 'Puerto Gaitán', 21, 1),
(718, 'Puerto López', 21, 1),
(719, 'Puerto Lleras', 21, 1),
(720, 'Puerto Rico', 21, 1),
(721, 'Restrepo', 21, 1),
(722, 'San Carlos de Guaroa', 21, 1),
(723, 'San Juan de Arama', 21, 1),
(724, 'San Juanito', 21, 1),
(725, 'San Martín', 21, 1),
(726, 'Vistahermosa', 21, 1),
(727, 'Pasto', 22, 1),
(728, 'Albán (San José)', 22, 1),
(729, 'Aldana', 22, 1),
(730, 'Ancuyá', 22, 1),
(731, 'Arboleda (Berruecos)', 22, 1),
(732, 'Barbacoas', 22, 1),
(733, 'Belén', 22, 1),
(734, 'Buesaco', 22, 1),
(735, 'Colón (Génova)', 22, 1),
(736, 'Consacá', 22, 1),
(737, 'Contadero', 22, 1),
(738, 'Córdoba', 22, 1),
(739, 'Cuaspud (Carlosama)', 22, 1),
(740, 'Cumbal', 22, 1),
(741, 'Cumbitará', 22, 1),
(742, 'Chachagüi', 22, 1),
(743, 'El Charco', 22, 1),
(744, 'El Rosario', 22, 1),
(745, 'El Tablón', 22, 1),
(746, 'El Tambo', 22, 1),
(747, 'Funes', 22, 1),
(748, 'Guachucal', 22, 1),
(749, 'Guaitarilla', 22, 1),
(750, 'Gualmatán', 22, 1),
(751, 'Iles', 22, 1),
(752, 'Imúes', 22, 1),
(753, 'Ipiales', 22, 1),
(754, 'La Cruz', 22, 1),
(755, 'La Florida', 22, 1),
(756, 'La Llanada', 22, 1),
(757, 'La Tola', 22, 1),
(758, 'La Unión', 22, 1),
(759, 'Leiva', 22, 1),
(760, 'Linares', 22, 1),
(761, 'Los Andes (Sotomayor)', 22, 1),
(762, 'Magüí (Payán)', 22, 1),
(763, 'Mallama (Piedrancha)', 22, 1),
(764, 'Mosquera', 22, 1),
(765, 'Olaya', 22, 1),
(766, 'Ospina', 22, 1),
(767, 'Francisco Pizarro', 22, 1),
(768, 'Policarpa', 22, 1),
(769, 'Potosí', 22, 1),
(770, 'Providencia', 22, 1),
(771, 'Puerres', 22, 1),
(772, 'Pupiales', 22, 1),
(773, 'Ricaurte', 22, 1),
(774, 'Roberto Payán (San José)', 22, 1),
(775, 'Samaniego', 22, 1),
(776, 'Sandoná', 22, 1),
(777, 'San Bernardo', 22, 1),
(778, 'San Lorenzo', 22, 1),
(779, 'San Pablo', 22, 1),
(780, 'San Pedro de Cartago', 22, 1),
(781, 'Santa Bárbara (Iscuandé)', 22, 1),
(782, 'Santa Cruz (Guachávez)', 22, 1),
(783, 'Sapuyés', 22, 1),
(784, 'Taminango', 22, 1),
(785, 'Tangua', 22, 1),
(786, 'Tumaco', 22, 1),
(787, 'Túquerres', 22, 1),
(788, 'Yacuanquer', 22, 1),
(789, 'Cúcuta', 23, 1),
(790, 'Abrego', 23, 1),
(791, 'Arboledas', 23, 1),
(792, 'Bochalema', 23, 1),
(793, 'Bucarasica', 23, 1),
(794, 'Cácota', 23, 1),
(795, 'Cáchira', 23, 1),
(796, 'Chinácota', 23, 1),
(797, 'Chitagá', 23, 1),
(798, 'Convención', 23, 1),
(799, 'Cucutilla', 23, 1),
(800, 'Durania', 23, 1),
(801, 'El Carmen', 23, 1),
(802, 'El Tarra', 23, 1),
(803, 'El Zulia', 23, 1),
(804, 'Gramalote', 23, 1),
(805, 'Hacarí', 23, 1),
(806, 'Herrán', 23, 1),
(807, 'Labateca', 23, 1),
(808, 'La Esperanza', 23, 1),
(809, 'La Playa', 23, 1),
(810, 'Los Patios', 23, 1),
(811, 'Lourdes', 23, 1),
(812, 'Mutiscua', 23, 1),
(813, 'Ocaña', 23, 1),
(814, 'Pamplona', 23, 1),
(815, 'Pamplonita', 23, 1),
(816, 'Puerto Santander', 23, 1),
(817, 'Ragonvalia', 23, 1),
(818, 'Salazar', 23, 1),
(819, 'San Calixto', 23, 1),
(820, 'San Cayetano', 23, 1),
(821, 'Santiago', 23, 1),
(822, 'Sardinata', 23, 1),
(823, 'Silos', 23, 1),
(824, 'Teorama', 23, 1),
(825, 'Tibú', 23, 1),
(826, 'Toledo', 23, 1),
(827, 'Villacaro', 23, 1),
(828, 'Villa del Rosario', 23, 1),
(829, 'Mocoa', 24, 1),
(830, 'Colón', 24, 1),
(831, 'Orito', 24, 1),
(832, 'Puerto Asís', 24, 1),
(833, 'Puerto Caicedo', 24, 1),
(834, 'Puerto Guzmán', 24, 1),
(835, 'Puerto Leguízamo', 24, 1),
(836, 'Sibundoy', 24, 1),
(837, 'San Francisco', 24, 1),
(838, 'San Miguel', 24, 1),
(839, 'Santiago', 24, 1),
(840, 'Villa Gamuez (La Hormiga)', 24, 1),
(841, 'Villa Garzón', 24, 1),
(842, 'Armenia', 25, 1),
(843, 'Buenavista', 25, 1),
(844, 'Calarcá', 25, 1),
(845, 'Circasia', 25, 1),
(846, 'Córdoba', 25, 1),
(847, 'Filandia', 25, 1),
(848, 'Génova', 25, 1),
(849, 'La Tebaida', 25, 1),
(850, 'Montenegro', 25, 1),
(851, 'Pijao', 25, 1),
(852, 'Quimbaya', 25, 1),
(853, 'Salento', 25, 1),
(854, 'Pereira', 26, 1),
(855, 'Apía', 26, 1),
(856, 'Balboa', 26, 1),
(857, 'Belén de Umbría', 26, 1),
(858, 'Dos Quebradas', 26, 1),
(859, 'Guática', 26, 1),
(860, 'La Celia', 26, 1),
(861, 'La Virginia', 26, 1),
(862, 'Marsella', 26, 1),
(863, 'Mistrató', 26, 1),
(864, 'Pueblo Rico', 26, 1),
(865, 'Quinchia', 26, 1),
(866, 'Santa Rosa de Cabal', 26, 1),
(867, 'Santuario', 26, 1),
(868, 'San Andrés', 27, 1),
(869, 'Providencia', 27, 1),
(870, 'Bucaramanga', 28, 1),
(871, 'Aguada', 28, 1),
(872, 'Albania', 28, 1),
(873, 'Aratoca', 28, 1),
(874, 'Barbosa', 28, 1),
(875, 'Barichara', 28, 1),
(876, 'Barrancabermeja', 28, 1),
(877, 'Betulia', 28, 1),
(878, 'Bolívar', 28, 1),
(879, 'Cabrera', 28, 1),
(880, 'California', 28, 1),
(881, 'Capitanejo', 28, 1),
(882, 'Carcasí', 28, 1),
(883, 'Cepitá', 28, 1),
(884, 'Cerrito', 28, 1),
(885, 'Charalá', 28, 1),
(886, 'Charta', 28, 1),
(887, 'Chima', 28, 1),
(888, 'Chipatá', 28, 1),
(889, 'Cimitarra', 28, 1),
(890, 'Concepción', 28, 1),
(891, 'Confines', 28, 1),
(892, 'Contratación', 28, 1),
(893, 'Coromoro', 28, 1),
(894, 'Curití', 28, 1),
(895, 'El Carmen', 28, 1),
(896, 'El Guacamayo', 28, 1),
(897, 'El Peñón', 28, 1),
(898, 'El Playón', 28, 1),
(899, 'Encino', 28, 1),
(900, 'Enciso', 28, 1),
(901, 'Florián', 28, 1),
(902, 'Floridablanca', 28, 1),
(903, 'Galán', 28, 1),
(904, 'Gámbita', 28, 1),
(905, 'Girón', 28, 1),
(906, 'Guaca', 28, 1),
(907, 'Guadalupe', 28, 1),
(908, 'Guapotá', 28, 1),
(909, 'Guavata', 28, 1),
(910, 'Guepsa', 28, 1),
(911, 'Hato', 28, 1),
(912, 'Jesús María', 28, 1),
(913, 'Jordán', 28, 1),
(914, 'La Belleza', 28, 1),
(915, 'Landázuri', 28, 1),
(916, 'La Paz', 28, 1),
(917, 'Lebrija', 28, 1),
(918, 'Los Santos', 28, 1),
(919, 'Macaravita', 28, 1),
(920, 'Málaga', 28, 1),
(921, 'Matanza', 28, 1),
(922, 'Mogotes', 28, 1),
(923, 'Molagavita', 28, 1),
(924, 'Ocamonte', 28, 1),
(925, 'Oiba', 28, 1),
(926, 'Onzága', 28, 1),
(927, 'Palmar', 28, 1),
(928, 'Palmas del Socorro', 28, 1),
(929, 'Páramo', 28, 1),
(930, 'Pie de Cuesta', 28, 1),
(931, 'Pinchote', 28, 1),
(932, 'Puente Nacional', 28, 1),
(933, 'Puerto Parra', 28, 1),
(934, 'Puerto Wilches', 28, 1),
(935, 'Rionegro', 28, 1),
(936, 'Sabana de Torres', 28, 1),
(937, 'San Andrés', 28, 1),
(938, 'San Benito', 28, 1),
(939, 'San Gil', 28, 1),
(940, 'San Joaquín', 28, 1),
(941, 'San José de Miranda', 28, 1),
(942, 'San Miguel', 28, 1),
(943, 'San Vicente de Chucurí', 28, 1),
(944, 'Santa Bárbara', 28, 1),
(945, 'Santa Helena del Opón', 28, 1),
(946, 'Simacota', 28, 1),
(947, 'Socorro', 28, 1),
(948, 'Suaita', 28, 1),
(949, 'Sucre', 28, 1),
(950, 'Suratá', 28, 1),
(951, 'Tona', 28, 1),
(952, 'Valle de San José', 28, 1),
(953, 'Vélez', 28, 1),
(954, 'Vetas', 28, 1),
(955, 'Villanueva', 28, 1),
(956, 'Zapatoca', 28, 1),
(957, 'Sincelejo', 29, 1),
(958, 'Buenavista', 29, 1),
(959, 'Caimito', 29, 1),
(960, 'Coloso (Ricaurte)', 29, 1),
(961, 'Corozal', 29, 1),
(962, 'Chalán', 29, 1),
(963, 'Galeras (Nueva Granada)', 29, 1),
(964, 'Guarandá', 29, 1),
(965, 'La Unión', 29, 1),
(966, 'Los Palmitos', 29, 1),
(967, 'Majagual', 29, 1),
(968, 'Morroa', 29, 1),
(969, 'Ovejas', 29, 1),
(970, 'Palmito', 29, 1),
(971, 'Sampués', 29, 1),
(972, 'San Benito Abad', 29, 1),
(973, 'San Juan de Betulia', 29, 1),
(974, 'San Marcos', 29, 1),
(975, 'San Onofre', 29, 1),
(976, 'San Pedro', 29, 1),
(977, 'Sincé', 29, 1),
(978, 'Sucre', 29, 1),
(979, 'Tolú', 29, 1),
(980, 'Toluviejo', 29, 1),
(981, 'Ibagué', 30, 1),
(982, 'Alpujarra', 30, 1),
(983, 'Alvarado', 30, 1),
(984, 'Ambalema', 30, 1),
(985, 'Anzóategui', 30, 1),
(986, 'Armero (Guayabal)', 30, 1),
(987, 'Ataco', 30, 1),
(988, 'Cajamarca', 30, 1),
(989, 'Carmen de Apicalá', 30, 1),
(990, 'Casabianca', 30, 1),
(991, 'Chaparral', 30, 1),
(992, 'Coello', 30, 1),
(993, 'Coyaima', 30, 1),
(994, 'Cunday', 30, 1),
(995, 'Dolores', 30, 1),
(996, 'Espinal', 30, 1),
(997, 'Falán', 30, 1),
(998, 'Flandes', 30, 1),
(999, 'Fresno', 30, 1),
(1000, 'Guamo', 30, 1),
(1001, 'Herveo', 30, 1),
(1002, 'Honda', 30, 1),
(1003, 'Icononzo', 30, 1),
(1004, 'Lérida', 30, 1),
(1005, 'Líbano', 30, 1),
(1006, 'Mariquita', 30, 1),
(1007, 'Melgar', 30, 1),
(1008, 'Murillo', 30, 1),
(1009, 'Natagaima', 30, 1),
(1010, 'Ortega', 30, 1),
(1011, 'Palocabildo', 30, 1),
(1012, 'Piedras', 30, 1),
(1013, 'Planadas', 30, 1),
(1014, 'Prado', 30, 1),
(1015, 'Purificación', 30, 1),
(1016, 'Rioblanco', 30, 1),
(1017, 'Roncesvalles', 30, 1),
(1018, 'Rovira', 30, 1),
(1019, 'Saldaña', 30, 1),
(1020, 'San Antonio', 30, 1),
(1021, 'San Luis', 30, 1),
(1022, 'Santa Isabel', 30, 1),
(1023, 'Suárez', 30, 1),
(1024, 'Valle de San Juan', 30, 1),
(1025, 'Venadillo', 30, 1),
(1026, 'Villahermosa', 30, 1),
(1027, 'Villarrica', 30, 1),
(1028, 'Cali', 31, 1),
(1029, 'Alcalá', 31, 1),
(1030, 'Andalucía', 31, 1),
(1031, 'Ansermanuevo', 31, 1),
(1032, 'Argelia', 31, 1),
(1033, 'Bolívar', 31, 1),
(1034, 'Buenaventura', 31, 1),
(1035, 'Buga', 31, 1),
(1036, 'Bugalagrande', 31, 1),
(1037, 'Caicedonia', 31, 1),
(1038, 'Calima (Darién)', 31, 1),
(1039, 'Candelaria', 31, 1),
(1040, 'Cartago', 31, 1),
(1041, 'Dagua', 31, 1),
(1042, 'El Águila', 31, 1),
(1043, 'El Cairo', 31, 1),
(1044, 'El Cerrito', 31, 1),
(1045, 'El Dovio', 31, 1),
(1046, 'Florida', 31, 1),
(1047, 'Ginebra', 31, 1),
(1048, 'Guacarí', 31, 1),
(1049, 'Jamundí', 31, 1),
(1050, 'La Cumbre', 31, 1),
(1051, 'La Unión', 31, 1),
(1052, 'La Victoria', 31, 1),
(1053, 'Obando', 31, 1),
(1054, 'Palmira', 31, 1),
(1055, 'Pradera', 31, 1),
(1056, 'Restrepo', 31, 1),
(1057, 'Riofrío', 31, 1),
(1058, 'Roldanillo', 31, 1),
(1059, 'San Pedro', 31, 1),
(1060, 'Sevilla', 31, 1),
(1061, 'Toro', 31, 1),
(1062, 'Trujillo', 31, 1),
(1063, 'Tuluá', 31, 1),
(1064, 'Ulloa', 31, 1),
(1065, 'Versalles', 31, 1),
(1066, 'Vijes', 31, 1),
(1067, 'Yotoco', 31, 1),
(1068, 'Yumbo', 31, 1),
(1069, 'Zarzal', 31, 1),
(1070, 'Mitú', 32, 1),
(1071, 'Carurú', 32, 1),
(1072, 'Tatamá', 32, 1),
(1073, 'Puerto Carreño', 33, 1),
(1074, 'La Primavera', 33, 1),
(1075, 'Santa Rosalia', 33, 1),
(1076, 'Cumaribo', 33, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(2) NOT NULL COMMENT 'Codigo del departamento',
  `nombre_departamento` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Descripcion del departamento',
  `estado_departamento` int(1) NOT NULL DEFAULT 1 COMMENT 'Estado en sistema del registro de la tabla departamento'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `nombre_departamento`, `estado_departamento`) VALUES
(1, 'Bogotá D.C.', 1),
(2, 'Amazonas', 1),
(3, 'Antioquia', 1),
(4, 'Arauca', 1),
(5, 'Atlántico', 1),
(6, 'Bolívar', 1),
(7, 'Boyacá', 1),
(8, 'Caldas', 1),
(9, 'Caquetá', 1),
(10, 'Casanare', 1),
(11, 'Cauca', 1),
(12, 'Cesar', 1),
(13, 'Chocó', 1),
(14, 'Córdoba', 1),
(15, 'Cundinamarca', 1),
(16, 'Guainía', 1),
(17, 'Guaviare', 1),
(18, 'Huila', 1),
(19, 'La Guajira', 1),
(20, 'Magdalena', 1),
(21, 'Meta', 1),
(22, 'Nariño', 1),
(23, 'Norte de Santander', 1),
(24, 'Putumayo', 1),
(25, 'Quindío', 1),
(26, 'Risaralda', 1),
(27, 'San Andrés', 1),
(28, 'Santander', 1),
(29, 'Sucre', 1),
(30, 'Tolima', 1),
(31, 'Valle', 1),
(32, 'Vaupés', 1),
(33, 'Vichada', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(4) NOT NULL COMMENT 'Llave primaria de la tabla empleado',
  `ape1_empleado` varchar(50) NOT NULL COMMENT 'Primer apellido del empleado',
  `ape2_empleado` varchar(50) NOT NULL COMMENT 'Segundo apellido del empleado',
  `nombre_empleado` varchar(100) NOT NULL COMMENT 'Nombres del empleado',
  `fecha_nac_empleado` date NOT NULL COMMENT 'Fecha de nacimiento del empleado',
  `fkID_genero_empleado` int(1) NOT NULL COMMENT 'Llave foranea del genero del empleado',
  `cedula_empleado` varchar(15) NOT NULL COMMENT 'Cedula del empleado',
  `fkID_nacionalidad_empleado` int(2) NOT NULL COMMENT 'Llave foranea de la nacionalidad del empleado',
  `fkID_civil_empleado` int(1) NOT NULL COMMENT 'LLave foranea del estado civil del empleado',
  `direccion_empleado` varchar(200) NOT NULL COMMENT 'Direccion del empleado',
  `fkID_depar_empleado` int(2) NOT NULL COMMENT 'Llave foranea del departamento del empleado',
  `fkID_ciudad_empleado` int(4) NOT NULL COMMENT 'Llave foranea de la ciudad del empleado',
  `telefono_empleado` varchar(50) NOT NULL COMMENT 'Telefono del empleado',
  `celular_empleado` varchar(50) NOT NULL COMMENT 'Celular del empleado',
  `fkID_eps_empleado` int(3) NOT NULL COMMENT 'Llave foranea de la EPS del empleado',
  `fkID_pension_empleado` int(3) NOT NULL COMMENT 'Llave foranea del fondo de pensiones del empleado',
  `fkID_cesantias_empleado` int(3) NOT NULL COMMENT 'Llave foranea del fondo de cesantias del empleado',
  `rh_empleado` varchar(4) NOT NULL COMMENT 'RH del empleado',
  `fkID_banco_empleado` int(3) NOT NULL COMMENT 'Llave foranea del banco del empleado',
  `cuenta_empleado` varchar(50) NOT NULL COMMENT 'No de cuenta del empleado',
  `email_empleado` varchar(200) NOT NULL COMMENT 'Email del empleado',
  `foto_empleado` varchar(100) NOT NULL COMMENT 'Url de la foto',
  `estado_empleado` int(1) NOT NULL DEFAULT 1 COMMENT 'Estado en sistema del registro de la tabla empleado'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `ape1_empleado`, `ape2_empleado`, `nombre_empleado`, `fecha_nac_empleado`, `fkID_genero_empleado`, `cedula_empleado`, `fkID_nacionalidad_empleado`, `fkID_civil_empleado`, `direccion_empleado`, `fkID_depar_empleado`, `fkID_ciudad_empleado`, `telefono_empleado`, `celular_empleado`, `fkID_eps_empleado`, `fkID_pension_empleado`, `fkID_cesantias_empleado`, `rh_empleado`, `fkID_banco_empleado`, `cuenta_empleado`, `email_empleado`, `foto_empleado`, `estado_empleado`) VALUES
(1, 'DIAZ', 'MARIN', 'JOAQUIN', '1990-06-06', 1, '123', 1, 1, 'CALLE 100', 1, 1, '312', '123456', 1, 1, 1, 'O+', 1, '132413413241', 'correo@gmail.com', 'imagenes/foto.jpg', 1),
(2, 'APELLIDO UNO', 'APELLIDO DOS', 'NOMBRES', '2020-01-04', 1, '123', 1, 2, 'calle 100', 2, 5, '321', '13123', 0, 0, 0, '', 0, '', '', '', 1),
(3, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 2, 1, 1, '', 0, '', '', '', 1),
(4, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, 'O+', 1, '', '', '', 1),
(5, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '1341324', 'correo@gmail.com', '', 1),
(6, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '1341324', 'correo@gmail.com', '', 1),
(7, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', 1),
(8, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', 1),
(9, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '', '', 'vacio', 1),
(10, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '', '', 'vacio', 1),
(11, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '', '', 'vacio', 1),
(12, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '', '', 'vacio', 1),
(13, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '', '', 'WhatsApp Image 2019-12-03 at 9.25.12 AM.jpeg', 1),
(14, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', 1),
(15, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', 1),
(16, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', 1),
(17, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', 1),
(18, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', 1),
(19, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', 1),
(20, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', 1),
(21, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '', '', 'fotoprueba.jpeg', 1),
(22, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '', '', 'fotoprueba.jpeg', 1),
(23, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '', '', 'fotoprueba.jpeg', 1),
(24, '', '', '', '0000-00-00', 0, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '', 0, '', '', 'Comic_Style_Teacher_Appreciation_Social_Media_Post.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eps`
--

CREATE TABLE `eps` (
  `id_eps` int(3) NOT NULL COMMENT 'Llave primaria de la tabla eps',
  `nombre_eps` varchar(100) NOT NULL COMMENT 'Nombre de la EPS',
  `estado_eps` int(1) NOT NULL DEFAULT 1 COMMENT 'Estado en sistema del registro de la tabla eps'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eps`
--

INSERT INTO `eps` (`id_eps`, `nombre_eps`, `estado_eps`) VALUES
(1, 'Sanitas', 1),
(2, 'Nueva EPS', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_civil`
--

CREATE TABLE `estado_civil` (
  `id_estado_civil` int(1) NOT NULL COMMENT 'Llave primaria de la tabla estado civil',
  `nombre_estado_civil` varchar(100) NOT NULL COMMENT 'Nombre del estado civil',
  `estado_civil` int(1) NOT NULL DEFAULT 1 COMMENT 'Estado en sistema del registro de la tabla estado civil'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado_civil`
--

INSERT INTO `estado_civil` (`id_estado_civil`, `nombre_estado_civil`, `estado_civil`) VALUES
(1, 'Soltero(a)', 1),
(2, 'Casado(a)', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(1) NOT NULL COMMENT 'Llave primaria de la tabla genero',
  `nombre_genero` varchar(50) NOT NULL COMMENT 'Nombre del genero',
  `estado_genero` int(1) NOT NULL DEFAULT 1 COMMENT 'Estado en sistema del registro de la tabla genero'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `nombre_genero`, `estado_genero`) VALUES
(1, 'Femenino', 1),
(2, 'Masculino', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(4) NOT NULL COMMENT 'Id de la tabla menu',
  `nombre_menu` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT 'Nombre del menu',
  `padre` int(4) NOT NULL,
  `orden` int(4) NOT NULL,
  `nivel1` int(11) NOT NULL COMMENT 'Valor para el nivel 1',
  `nivel2` int(11) NOT NULL COMMENT 'Valor para el nivel 2',
  `nivel3` int(11) NOT NULL COMMENT 'Valor para el nivel 3',
  `nivel4` int(11) NOT NULL COMMENT 'Valor para el nivel 4',
  `nivel5` int(11) NOT NULL COMMENT 'Valor para el nivel 5',
  `url_menu` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Url del menu',
  `estado` int(1) DEFAULT 1 COMMENT 'Estado en sistema del registro'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id_menu`, `nombre_menu`, `padre`, `orden`, `nivel1`, `nivel2`, `nivel3`, `nivel4`, `nivel5`, `url_menu`, `estado`) VALUES
(1, 'Gestion', 0, 1, 1, 0, 0, 0, 0, '', 1),
(2, 'SGSST', 0, 2, 1, 0, 0, 0, 0, '', 1),
(3, 'Administracion', 0, 3, 1, 0, 0, 0, 0, '', 1),
(4, 'Perfil', 1, 1, 0, 1, 0, 0, 0, '', 1),
(5, 'Eventos y cumplea&ntilde;os', 1, 2, 0, 1, 0, 0, 0, '', 1),
(6, 'Solicitudes', 1, 3, 0, 1, 0, 0, 0, '', 1),
(7, 'Foros', 1, 4, 0, 1, 0, 0, 0, '', 1),
(8, 'Glosario', 1, 5, 0, 1, 0, 0, 0, '', 1),
(9, 'Datos personales', 4, 1, 0, 0, 1, 0, 0, '../empleado/index.php', 1),
(10, 'Datos laborales', 4, 2, 0, 0, 1, 0, 0, '', 1),
(11, 'Repositorio', 4, 3, 0, 0, 1, 0, 0, '', 1),
(12, 'Cumplea&ntilde;os', 5, 1, 0, 0, 1, 0, 0, '', 1),
(13, 'Eventos', 5, 2, 0, 0, 1, 0, 0, '', 1),
(14, 'Permisos', 6, 1, 0, 0, 1, 0, 0, '', 1),
(15, 'Vacaciones', 6, 2, 0, 0, 1, 0, 0, '', 1),
(16, 'Certificacion laboral', 6, 3, 0, 0, 1, 0, 0, '', 1),
(17, 'General', 7, 1, 0, 0, 1, 0, 0, '', 1),
(18, 'Por areas', 7, 2, 0, 0, 1, 0, 0, '', 1),
(19, 'Palabras clave', 8, 1, 0, 0, 1, 0, 0, '', 1),
(20, 'Solicitar nueva', 8, 2, 0, 0, 1, 0, 0, '', 1),
(21, 'Informacion general', 2, 1, 0, 1, 0, 0, 0, '', 1),
(22, 'Vigia', 2, 2, 0, 1, 0, 0, 0, '', 1),
(23, 'Convivencia', 2, 3, 0, 1, 0, 0, 0, '', 1),
(24, 'Brigadas', 2, 4, 0, 1, 0, 0, 0, '', 1),
(25, '¿Que es?', 21, 1, 0, 0, 1, 0, 0, '', 1),
(26, 'Tipos de comites', 21, 2, 0, 0, 1, 0, 0, '', 1),
(27, 'Roles y funciones', 21, 3, 0, 0, 1, 0, 0, '', 1),
(28, 'Reglamento interno', 21, 4, 0, 0, 1, 0, 0, '', 1),
(29, 'Reglamento de higiene y salud', 21, 5, 0, 0, 1, 0, 0, '', 1),
(30, 'Repositorio', 21, 6, 0, 0, 1, 0, 0, '', 1),
(31, 'Actas', 22, 1, 0, 0, 1, 0, 0, '', 1),
(32, 'Personal', 22, 2, 0, 0, 1, 0, 0, '', 1),
(33, 'Repositorio', 22, 3, 0, 0, 1, 0, 0, '', 1),
(34, 'Actas', 23, 1, 0, 0, 1, 0, 0, '', 1),
(35, 'Personal', 23, 2, 0, 0, 1, 0, 0, '', 1),
(36, 'Repositorio', 23, 3, 0, 0, 1, 0, 0, '', 1),
(37, 'Actas', 24, 1, 0, 0, 1, 0, 0, '', 1),
(38, 'Personal', 24, 2, 0, 0, 1, 0, 0, '', 1),
(39, 'Repositorio', 24, 3, 0, 0, 1, 0, 0, '', 1),
(40, 'Reportes y aprobaciones', 3, 1, 0, 1, 0, 0, 0, '', 1),
(41, 'Usuarios', 3, 2, 0, 1, 0, 0, 0, '', 1),
(42, 'Directorio empleados', 40, 1, 0, 0, 1, 0, 0, '', 1),
(43, 'Aprobacion solicitud', 40, 2, 0, 0, 1, 0, 0, '', 1),
(44, 'Aprobacion manual', 40, 3, 0, 0, 1, 0, 0, '', 1),
(45, 'Usuarios', 41, 1, 0, 0, 1, 0, 0, '', 1),
(46, 'Roles', 41, 2, 0, 0, 1, 0, 0, '', 1),
(47, 'Permisos', 41, 3, 0, 0, 1, 0, 0, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacionalidad`
--

CREATE TABLE `nacionalidad` (
  `id_nacionalidad` int(2) NOT NULL COMMENT 'Llave primaria de la tabla nacionalidad',
  `nombre_nacionalidad` varchar(100) NOT NULL COMMENT 'Nombre de la nacionalidad',
  `estado_nacionalidad` int(1) NOT NULL DEFAULT 1 COMMENT 'Estado en sistema del registro tabla nacionalidad'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nacionalidad`
--

INSERT INTO `nacionalidad` (`id_nacionalidad`, `nombre_nacionalidad`, `estado_nacionalidad`) VALUES
(1, 'Colombiana', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pension`
--

CREATE TABLE `pension` (
  `id_pension` int(3) NOT NULL COMMENT 'Llave primaria de la tabla pension',
  `nombre_pension` varchar(100) NOT NULL COMMENT 'Nombre del fondo de pensiones',
  `estado_pension` int(1) NOT NULL DEFAULT 1 COMMENT 'Estado en sistema del registro de la tabla pension'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pension`
--

INSERT INTO `pension` (`id_pension`, `nombre_pension`, `estado_pension`) VALUES
(1, 'Porvenir', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(10) NOT NULL COMMENT 'Id del usuario',
  `nombre` varchar(100) NOT NULL COMMENT 'Nombre del usuario',
  `password` varchar(100) NOT NULL COMMENT 'Password',
  `fkID_empleado` int(4) NOT NULL COMMENT 'Llave foranea de la tabla empleado',
  `estado` int(1) NOT NULL DEFAULT 1 COMMENT 'Estado en sistema del usuario'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de usuarios';

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nombre`, `password`, `fkID_empleado`, `estado`) VALUES
(1, 'prueba', '123', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`id_banco`);

--
-- Indices de la tabla `cesantias`
--
ALTER TABLE `cesantias`
  ADD PRIMARY KEY (`id_cesantias`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `eps`
--
ALTER TABLE `eps`
  ADD PRIMARY KEY (`id_eps`);

--
-- Indices de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  ADD PRIMARY KEY (`id_estado_civil`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indices de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  ADD PRIMARY KEY (`id_nacionalidad`);

--
-- Indices de la tabla `pension`
--
ALTER TABLE `pension`
  ADD PRIMARY KEY (`id_pension`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banco`
--
ALTER TABLE `banco`
  MODIFY `id_banco` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria de la tabla banco', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cesantias`
--
ALTER TABLE `cesantias`
  MODIFY `id_cesantias` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria de la tabla cesantias', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo de la ciudad', AUTO_INCREMENT=1077;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(2) NOT NULL AUTO_INCREMENT COMMENT 'Codigo del departamento', AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(4) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria de la tabla empleado', AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `eps`
--
ALTER TABLE `eps`
  MODIFY `id_eps` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria de la tabla eps', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  MODIFY `id_estado_civil` int(1) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria de la tabla estado civil', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(1) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria de la tabla genero', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(4) NOT NULL AUTO_INCREMENT COMMENT 'Id de la tabla menu', AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  MODIFY `id_nacionalidad` int(2) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria de la tabla nacionalidad', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pension`
--
ALTER TABLE `pension`
  MODIFY `id_pension` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria de la tabla pension', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Id del usuario', AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
