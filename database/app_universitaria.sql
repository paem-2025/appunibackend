-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2025 a las 10:39:25
-- Versión del servidor: 8.0.42
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `app_universitaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `module`
--

CREATE TABLE `module` (
  `idmodule` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `topic_id` int NOT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `module`
--

INSERT INTO `module` (`idmodule`, `title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`) VALUES
(10, 'BECAS PUBU 2025', 'Programa Único de Becas UNSAdA\r\nPRIMER cuatrimestre 2025\r\n\r\nEl Programa tiene como objetivo promover y equiparar las posibilidades de acceso, permanencia y egreso de jóvenes de la región de influencia de la Universidad, fomentando el derecho a los estudios universitarios.\r\n\r\nBusca atender las demandas y situaciones particulares de estudiantes que quieran acceder a la Universidad.', '2025-06-24 07:14:21', NULL, 1, 'https://i.ibb.co/3523P0Ft/PUBU-2020-web.webp'),
(11, 'BECAS FUNDACIÓN YPF', 'Los requisitos son: \r\nSer estudiante ingresante a primer año (hasta 24 años); o estudiante avanzada(o)(hasta 26 años) teniendo entre el 35% y el 50% del plan de estudio cursado y aprobado .\r\nCompletar el formulario de inscripción puesto a disposición en el sitio web dentro de los plazos previstos.\r\nEntregar la documentación respaldatoria solicitada (información en la página web de la Fundación)', '2025-06-24 07:15:40', NULL, 1, 'https://i.ibb.co/cSf5BRZR/BECAS-YPF-2025.webp'),
(12, 'BECA PROGRESAR', 'Se encuentra abierta la inscripción a las becas PROGRESAR Nivel Superior 2025.\r\nPueden acceder estudiantes de la UNSAdA de todas las carreras de grado y pregrado. \r\nPara inscribirse, deberán hacerlo a través del sitio:\r\n🌐argentina.gob.ar/educacion/progresar\r\nLa inscripción estará abierta hasta el 20 de abril.\r\nConsultas UNSAdA', '2025-06-24 07:17:56', NULL, 1, 'https://i.ibb.co/DPBbvjb6/progresar-2025.png'),
(13, 'BECA SANTANDER', 'Se encuentra abierta la inscripción a las Becas de Estudio Santander, financiadas por el Banco Santander Argentina S.A.\r\nEl Programa tiene como fin otorgar becas con destino de facilitar el acceso, la permanencia y/o la finalización en los estudios de grado a sectores estudiantiles con necesidades económicas y alto desempeño académico.\r\nPueden acceder alumnos(as) de todas las carreras de grado de la UNSAdA. \r\nPara inscribirse podrán hacerlo por la siguiente plataforma, hasta el 25 de junio : https://app.santanderopenacademy.com/.../alumnos-de-grado...', '2025-06-24 07:19:45', NULL, 1, 'https://i.ibb.co/chfnbfyx/santander.jpg'),
(14, 'Introducción al álgebra/introducción al cálculo', 'Sede: Baradero- Gallo 220\r\nModalidad: Presencial\r\nDía y horario: viernes 15h\r\n\r\nModalidad: Virtual\r\nDía y horario: viernes 16:30h\r\nLink: https://meet.google.com/iht-ddzn-hkk\r\n\r\nSede: Exaltación- Centro Universitario\r\nModalidad: Presencial\r\nDías y horarios: martes de 16 a 18 h\r\n', '2025-06-24 07:46:12', NULL, 4, 'https://i.ibb.co/8DgJrWH9/introduccion-al-algebra.jpg'),
(15, 'Cálculo I', 'Modalidad: virtual\r\nDía y horario: viernes 17s\r\nLinK: https://meet.google.com/hzt-rhwj-zub', '2025-06-24 07:57:56', NULL, 4, 'https://i.ibb.co/6dsj3ss/calculo1.jpg'),
(16, 'Química', 'Modalidad: Virtual\r\nDía y horario: viernes 15 hs\r\nLink: https://meet.google.com/zrq-vmbt-puo', '2025-06-24 07:57:56', NULL, 4, 'https://i.ibb.co/gNL1Vdh/quimica.jpg'),
(17, 'EXALTACION DE CRUZ', 'En Exaltación de la Cruz, en el Centro Universitario local, la UNSAdA dicta las carreras de Tecnicatura Universitaria en Acompañamiento Terapéutico, Administración y Gestión, Mantenimiento Industrial y Gestión Ambiental.\r\n\r\nDirección: Gallo 220', '2025-06-24 08:05:15', NULL, 3, 'https://i.ibb.co/dJ2ymkss/337235269-763108135087125-8461790183847360747-n.jpg'),
(18, 'BARADERO', 'En Baradero, la UNSAdA ofrece en su sede académica local las carreras de Analista en Informática, Tecnicatura en Administración y Gestión, Gestión Ambiental, Mantenimiento Industrial, Licenciatura en Administración, Licenciatura en Gestión Ambiental y Licenciatura en Fonoaudiología.\r\n\r\nDirección: Gallo 220', '2025-06-24 08:05:15', NULL, 3, 'https://i.ibb.co/fYDRJPX5/brdr-frente2.png'),
(19, 'BRAGADO', 'En Bragado, en el Centro Regional Universitario (CRUB), la UNSAdA ofrece las carreras de Tecnicatura en Acompañamiento Terapéutico, Producción Agropecuaria, Gerontología, Gestión Ambiental, Analista en Informática y Licenciatura en Gestión Educativa.\r\n\r\nDirección: Bernardo de Elizondo 2613', '2025-06-24 08:12:06', NULL, 3, 'https://i.ibb.co/R4gRpBxP/bragado.webp'),
(20, 'Sede San Antonio de Areco', ' Guiraldes N° 689 (2760)\r\n Teléfono: 02326 453079 interno 11002', '2025-06-24 08:18:23', NULL, 5, 'https://i.ibb.co/gZ5PX5Bn/3d-mobile-phone-speech-bubble-600nw-2491859775.webp'),
(21, 'Sede Baradero', 'Bolaños N° 1637 (CP2942)\r\nTeléfono: 03329 485780 interno 21001\r\n\r\nCorreo Electrónico: extension@unsada.edu.ar bienestar@unsada.edu.ar', '2025-06-24 08:18:23', NULL, 5, 'https://i.ibb.co/gZ5PX5Bn/3d-mobile-phone-speech-bubble-600nw-2491859775.webp'),
(22, '1° Turno Febrero/Marzo 2025', 'Fecha de inicio de inscripción\r\n\r\nLUNES 10/02/2025\r\n\r\nFecha de Examen\r\n\r\nLUNES 17/02/2025 AL SABADO 01/03/2025\r\n', '2025-06-24 08:20:58', NULL, 2, 'https://i.ibb.co/fGFkLspp/depositphotos-125753646-stock-illustration-pencil-paper-and-checklist.webp'),
(23, 'Sede Bragado', 'Contacto del centro universitario \r\nNumero de teléfono: 02342 42-6992\r\nemail: centrouniversitariobragado@gmail.com', '2025-06-24 09:42:41', NULL, 5, 'https://i.ibb.co/gZ5PX5Bn/3d-mobile-phone-speech-bubble-600nw-2491859775.webp'),
(24, '2° Turno Mayo 2025', 'Fecha de inicio de inscripción\r\n\r\nLUNES 28/04/2025\r\n\r\nFecha de Examen\r\n\r\nLUNES 12/05/2025 AL SABADO 17/05/2025\r\n', '2025-06-24 09:51:10', NULL, 2, 'https://i.ibb.co/fGFkLspp/depositphotos-125753646-stock-illustration-pencil-paper-and-checklist.webp'),
(25, '3° Turno Julio/Agosto 2025', 'Fecha de inicio de inscripción\r\n\r\nLUNES 30/06/2025\r\n\r\nFecha de Examen\r\n\r\nLUNES 07/07/2025 AL SABADO 19/07/2025\r\n----------receso invernal------------\r\nLUNES 04/08/2025 AL SABADO 16/08/2025\r\n', '2025-06-24 09:51:10', NULL, 2, 'https://i.ibb.co/fGFkLspp/depositphotos-125753646-stock-illustration-pencil-paper-and-checklist.webp'),
(26, '4° Turno Octubre 2025', 'Fecha de inicio de inscripción\r\n\r\nLUNES 29/09/2025\r\n\r\nFecha de Examen\r\n\r\nLUNES 13/10/2025 AL SABADO 18/10/2025', '2025-06-24 09:51:10', NULL, 2, 'https://i.ibb.co/fGFkLspp/depositphotos-125753646-stock-illustration-pencil-paper-and-checklist.webp'),
(27, '5° Turno Diciembre', 'Fecha de inicio de inscripción\r\n\r\nLUNES 01/12/2025\r\n\r\nFecha de Examen\r\n\r\nLUNES 09/12/2025 AL MARTES 23/12/2025', '2025-06-24 09:51:10', NULL, 2, 'https://i.ibb.co/fGFkLspp/depositphotos-125753646-stock-illustration-pencil-paper-and-checklist.webp'),
(28, 'San Antonio de Areco', 'En San Antonio de Areco, sede principal de la UNSAdA, se dictan las carreras de Analista en Informática, Tecnicatura en Producción Agropecuaria, Administración y Gestión, Enfermería Universitaria, Licenciatura en Informática, Ingeniería Zootecnista, Licenciatura en Administración y Licenciatura en Gestión Ambiental.\r\n\r\nDirección: Quegles y Rivadavia', '2025-06-24 10:07:20', NULL, 3, 'https://i.ibb.co/twXGMC21/20220406-125107-1536x864.jpg'),
(29, 'Primer encuentro de intercedes ', 'El primero de 2025 contó con la participación de estudiantes de la UNSAdA de las sedes Baradero, Exaltación de la Cruz y San Antonio de Areco. La actividad se desarrolló en el predio del Club Sportivo Baradero, lugar en donde los estudiantes disputaron partidos de beach voley. El encuentro finalizó con el tradicional \"tercer tiempo\" en donde fortalecieron vínculos entre estudiantes de las diferentes sedes y localidades.', '2025-06-24 10:13:12', NULL, 6, 'https://i.ibb.co/tp6ywN6F/deportes-2.jpg'),
(30, 'Ajedrez infantil - San Antonio de Areco', 'Todos los Martes 17h\r\nSede Académica (Rivadavia y Quetgles)\r\n\r\nInscripción online\r\nunsada.edu.ar/deportes\r\n\r\nConsultas\r\nITG: @estudiantesunsada\r\nbienestar@unsada.edu.ar\r\nWhatsapp: ‪+ 54 9 2477 680032‬', '2025-06-24 10:13:12', NULL, 6, 'https://i.ibb.co/SXF20ZJS/Deportes-ajedres.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news`
--

CREATE TABLE `news` (
  `idnews` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `news`
--

INSERT INTO `news` (`idnews`, `title`, `content`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'REELECION DE MANDATO', 'Tras el resultado de la Asamblea Universitaria que lo eligió por unanimidad, el Dr. Jerónimo Ainchil.', 'https://i.ibb.co/xKSYPPkj/asuncion-rector-unsada-14.webp', '2025-06-24 02:52:26', '2025-06-24 06:27:05'),
(2, 'ACTO COLACION 2025 ', 'En este primer acto de colación de 2025, egresaron estudiantes de Administración, Gestión Educativa, Higiene y Seguridad, Mantenimiento Industrial, Producción Agropecuaria, Gerontología, Gestión Ambiental e Informática.', 'https://i.ibb.co/5gzDHbfX/unsada-colacion06257.webp', '2025-06-24 06:23:54', '2025-06-24 06:23:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `topic`
--

CREATE TABLE `topic` (
  `idtopic` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `topic`
--

INSERT INTO `topic` (`idtopic`, `name`, `description`) VALUES
(1, 'Becas', 'Informacion acerca de las becas disponibles'),
(2, 'Finales', 'Informacion acerca de los examenes finales'),
(3, 'Sedes académicas ', 'Las extensiones áulicas son sedes en otros distritos'),
(4, 'Tutorias', 'Las tutorías son un espacio de apoyo para los estudiantes.'),
(5, 'Contactos', 'Los contactos son los medios de comunicación entre el usuario y la institución '),
(6, 'Deportes', 'Los deportes son fundamentales para fomentar la unión entre los estudiantes de todas las carreras.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`idmodule`,`topic_id`),
  ADD KEY `fk_module_topic_idx` (`topic_id`);

--
-- Indices de la tabla `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`idnews`);

--
-- Indices de la tabla `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`idtopic`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `module`
--
ALTER TABLE `module`
  MODIFY `idmodule` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `news`
--
ALTER TABLE `news`
  MODIFY `idnews` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `topic`
--
ALTER TABLE `topic`
  MODIFY `idtopic` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `fk_module_topic` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`idtopic`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
