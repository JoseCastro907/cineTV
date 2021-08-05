-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 16-07-2020 a las 15:45:57
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cinetv`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actors`
--

DROP TABLE IF EXISTS `actors`;
CREATE TABLE IF NOT EXISTS `actors` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruta_img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `actors`
--

INSERT INTO `actors` (`id`, `name`, `ruta_img`, `created_at`, `updated_at`) VALUES
(1, 'Angelina Jolie', 'imgs/actores/angelina.png', '2020-07-15 14:00:00', NULL),
(2, 'Brad Pitt', 'imgs/actores/brad.png', '2020-07-16 12:00:00', NULL),
(3, 'Emma Stone', 'imgs/actores/emma.png', '2020-07-16 13:00:00', NULL),
(4, 'Gwyneth Paltrow', 'imgs/actores/gwyneth.png', '2020-07-16 13:00:00', NULL),
(5, 'Jim Carrey', 'imgs/actores/jim.png', '2020-07-16 14:00:00', NULL),
(6, 'Keanu Reeves', 'imgs/actores/keanu.png', '2020-07-16 13:00:00', NULL),
(7, 'Keira Knightley', 'imgs/actores/keira.png', '2020-07-16 15:00:00', NULL),
(8, 'Meryl Streep', 'imgs/actores/meryl.png', '2020-07-16 15:00:00', NULL),
(9, 'Morgan Freeman', 'imgs/actores/morgan.png', '2020-07-16 13:00:00', NULL),
(10, 'Nicolas Cage', 'imgs/actores/nicolas.png', '2020-07-16 14:00:00', NULL),
(11, 'Robin williams', 'imgs/actores/robin.png', '2020-07-16 13:00:00', NULL),
(12, 'Scarlett Johansson', 'imgs/actores/scarlett.png', '2020-07-16 18:00:00', NULL),
(13, 'Tom Hanks', 'imgs/actores/tom.png', '2020-07-16 10:00:00', NULL),
(14, 'Will Smith', 'imgs/actores/will.png', '2020-07-16 12:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_elements`
--

DROP TABLE IF EXISTS `banner_elements`;
CREATE TABLE IF NOT EXISTS `banner_elements` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ruta_banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruta_imgTrapecio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `banner_elements`
--

INSERT INTO `banner_elements` (`id`, `ruta_banner`, `ruta_imgTrapecio`, `created_at`, `updated_at`) VALUES
(12, 'https://www.youtube.com/embed/ladClnnJhqg', 'imgs/trapezoide-desktop.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carousel_elements`
--

DROP TABLE IF EXISTS `carousel_elements`;
CREATE TABLE IF NOT EXISTS `carousel_elements` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruta_img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruta_imgSecundaria` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruta_video` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carousel_elements`
--

INSERT INTO `carousel_elements` (`id`, `name`, `ruta_img`, `ruta_imgSecundaria`, `descripcion`, `ruta_video`, `created_at`, `updated_at`) VALUES
(1, 'Thor', 'imgs/carousel/1.jpg', 'imgs/Thor.jpg', 'Premisa\\n\\nCuando los Elfos Oscuros intentan sumergir el universo en la oscuridad, Thor debe embarcarse en un viaje peligroso y personal que lo reunirá con la doctora Jane Foster.\\n\\nDirector: Alan Taylor\\n\\nWriters: Christopher L. Yost , Christopher Markus\\n\\nActors:  Chris Hemsworth, Natalie Portman, Tom Hiddleston', 'https://youtu.be/npvJ9FTgZbM', '2020-07-15 13:10:00', NULL),
(2, 'Avatar', 'imgs/carousel/2.jpg', 'imgs/Avatar.jpg', 'Premisa\\n\\nUn marine parapléjico enviado a la luna Pandora en una misión única se debate entre seguir sus órdenes y proteger el mundo que siente es su hogar.\\n\\n Director:James Cameron\\n\\nWriter: James Cameron\\n\\nActors: Sam Worthington, Zoe Saldana, Sigourney Weaver etc', 'https://www.youtube.com/watch?v=6ziBFh3V1aM', '2020-07-15 13:15:00', NULL),
(3, 'X-Men Días del futuro pasado', 'imgs/carousel/3.jpg', 'imgs/x-men.jpg', 'Premisa\\n\\nLos X-Men envían a Wolverine al pasado en un esfuerzo desesperado por cambiar la historia y evitar un evento que resulte en la muerte tanto para humanos como para mutantes.\\n\\nDirector: Bryan Singer\\n\\nWriters: Simon Kinberg, Jane Goldman\\n\\nActors: Patrick Stewart, Ian McKellen, Hugh Jackman\r\nDark Phoenix', 'https://www.youtube.com/watch?v=-fzkF-oOKS8', '2020-07-15 13:20:00', NULL),
(4, 'Star wars Revenge of the sith', 'imgs/carousel/4.jpg', 'imgs/Starwar.jpg', 'Premisa\\n\\nTres años después de las Guerras Clon, los Jedi rescatan a Palpatine del Conde Dooku. Mientras Obi-Wan persigue una nueva amenaza, Anakin actúa como un agente doble entre el Consejo Jedi y Palpatine y se ve atraída hacia un siniestro plan para gobernar la galaxia.\\n\\nDirector: George Lucas\\n\\nWriters: George Lucas\\n\\nActors:  Hayden Christensen, Natalie Portman, Ewan McGregor', 'https://www.youtube.com/watch?v=NkWgoPRT2Cs', '2020-07-15 13:25:00', NULL),
(5, 'Dark Phoenix', 'imgs/carousel/5.jpg', 'imgs/Darkphoenix.jpg', 'Premisa\\n\\nJean Gray comienza a desarrollar poderes increíbles que la corrompen y la convierten en un Fénix oscuro, lo que hace que los X-Men decidan si su vida vale más que toda la humanidad\\n\\nDirector:  Simon Kinberg\\n\\nWriters:  Simon Kinberg\\n\\nActors:  James McAvoy, Michael Fassbender, Jennifer Lawrence', 'https://www.youtube.com/watch?v=1-q8C_c-nlM', '2020-07-15 13:20:00', NULL),
(6, 'Capitan America: Civil War', 'imgs/carousel/6.jpg', 'imgs/civilwar.jpg', 'Premisa\\n\\nLa participación política en los asuntos de los Vengadores causa una brecha entre el Capitán América y Iron Man.\\n\\nDirector: Anthony Russo, Joe Russo\\n\\nWriters:  Christopher Markus,\r\nStephen McFeely, Joe Simon and  Jack Kirby\\n\\nActors:  Chris Evans, Robert Downey Jr., Scarlett Johansson', 'https://www.youtube.com/watch?v=dKrVegVI0Us', '2020-07-15 13:25:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `featured_elements`
--

DROP TABLE IF EXISTS `featured_elements`;
CREATE TABLE IF NOT EXISTS `featured_elements` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ruta_img1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruta_img2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruta_img3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `featured_elements`
--

INSERT INTO `featured_elements` (`id`, `ruta_img1`, `ruta_img2`, `ruta_img3`, `created_at`, `updated_at`) VALUES
(1, 'imgs/civilwar.jpg', 'imgs/Avatar.jpg', 'imgs/Darkphoenix.jpg', '2020-07-15 13:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_08_035953_create_banner_elements_table', 1),
(5, '2020_07_08_041134_create_carousel_elements_table', 1),
(6, '2020_07_08_041548_create_featured_elements_table', 1),
(7, '2020_07_08_042029_create_actors_1_table', 1),
(8, '2020_07_08_042047_create_actors_2_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`) USING HASH
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
