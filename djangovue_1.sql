-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-06-2020 a las 16:41:29
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `djangovue_1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add category', 7, 'add_category'),
(20, 'Can change category', 7, 'change_category'),
(21, 'Can delete category', 7, 'delete_category'),
(22, 'Can add element', 8, 'add_element'),
(23, 'Can change element', 8, 'change_element'),
(24, 'Can delete element', 8, 'delete_element'),
(25, 'Can add type', 9, 'add_type'),
(26, 'Can change type', 9, 'change_type'),
(27, 'Can delete type', 9, 'delete_type');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_spanish2_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish2_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$PQO6NBpnzkPq$d1tMA875eretrciiqDeD4QD97oASEGlUGWB5w2lI3Nk=', '2020-06-18 16:35:57.869432', 1, 'admin', '', '', 'admin@prueba.com', 1, 1, '2020-06-18 16:35:14.464011'),
(2, 'pbkdf2_sha256$100000$0G2uN7S27cPT$ZjT+fDjnVQKG6vUsGADLQclOxr1EPSW93PH7+gktZH4=', NULL, 0, 'jessi20', '', '', '', 0, 1, '2020-06-19 20:54:52.024477');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_spanish2_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-06-18 16:38:08.762728', '1', 'Type object (1)', 1, '[{\"added\": {}}]', 9, 1),
(2, '2020-06-18 16:39:38.573642', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2020-06-18 16:39:52.439742', '2', 'Type object (2)', 1, '[{\"added\": {}}]', 9, 1),
(4, '2020-06-18 16:40:26.269081', '1', 'Element object (1)', 1, '[{\"added\": {}}]', 8, 1),
(5, '2020-06-18 20:21:07.971832', '2', 'elemento 1', 1, '[{\"added\": {}}]', 8, 1),
(6, '2020-06-18 20:21:30.935658', '3', 'Elemento 3', 1, '[{\"added\": {}}]', 8, 1),
(7, '2020-06-18 20:21:48.422582', '4', 'Elemento 4', 1, '[{\"added\": {}}]', 8, 1),
(8, '2020-06-19 20:54:52.433445', '2', 'jessi20', 1, '[{\"added\": {}}]', 4, 1),
(9, '2020-06-19 20:55:47.930445', '1', 'cate 1', 3, '', 7, 1),
(10, '2020-06-19 20:56:15.027581', '2', 'Ciencias de la computación', 1, '[{\"added\": {}}]', 7, 1),
(11, '2020-06-19 20:58:43.944829', '3', 'Cuidadanía Digital', 1, '[{\"added\": {}}]', 7, 1),
(12, '2020-06-19 21:01:29.475183', '3', 'Empresa', 2, '[{\"changed\": {\"fields\": [\"title\", \"url_clean\"]}}]', 7, 1),
(13, '2020-06-19 21:02:42.457317', '2', 'Canales de YouTube', 2, '[{\"changed\": {\"fields\": [\"title\", \"url_clean\"]}}]', 7, 1),
(14, '2020-06-19 21:02:50.250177', '3', 'Empresas', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 7, 1),
(15, '2020-06-19 21:03:05.402168', '4', 'Cursos', 1, '[{\"added\": {}}]', 7, 1),
(16, '2020-06-19 21:03:46.688548', '1', 'Platzi', 2, '[{\"changed\": {\"fields\": [\"title\", \"url_clean\"]}}]', 9, 1),
(17, '2020-06-19 21:04:17.298383', '2', 'Amazon', 2, '[{\"changed\": {\"fields\": [\"title\", \"url_clean\"]}}]', 9, 1),
(18, '2020-06-19 21:04:25.270854', '4', 'Apple', 1, '[{\"added\": {}}]', 9, 1),
(19, '2020-06-19 21:04:33.733634', '5', 'Google', 1, '[{\"added\": {}}]', 9, 1),
(20, '2020-06-19 21:04:45.068191', '6', 'WeChat', 1, '[{\"added\": {}}]', 9, 1),
(21, '2020-06-19 21:05:24.641909', '1', 'Tecnología', 2, '[{\"changed\": {\"fields\": [\"title\", \"url_clean\"]}}]', 9, 1),
(22, '2020-06-19 21:06:15.549097', '3', 'Desarrollo web', 2, '[{\"changed\": {\"fields\": [\"title\", \"url_clean\"]}}]', 7, 1),
(23, '2020-06-19 21:06:27.126913', '4', 'Aplicaciones móviles', 2, '[{\"changed\": {\"fields\": [\"title\", \"url_clean\"]}}]', 7, 1),
(24, '2020-06-19 21:06:43.014483', '5', 'Desarrollo de videojuegos', 1, '[{\"added\": {}}]', 7, 1),
(25, '2020-06-19 21:06:51.008328', '6', 'Finanzas', 1, '[{\"added\": {}}]', 7, 1),
(26, '2020-06-19 21:07:02.023285', '7', 'Emprendimiento', 1, '[{\"added\": {}}]', 7, 1),
(27, '2020-06-19 21:07:13.431721', '8', 'Datos y análisis', 1, '[{\"added\": {}}]', 7, 1),
(28, '2020-06-19 21:07:22.999726', '9', 'Diseño gráfico', 1, '[{\"added\": {}}]', 7, 1),
(29, '2020-06-19 21:07:42.378912', '10', 'Música', 1, '[{\"added\": {}}]', 7, 1),
(30, '2020-06-19 21:08:22.552892', '1', 'Desarrollo web', 2, '[{\"changed\": {\"fields\": [\"title\", \"url_clean\"]}}]', 9, 1),
(31, '2020-06-19 21:08:35.665071', '2', 'React', 2, '[{\"changed\": {\"fields\": [\"title\", \"url_clean\"]}}]', 9, 1),
(32, '2020-06-19 21:08:42.539283', '4', 'PHP', 2, '[{\"changed\": {\"fields\": [\"title\", \"url_clean\"]}}]', 9, 1),
(33, '2020-06-19 21:08:51.879277', '5', 'Python', 2, '[{\"changed\": {\"fields\": [\"title\", \"url_clean\"]}}]', 9, 1),
(34, '2020-06-19 21:09:14.858126', '6', 'Swift', 2, '[{\"changed\": {\"fields\": [\"title\", \"url_clean\"]}}]', 9, 1),
(35, '2020-06-19 21:09:27.559219', '7', 'Kotlin', 1, '[{\"added\": {}}]', 9, 1),
(36, '2020-06-19 21:09:31.834523', '7', 'Kotlin', 2, '[{\"changed\": {\"fields\": [\"url_clean\"]}}]', 9, 1),
(37, '2020-06-19 21:09:35.963660', '7', 'Kotlin', 2, '[]', 9, 1),
(38, '2020-06-19 21:09:48.548059', '8', 'Blender', 1, '[{\"added\": {}}]', 9, 1),
(39, '2020-06-19 21:10:08.589139', '9', 'Plan de negocios', 1, '[{\"added\": {}}]', 9, 1),
(40, '2020-06-19 21:10:21.342920', '10', 'Shopify', 1, '[{\"added\": {}}]', 9, 1),
(41, '2020-06-19 21:21:58.253224', '11', 'Seguridad informatica y forense', 1, '[{\"added\": {}}]', 9, 1),
(42, '2020-06-19 21:22:49.736436', '5', 'Alvaro Chirou', 1, '[{\"added\": {}}]', 8, 1),
(43, '2020-06-19 21:23:16.729788', '5', 'Alvaro Chirou', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 8, 1),
(44, '2020-06-19 21:24:30.125310', '12', 'Programación', 1, '[{\"added\": {}}]', 9, 1),
(45, '2020-06-19 21:24:32.010768', '6', 'Expertos en Android', 1, '[{\"added\": {}}]', 8, 1),
(46, '2020-06-19 21:25:16.569777', '13', 'Aplicaciones móviles', 1, '[{\"added\": {}}]', 9, 1),
(47, '2020-06-19 21:25:27.398535', '7', 'Apphive', 1, '[{\"added\": {}}]', 8, 1),
(48, '2020-06-19 21:25:57.916140', '10', 'Shopify', 3, '', 9, 1),
(49, '2020-06-19 21:26:01.790370', '8', 'Blender', 3, '', 9, 1),
(50, '2020-06-19 21:27:24.212306', '8', 'Bluuweb!', 1, '[{\"added\": {}}]', 8, 1),
(51, '2020-06-19 21:28:15.955352', '9', 'Cursos Android ANT', 1, '[{\"added\": {}}]', 8, 1),
(52, '2020-06-19 21:28:54.480344', '10', 'Invence Tech', 1, '[{\"added\": {}}]', 8, 1),
(53, '2020-06-19 21:29:31.651666', '5', 'Python', 3, '', 9, 1),
(54, '2020-06-19 21:29:36.718382', '7', 'Kotlin', 3, '', 9, 1),
(55, '2020-06-19 21:29:39.619241', '6', 'Swift', 3, '', 9, 1),
(56, '2020-06-19 21:29:43.466565', '2', 'React', 3, '', 9, 1),
(57, '2020-06-19 21:29:47.057121', '4', 'PHP', 3, '', 9, 1),
(58, '2020-06-19 21:29:50.507471', '9', 'Plan de negocios', 3, '', 9, 1),
(59, '2020-06-19 21:30:47.012590', '14', 'Comunicación', 1, '[{\"added\": {}}]', 9, 1),
(60, '2020-06-19 21:31:38.059778', '11', 'WhatsApp Messenger', 1, '[{\"added\": {}}]', 8, 1),
(61, '2020-06-19 21:32:10.985590', '12', 'Dropbox', 1, '[{\"added\": {}}]', 8, 1),
(62, '2020-06-19 21:32:35.352361', '13', 'Instagram', 1, '[{\"added\": {}}]', 8, 1),
(63, '2020-06-19 21:33:21.798442', '14', 'Spotify', 1, '[{\"added\": {}}]', 8, 1),
(64, '2020-06-19 21:33:47.612238', '15', 'Shazam', 1, '[{\"added\": {}}]', 8, 1),
(65, '2020-06-19 21:35:53.746852', '16', 'Desarrollo de Videojuegos con Unity', 1, '[{\"added\": {}}]', 8, 1),
(66, '2020-06-19 21:39:23.422456', '3', 'Desarrollo web', 3, '', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'listelement', 'category'),
(8, 'listelement', 'element'),
(9, 'listelement', 'type'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-06-18 16:29:34.422585'),
(2, 'auth', '0001_initial', '2020-06-18 16:29:42.847479'),
(3, 'admin', '0001_initial', '2020-06-18 16:29:44.804272'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-06-18 16:29:44.834194'),
(5, 'contenttypes', '0002_remove_content_type_name', '2020-06-18 16:29:45.510671'),
(6, 'auth', '0002_alter_permission_name_max_length', '2020-06-18 16:29:46.971886'),
(7, 'auth', '0003_alter_user_email_max_length', '2020-06-18 16:29:48.239043'),
(8, 'auth', '0004_alter_user_username_opts', '2020-06-18 16:29:48.303741'),
(9, 'auth', '0005_alter_user_last_login_null', '2020-06-18 16:29:48.800706'),
(10, 'auth', '0006_require_contenttypes_0002', '2020-06-18 16:29:48.821375'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2020-06-18 16:29:48.853736'),
(12, 'auth', '0008_alter_user_username_max_length', '2020-06-18 16:29:49.737838'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2020-06-18 16:29:49.823598'),
(14, 'listelement', '0001_initial', '2020-06-18 16:29:52.379572'),
(15, 'sessions', '0001_initial', '2020-06-18 16:29:53.423585');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `session_data` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('v3rh825giehvmvyv6zc3omc6v5qteqya', 'MGVlODNiZjNjMjVmMzA5NmMwOGVhZDhlMGEwNTY5Nzc1YjAyY2ZiMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNmFhMzVkZjUzNDMyNjc1M2E1MDA0YjIyZTQyY2UxYzViODA3YTY3In0=', '2020-07-02 16:35:57.929217');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listelement_category`
--

CREATE TABLE `listelement_category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `url_clean` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `listelement_category`
--

INSERT INTO `listelement_category` (`id`, `title`, `url_clean`) VALUES
(2, 'Canales de YouTube', 'channel_yt'),
(4, 'Aplicaciones móviles', 'app_m'),
(5, 'Desarrollo de videojuegos', 'des_vj'),
(6, 'Finanzas', 'finanzas_'),
(7, 'Emprendimiento', 'emprendimiento_'),
(8, 'Datos y análisis', 'd_a'),
(9, 'Diseño gráfico', 'd_g'),
(10, 'Música', 'music_');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listelement_element`
--

CREATE TABLE `listelement_element` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `url_clean` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `description` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `listelement_element`
--

INSERT INTO `listelement_element` (`id`, `title`, `url_clean`, `description`, `category_id`, `type_id`) VALUES
(5, 'Alvaro Chirou', 'ac', 'Canal dedicado a la seguridad informática', 2, 11),
(6, 'Expertos en Android', 'ex_an', 'Este canal tiene que ver con la programación. Encontrarás muchos videos sobre programación, especialmente Android, Java y Python.', 2, 12),
(7, 'Apphive', 'apphive_', 'En apphive estamos comprometidos en ayudar a emprendedores a crear su aplicación móvil para Android e IOS, puedes encontrar consejos para crear un app, tutoriales,  ideas de apps', 2, 13),
(8, 'Bluuweb!', 'bluuweb_', 'Bienvenido al canal de cursos de desarrollo web y programación!\r\nSoy Ignacio Gutiérrez y de una forma divertida seré tu instructor.\r\n\r\nSiempre he dicho que la práctica hace al maestro, la programación no es más que repetición y repetición, por lo tanto para comenzar solo tienes que atreverte a escribir tus primeras líneas de código, así perderás el miedo y cada vez será más y más sencillo adquirir la lógica de programación.\r\n\r\nSi tu idea es ser un programador web, te recomiendo seguir los siguientes consejos:\r\n\r\nPerseverancia: Trata de practicar todos los días y aunque no te resulte a la primera, volver a intentar. Nadie nace aprendiendo por lo tanto todos pasamos por el mismo proceso.\r\nPaciencia: Puede que al principio te agobie la idea de que no estás avanzando o peor aún que son demasiadas cosas por aprender y que jamás vamos a terminar. Pero tranquilo, el primer paso es escribir tu primer hola mundo... de ahí al infinito.\r\nSonríe y disfruta :)', 2, 1),
(9, 'Cursos Android ANT', 'cursos_ant', 'Cursos sobre android y sus herramientas para compilar, crear recursos, etcetera... Canal enfocado en aprender desde cero y con buenas practicas', 2, 13),
(10, 'Invence Tech', 'inv_tech', 'Tutoriales de diversos temas de tecnologia.', 2, 1),
(11, 'WhatsApp Messenger', 'what_app', 'Era innegable que debía estar aquí la reina de las reinas: esa aplicación que ha hecho vender móviles como ninguna. No concebimos un móvil sin su WhatsApp instalado; igual que tampoco concebimos un smartphone sin tarifa de datos y pantalla táctil.\r\n\r\nMuchas han sido las candidatas a destronarla, pero fue imposible: no hay una app más conocida, usada e instalada en Android que WhatsApp. Lo queramos o no, el top 1 es para ella.', 4, 14),
(12, 'Dropbox', 'drop_', 'Dropbox promete ser la herramienta universal de sincronizado y guardado de archivos en la nube. Y lo consigue: de esas aplicaciones móviles que merece la pena probar. Sobre todo para aquellos que cargan con la oficina a cuestas.', 4, 14),
(13, 'Instagram', 'inst_', 'Llegó a ser tan importante que hasta el mismísimo Zuckerberg la compró para su Facebook. Y ahí está, acumulando millones de descargas y de fotografías subidas mientras se reinventa de aplicación para compartir fotos a completa suite de comunicaciones.', 4, 14),
(14, 'Spotify', 'spo_', 'La aplicación móvil de Spotify (Android, iOS, Windows Phone) se ha actualizado para permitir un mayor streaming de música gratis. Eso sí, en la función básica solamente es posible escuchar las canciones de forma aleatoria; sin embargo, existe la posibilidad de contratar el servicio premium.', 10, 13),
(15, 'Shazam', 'shazam', 'Shazam es una gran aplicación que te permite identificar aquellas canciones que están sonando a tu alrededor y que tanto te gustan. Aquellas canciones que inundan tus sentidos pero que no sabes cómo se llaman. Solo tienes que conectar la app cuando el tema está sonando y, tras identificarla, puedes descargarla con cualquiera de las otras aplicaciones.', 10, 13),
(16, 'Desarrollo de Videojuegos con Unity', 'unity_', 'Unity es un motor o engine de creación de videojuegos. Este software se encarga de unir todo lo que utilizaremos en nuestro videojuego, modelos 2D o 3D (Curso Unity 3D y Curso Unity 2D), efectos de sonido, animaciones, música, físicas, interactividad, gameplay o jugabilidad para que puedes crear niveles y mundos de tu videojuego, para luego exportarlo para consolas, PC’s y celulares todo esto lo aprenderás en esta ruta de estudios que te ofrecemos en Platzi iniciando por este curso de Unity.', 5, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listelement_type`
--

CREATE TABLE `listelement_type` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `url_clean` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `listelement_type`
--

INSERT INTO `listelement_type` (`id`, `title`, `url_clean`) VALUES
(1, 'Desarrollo web', 'd_w'),
(11, 'Seguridad informatica y forense', 'seg_iyf'),
(12, 'Programación', 'prog'),
(13, 'Aplicaciones móviles', 'app_m'),
(14, 'Comunicación', 'comu');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `listelement_category`
--
ALTER TABLE `listelement_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `listelement_element`
--
ALTER TABLE `listelement_element`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listelement_element_category_id_a6a78c8b_fk_listeleme` (`category_id`),
  ADD KEY `listelement_element_type_id_fb64cc60_fk_listelement_type_id` (`type_id`);

--
-- Indices de la tabla `listelement_type`
--
ALTER TABLE `listelement_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `listelement_category`
--
ALTER TABLE `listelement_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `listelement_element`
--
ALTER TABLE `listelement_element`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `listelement_type`
--
ALTER TABLE `listelement_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `listelement_element`
--
ALTER TABLE `listelement_element`
  ADD CONSTRAINT `listelement_element_category_id_a6a78c8b_fk_listeleme` FOREIGN KEY (`category_id`) REFERENCES `listelement_category` (`id`),
  ADD CONSTRAINT `listelement_element_type_id_fb64cc60_fk_listelement_type_id` FOREIGN KEY (`type_id`) REFERENCES `listelement_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
