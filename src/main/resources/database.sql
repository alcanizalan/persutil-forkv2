-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: database:3306
-- Generation Time: Dec 01, 2025 at 07:22 AM
-- Server version: 8.1.0
-- PHP Version: 8.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `contante`
--

-- --------------------------------------------------------

--
-- Table structure for table `alcalde`
--

CREATE TABLE `alcalde` (
  `id` bigint NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `autor` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `genero` varchar(100) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `reseña` longtext CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `valoracion` int NOT NULL,
  `publicado` tinyint(1) NOT NULL DEFAULT '1',
  `destacado` tinyint(1) NOT NULL DEFAULT '0',
  `fecha_lectura` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alfonso_respuesta`
--

CREATE TABLE `alfonso_respuesta` (
  `id` bigint NOT NULL,
  `autor` varchar(128) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `contenido` longtext CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `publicado` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` bigint NOT NULL,
  `titulo` varchar(1024) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `contenido` longtext CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `etiquetas` varchar(1024) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calinesculistacompra`
--

CREATE TABLE `calinesculistacompra` (
  `id` bigint NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `contenido` longtext NOT NULL,
  `fecha_compra_esperada` datetime DEFAULT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `publicado` tinyint(1) NOT NULL DEFAULT '1',
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `castanyera`
--

CREATE TABLE `castanyera` (
  `id` bigint NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` longtext CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `publico` tinyint(1) NOT NULL,
  `etiquetas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `garcia`
--

CREATE TABLE `garcia` (
  `id` bigint NOT NULL,
  `titulo` varchar(1000) COLLATE utf32_unicode_ci NOT NULL,
  `objetivo` varchar(1000) COLLATE utf32_unicode_ci NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_final` datetime NOT NULL,
  `progreso` varchar(1000) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ideas`
--

CREATE TABLE `ideas` (
  `id` bigint NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `comentario` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `categoria` enum('IDEA','MEJORA','BUG') CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `publico` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pallas`
--

CREATE TABLE `pallas` (
  `id` bigint NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `contenido` longtext,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `publicado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receta`
--

CREATE TABLE `receta` (
  `id` bigint NOT NULL,
  `nombre` varchar(1024) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `ingredientes` longtext CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `preparacion` longtext CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recurso`
--

CREATE TABLE `recurso` (
  `id` bigint NOT NULL,
  `nombre` varchar(1024) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sempertegui_pelicula`
--

CREATE TABLE `sempertegui_pelicula` (
  `id` bigint NOT NULL,
  `nombre` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `genero` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `director` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `puntuacion` int NOT NULL,
  `anyo` year NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soares`
--

CREATE TABLE `soares` (
  `id` bigint NOT NULL,
  `preguntas` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `publicacion` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tarea`
--

CREATE TABLE `tarea` (
  `id` bigint NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `descripcion` text CHARACTER SET utf32 COLLATE utf32_unicode_ci,
  `categoria` varchar(100) CHARACTER SET utf32 COLLATE utf32_unicode_ci DEFAULT NULL,
  `completada` tinyint(1) NOT NULL DEFAULT '0',
  `publicado` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;



-- ----------- ALAN ---------------------------------

CREATE TABLE `jspreguntas` (
  `id` bigint NOT NULL,
  `question` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `answer1` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `answer2` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `answer3` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `answer4` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `correct` tinyint NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `jspreguntas`
--

INSERT INTO `jspreguntas` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct`, `create_date`, `modify_date`) VALUES
(99, '¿Cuál es el principal beneficio de la programación asíncrona en un entorno de hilo único (single-threaded), como JavaScript en un navegador?', 'Garantiza que todas las funciones se completen siempre en el orden exacto en que fueron llamadas.', 'Simplifica la sintaxis del código de manejo de errores en operaciones I/O.', 'Evita el bloqueo del hilo principal, permitiendo que la interfaz de usuario siga respondiendo mientras se esperan operaciones lentas.', 'Permite que el código se ejecute en paralelo utilizando múltiples núcleos del procesador.', 3, '2025-11-24 20:01:09', NULL),
(100, '¿Qué tipo de lenguaje es JavaScript?', 'Lenguaje compilado fuertemente tipado.', 'Lenguaje interpretado y dinámico.', 'Lenguaje ensamblador de bajo nivel.', 'Lenguaje estrictamente funcional.', 2, '2025-11-28 18:00:00', NULL),
(101, '¿Qué representa el concepto de \"scope\" en JavaScript?', 'El número de argumentos que recibe una función.', 'La capacidad de un programa para ejecutarse en segundo plano.', 'El contexto donde las variables son accesibles.', 'El tamaño máximo permitido para un archivo JS.', 3, '2025-11-28 18:00:00', NULL),
(102, '¿Qué palabra clave declara una variable con alcance de bloque?', 'var', 'let', 'const var', 'scope', 2, '2025-11-28 18:00:00', NULL),
(103, '¿Cuál es el resultado de typeof null en JavaScript?', 'null', 'object', 'undefined', 'function', 2, '2025-11-28 18:00:00', NULL),
(104, '¿Qué es un callback?', 'Una función que se ejecuta automáticamente al cargar la página.', 'Una función pasada como argumento a otra función.', 'Un error provocado por una función recursiva.', 'Un método exclusivo de clases.', 2, '2025-11-28 18:00:00', NULL),
(105, '¿Qué es JSON?', 'Un formato binario para almacenar datos.', 'Un lenguaje de programación para API.', 'Un formato de texto para intercambiar datos.', 'Una base de datos orientada a documentos.', 3, '2025-11-28 18:00:00', NULL),
(106, '¿Qué método se usa para convertir un array en una cadena?', 'toString()', 'stringify()', 'parse()', 'bind()', 1, '2025-11-28 18:00:00', NULL),
(107, '¿Qué hace el método Array.map()?', 'Modifica el array original.', 'Filtra elementos de un array.', 'Transforma cada elemento y devuelve un nuevo array.', 'Ordena los elementos del array.', 3, '2025-11-28 18:00:00', NULL),
(108, '¿Qué significa OOP en programación?', 'Object Overload Processing', 'Object-Oriented Programming', 'Over Optimization Protocol', 'Open Operation Paradigm', 2, '2025-11-28 18:00:00', NULL),
(109, '¿Qué es una promesa (Promise)?', 'Un objeto que representa una operación síncrona.', 'Un método para gestionar errores.', 'Un objeto que representa la finalización o falla de una operación asíncrona.', 'Un tipo de variable inmutable.', 3, '2025-11-28 18:00:00', NULL),
(110, '¿Cuál es la utilidad principal de async/await?', 'Permitir que el código se ejecute más rápido.', 'Hacer que el código asíncrono se lea de forma más clara y estructurada.', 'Crear múltiples hilos de ejecución.', 'Eliminar la necesidad de usar promesas.', 2, '2025-11-28 18:00:00', NULL),
(111, '¿Qué es el hoisting?', 'Una técnica para ordenar arrays.', 'El proceso por el cual JavaScript eleva declaraciones al inicio de su contexto.', 'Un método de depuración.', 'Un patrón de diseño.', 2, '2025-11-28 18:00:00', NULL),
(112, '¿Qué hace la palabra clave this?', 'Se refiere siempre al objeto window.', 'Hace referencia al contexto actual de ejecución.', 'Se usa para declarar variables globales.', 'Es un alias de prototype.', 2, '2025-11-28 18:00:00', NULL),
(113, '¿Qué es un método estático en una clase?', 'Un método que solo puede ser llamado por instancias.', 'Un método que no tiene acceso a la clase.', 'Un método que pertenece a la clase y no a sus instancias.', 'Un método que se ejecuta automáticamente al instanciar.', 3, '2025-11-28 18:00:00', NULL),
(114, '¿Qué es un algoritmo?', 'Una herramienta de depuración.', 'Una secuencia ordenada de pasos para resolver un problema.', 'Un archivo ejecutable.', 'Una estructura de datos.', 2, '2025-11-28 18:00:00', NULL),
(115, '¿Qué estructura de datos funciona con el principio FIFO?', 'Stack', 'Queue', 'Tree', 'Set', 2, '2025-11-28 18:00:00', NULL),
(116, '¿Qué devuelve la comparación 0 == \"0\"?', 'false', 'true', 'undefined', 'Error de sintaxis', 2, '2025-11-28 18:00:00', NULL),
(117, '¿Qué propiedad del DOM permite acceder al contenido de un elemento HTML?', 'innerValue', 'text()', 'innerHTML', 'getContent()', 3, '2025-11-28 18:00:00', NULL),
(118, '¿Qué hace el operador spread (...) en un array?', 'Divide el array en subarrays.', 'Combina dos arrays sin crear uno nuevo.', 'Expande los elementos del array en una lista individual.', 'Crea un array multidimensional.', 3, '2025-11-28 18:00:00', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `jspreguntas`
--
ALTER TABLE `jspreguntas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `jspreguntas`
--
ALTER TABLE `jspreguntas`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
COMMIT;



--
-- Indexes for dumped tables
--

--
-- Indexes for table `alcalde`
--
ALTER TABLE `alcalde`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alfonso_respuesta`
--
ALTER TABLE `alfonso_respuesta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calinesculistacompra`
--
ALTER TABLE `calinesculistacompra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `castanyera`
--
ALTER TABLE `castanyera`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `garcia`
--
ALTER TABLE `garcia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ideas`
--
ALTER TABLE `ideas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pallas`
--
ALTER TABLE `pallas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receta`
--
ALTER TABLE `receta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recurso`
--
ALTER TABLE `recurso`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sempertegui_pelicula`
--
ALTER TABLE `sempertegui_pelicula`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indexes for table `soares`
--
ALTER TABLE `soares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tarea`
--
ALTER TABLE `tarea`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alcalde`
--
ALTER TABLE `alcalde`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alfonso_respuesta`
--
ALTER TABLE `alfonso_respuesta`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calinesculistacompra`
--
ALTER TABLE `calinesculistacompra`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `castanyera`
--
ALTER TABLE `castanyera`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `garcia`
--
ALTER TABLE `garcia`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ideas`
--
ALTER TABLE `ideas`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pallas`
--
ALTER TABLE `pallas`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receta`
--
ALTER TABLE `receta`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recurso`
--
ALTER TABLE `recurso`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sempertegui_pelicula`
--
ALTER TABLE `sempertegui_pelicula`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soares`
--
ALTER TABLE `soares`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tarea`
--
ALTER TABLE `tarea`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;
COMMIT;
