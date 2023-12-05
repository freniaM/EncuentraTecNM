-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2023 a las 05:00:00
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `touristphant`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares`
--

CREATE TABLE `lugares` (
  `ID_lugar` int(11) NOT NULL,
  `Nombre` varchar(120) NOT NULL,
  `Descripción` varchar(500) NOT NULL,
  `Horario` varchar(20) NOT NULL,
  `Observaciones` varchar(120) NOT NULL,
  `Imagen` varchar(120) NOT NULL,
  `Gif` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lugares`
--

INSERT INTO `lugares` (`ID_lugar`, `Nombre`, `Descripción`, `Horario`, `Observaciones`, `Imagen`, `Gif`) VALUES
(1, 'Laboratorio de computo', 'Es un espacio equipado con computadoras y tecnología relacionada, diseñado para facilitar actividades de investigación, desarrollo, enseñanza o pruebas en el ámbito de tecnologías de la información.', '08:00 AM - 08:00 PM', '', './img/lab-computo.jpg', './img/gif/principal-lab-computo.gif'),
(2, 'Edificio A', '', '08:00 AM - 08:00 PM', '', './img/edificio-a.jpg', './img/gif/principal-salon-a.gif'),
(3, 'Laboratorio de química', 'Es un espacio dedicado a la realización de experimentos y análisis químicos. Equipado con instrumentos como microscopios, probetas, tubos de ensayo y balanzas, proporciona las condiciones necesarias para estudios en química orgánica e inorgánica.', '08:00 AM - 10:00 PM', '', './img/lab-quimica.jpg', './img/gif/principal-lab-quimica.gif'),
(4, 'Edificio B', '', '08:00 AM - 08:00 PM', '', './img/edificio-b.jpg', './img/gif/principal-salon-b.gif'),
(5, 'Edificio C', '', '08:00 AM - 08:00 PM', '', './img/edificio-c.jpg', './img/gif/principal-salon-c.gif'),
(6, 'Laboratorio de redes', 'Es un espacio equipado con hardware y software especializado para la configuración, prueba y análisis de redes de computadoras. Este entorno facilita la simulación y el despliegue de configuraciones de red, permitiendo a los profesionales y estudiantes experimentar con diversos escenarios.', '', 'Solo se puede acceder para las clases pertinentes', './img/salon-redes.jpg', './img/gif/principal-lab-redes.gif'),
(7, 'Centro de información', 'Los usuarios pueden encontrar libros, revistas, periódicos, recursos en línea, bases de datos, y otros materiales que cubren una amplia gama de temas.', '08:00 AM - 08:00 PM', '', './img/centro-informacion.jpg\r\n', './img/gif/principal-centro-informacion.gif\r\n'),
(8, 'Laboratorio de mecánica ', 'Se utilizan en entornos educativos y de investigación para que los estudiantes y profesionales de la ingeniería mecánica puedan aplicar y verificar teorías, realizar análisis de materiales, y entender los principios fundamentales de la mecánica a través de experiencias prácticas.', '08:00 AM - 10:00 PM', '', './img/lab-mecanica.jpg\r\n', './img/gif/principal-lab-mecanica.gif'),
(9, 'Laboratorio de eléctrica', 'Este laboratorio suele contar con fuentes de alimentación, instrumentos de medición como multímetros y osciloscopios, componentes electrónicos, y áreas de trabajo para el montaje y prueba de circuitos eléctricos.', '08:00 AM - 10:00 PM', '', './img/lab-electrica.jpg', './img/gif/principal-lab-electrica.gif'),
(10, 'Edificio E', '', '08:00 AM - 08:00 PM', '', './img/edificio-e.jpg', './img/gif/principal-salon-e.gif'),
(11, 'Laboratorio de materiales', 'Equipado con instrumentos especializados, como microscopios, espectrómetros, máquinas de ensayo de materiales, y dispositivos de análisis térmico, estos laboratorios permiten a los investigadores y estudiantes explorar las características de los materiales en diferentes condiciones.', '08:00 AM - 10:00 PM', '', './img/lab-materiales.jpg\r\n', './img/gif/principal-lab-materiales.gif'),
(12, 'Servicios escolares', 'Son un conjunto de funciones y actividades dentro de una institución educativa que se encargan de gestionar y proporcionar servicios administrativos y académicos a estudiantes y personal.', '', 'El horario varia dependiendo del servicio', './img/servicios-escolares.jpg', './img/gif/principal-servicios-escolares.gif'),
(13, 'Ventanillas', 'Las ventanillas proporcionan servicios a las distintas carreras', '', 'El horario varia dependiendo del servicio', './img/ventanillas.jpg', './img/gif/principal-servicios-escolares.gif'),
(14, 'Dirección', '', '', 'El horario varia dependiendo del servicio', './img/prueba.jpg', './img/gif/principal-direccion.gif'),
(15, 'Ciencias básicas ', 'Cubículos para los profesores de ciencias básicas como son: Cálculos, Física, Química.', '08:00 AM - 08:00 PM', '', './img/ciencias-basicas.jpg\r\n', './img/gif/principal-ciencias-basicas.gif'),
(16, 'Edificio F', '', '08:00 AM - 08:00 PM', '', './img/edificio-f.jpg', './img/gif/principal-salon-f.gif'),
(17, 'Cafetería ', 'Este lugar proporciona un ambiente relajado y social, donde las personas pueden disfrutar de bebidas, snacks, entre otras comidas.', '08:00 AM - 06:00 PM', '', './img/cafeteria.jpg', './img/gif/principal-cafeteria.gif'),
(18, 'Plaza cívica ', 'Es un espacio público en el que la comunidad se reúne para llevar a cabo actividades cívicas, sociales y culturales.', '08:00 AM - 08:00 PM', '', './img/plaza-civica.jpeg', './img/gif/principal-plaza-civica.gif'),
(19, 'Edificio G', '', '08:00 AM - 08:00 PM', '', './img/edificio-g.jpg', './img/gif/principal-salon-g.gif'),
(20, 'Almacén ', 'Es un espacio físico utilizado para el almacenamiento de bienes, productos o mercancías antes de su distribución, venta o uso. ', '', '', './img/almacen.jpg', './img/gif/principal-almacen.gif'),
(21, 'Edificio H', '', '08:00 AM - 08:00 PM', '', './img/edificio-h.jpg\r\n', './img/gif/principal-salon-h.gif'),
(22, 'Sala audiovisual 1', 'Es un espacio diseñado para la presentación y proyección de contenido multimedia, como películas, presentaciones, conferencias, material educativo o cualquier otro tipo de contenido visual y auditivo.', '', 'Solo se puede acceder a ella con el permiso necesario ', './img/sala-audiovisual-1.jpg', './img/gif/principal-sala-audiovisual-1.gif'),
(23, 'Sala audiovisual 2', 'Es un espacio diseñado para la presentación y proyección de contenido multimedia, como películas, presentaciones, conferencias, material educativo o cualquier otro tipo de contenido visual y auditivo.', '', 'Solo se puede acceder a ella con el permiso necesario ', './img/sala-audiovisual-2.jpg', './img/gif/principal-sala-audiovisual-2.gif'),
(24, 'Sala audiovisual 4', 'Es un espacio diseñado para la presentación y proyección de contenido multimedia, como películas, presentaciones, conferencias, material educativo o cualquier otro tipo de contenido visual y auditivo.', '', 'Solo se puede acceder a ella con el permiso necesario ', './img/sala-audiovisual-4.jpg', './img/gif/principal-sala-audiovisual-4.gif'),
(25, 'Laboratorio de industrial', 'Es un espacio en el que se llevan a cabo diversas actividades de investigación, desarrollo, control de calidad y pruebas relacionadas con procesos y productos industriales. Estos laboratorios están equipados con tecnologías avanzadas y herramientas especializadas según el sector industrial al que sirven.', '08:00 AM - 10:00 PM', '', './img/lab-industrial.jpg', './img/gif/principal-lab-industrial.gif'),
(26, 'Gimnasio ', 'Es un espacio diseñado para la práctica de ejercicio físico y el acondicionamiento físico.', '10:00 AM - 07:00 PM', '', './img/gimnasio.jpg', './img/gif/principal-gym.gif'),
(27, 'Consultorios', 'Es un espacio dedicado a la prestación de servicios profesionales, generalmente en el ámbito de la salud o servicios profesionales especializados.', '', 'El horario varia dependiendo del servicio', './img/consultorio.jpg\r\n', './img/gif/principal-consultorio.gif'),
(28, 'Edificio I', '', '08:00 AM - 08:00 PM', '', './img/edificio-i.jpg', './img/gif/principal-salon-i.gif'),
(29, 'Edificio J', '', '08:00 AM - 08:00 PM', '', './img/edificio-j.jpg', './img/gif/principal-salon-j.gif'),
(30, 'Alberca', 'Un espacio destinado al baño, la natación y la recreación acuática.', '', 'Solo se encuentra abierta para talleres', './img/alberca.jpg', './img/gif/principal-alberca.gif'),
(31, 'Auditorio', 'Es un espacio diseñado específicamente para albergar eventos públicos, presentaciones, conferencias, actuaciones y otras actividades que involucran a un público. ', '', 'Solo se encuentra abierto para eventos y talleres', './img/auditorio.jpg', './img/gif/principal-auditorio.gif'),
(32, 'Posgrado', '', '', '', './img/posgrado.jpg', './img/gif/principal-posgrado.gif'),
(33, 'Edificio X', '', '08:00 AM - 08:00 PM', '', './img/edificio-x.jpg', './img/gif/principal-salon-x.gif'),
(34, 'Edificio K ', '', '08:00 AM - 08:00 PM', '', './img/edificio-k.jpg', './img/gif/principal-salon-k.gif'),
(35, 'Laboratorio electrónica ', 'Es un espacio equipado para llevar a cabo experimentos, pruebas y proyectos relacionados con los principios y aplicaciones de la electrónica. Se suelen encontrar herramientas y equipos especializados, como osciloscopios, generadores de señales, y áreas de trabajo para montaje de circuitos.', '08:00 AM - 10:00 PM', '', './img/lab-electronica.jpg', './img/gif/principal-lab-electronica.gif'),
(36, 'Centro de idiomas', 'Es educación especializada en la enseñanza y aprendizaje de uno o varios idiomas. Este centro proporciona programas de estudio que van desde niveles principiantes hasta avanzados y pueden ofrecer cursos para propósitos específicos.', '09:00 AM - 02:00 PM', '', './img/idiomas.jpg', './img/gif/principal-idiomas.gif'),
(37, 'Sala audiovisual 3', 'Es un espacio diseñado para la presentación y proyección de contenido multimedia, como películas, presentaciones, conferencias, material educativo o cualquier otro tipo de contenido visual y auditivo.', '', 'Solo se puede acceder a ella con el permiso necesario', './img/sala-audiovisual-3.jpg\r\n', './img/gif/principal-sala-audiovisual-3.gif'),
(38, 'División de estudios profesionales', 'Se enfoca en ofrecer programas académicos y servicios relacionados con carreras profesionales y campos específicos. ', '', 'El horario varia dependiendo del servicio', './img/coordinacion.jpg', './img/gif/principal-coordinacion-carreras.gif'),
(39, 'Desarrollo académico ', 'Se centra en diseñar, implementar y mejorar programas y servicios destinados a impulsar el crecimiento y el rendimiento académico de los estudiantes.', '', 'Se desconoce el horario', './img/desarrollo-academico.jpg', './img/gif/principal-direccion.gif'),
(40, 'Departamento de planeación, programación y presupuestación', 'Se encarga de coordinar y gestionar aspectos relacionados con la planificación estratégica, la programación de actividades y la asignación de recursos financieros.', '', 'Se desconoce el horario', './img/planeacion-vinculacion.jpg', './img/gif/principal-direccion.gif'),
(41, 'Departamento de recursos humanos', 'Se encarga de gestionar aspectos relacionados con el personal y las relaciones laborales.', '', '', './img/recursos-humanos.jpg', './img/gif/principal-direccion.gif'),
(42, 'Departamento de recursos financieros', 'Responsable de gestionar y supervisar todas las actividades financieras.', '', '', './img/recursos-financieros.png', './img/gif/principal-direccion.gif'),
(43, 'Departamento de tecnología y vinculación', 'Se centra en la integración de soluciones tecnológicas en la educación, la vinculación con empresas para oportunidades laborales y proyectos conjuntos, la promoción de la innovación y desarrollo tecnológico, y la conexión de la tecnología con las necesidades de la comunidad', '', '', './img/gestion-vinculacion.jpg\r\n', './img/gif/principal-servicios-escolares.gif'),
(44, 'Servicio social', 'Se encarga de coordinar y supervisar las actividades de servicio social de los estudiantes', '', '', './img/servicio-social.jpg', './img/gif/principal-servicios-escolares.gif'),
(45, 'Departamento de comunicación y difusión ', 'Desempeña un papel fundamental en la gestión de la comunicación interna y externa de una institución.', '', '', './img/comunicacion-difusion.jpg', './img/gif/principal-servicios-escolares.gif'),
(46, 'Titulación', 'Es responsable de coordinar y supervisar los procesos relacionados con la obtención de títulos académicos por parte de los estudiantes.', '', '', './img/titulacion.jpg', './img/gif/principal-servicios-escolares.gif'),
(47, 'Sociedad de alumnos', 'Es una organización estudiantil que representa a los estudiantes dentro de una institución educativa y trabaja para satisfacer sus necesidades y promover su bienestar. ', '', '', './img/sociedad-alumnos.jpg', './img/gif/principal-sociedad-alumnos.gif');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_usuario` int(5) NOT NULL,
  `Nombre` int(30) NOT NULL,
  `Contraseña` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD PRIMARY KEY (`ID_lugar`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lugares`
--
ALTER TABLE `lugares`
  MODIFY `ID_lugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
