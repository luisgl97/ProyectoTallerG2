-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 04, 2021 at 03:59 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `img` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo1` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo2` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo3` text COLLATE utf8_spanish_ci NOT NULL,
  `estilo` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `ruta`, `img`, `titulo1`, `titulo2`, `titulo3`, `estilo`, `fecha`) VALUES
(1, 'sin-categoria', 'vistas/img/banner/1.jpg', '{\r\n	\"texto\": \"OFERTAS ESPECIALES\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n	\"texto\": \"50% off\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n	\"texto\": \"Termina el 21 de Mayo\",\r\n	\"color\": \"#fff\"\r\n}', 'textoDer', '2021-04-03 15:54:24'),
(2, 'articulos-gratis', 'vistas/img/banner/gratis.jpeg', '{\r\n	\"texto\": \"ARTÍCULOS GRATIS\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n\r\n	\"texto\": \"¡Por la compra de productos seleccionados!\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', '{\r\n	\"texto\": \"Disfrútalo\",\r\n	\"color\": \"#fff\"\r\n}', 'textoCentro', '2021-04-03 16:06:23'),
(3, 'lo-mas-vendido', 'vistas/img/banner/mas-vendidos.jpg', '{\r\n	\"texto\": \"LO MAS VENDIDO\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n\r\n	\"texto\": \"Productos con mas demanda\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', '{\r\n	\"texto\": \"Compra Ahora\",\r\n	\"color\": \"#fff\"\r\n}', 'textoCentro', '2021-04-03 16:06:33'),
(4, 'lo-mas-visto', 'vistas/img/banner/mas-visto.jpeg', '{\r\n	\"texto\": \"LO MAS VISTO\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n\r\n	\"texto\": \"Los productos mas buscados\",\r\n\r\n	\"color\": \"#fff\"\r\n\r\n}', '{\r\n	\"texto\": \"Compra Ahora\",\r\n	\"color\": \"#fff\"\r\n}', 'textoIzq', '2021-04-03 16:09:24');

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `ruta`, `fecha`) VALUES
(1, 'VIDEOJUEGOS', 'videojuegos', '2021-04-01 03:09:43'),
(2, 'CONSOLAS', 'consolas', '2021-04-01 03:34:14'),
(3, 'ACCESORIOS', 'accesorios', '0000-00-00 00:00:00'),
(4, 'GIFT CARDS', 'gift-cards', '2021-04-02 05:46:35'),
(5, 'COLECCIONABLES', 'coleccionables', '2021-04-01 03:35:04');

-- --------------------------------------------------------

--
-- Table structure for table `plantilla`
--

CREATE TABLE `plantilla` (
  `id` int(11) NOT NULL,
  `barraSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `textoSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `colorFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `colorTexto` text COLLATE utf8_spanish_ci NOT NULL,
  `logo` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `redesSociales` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `plantilla`
--

INSERT INTO `plantilla` (`id`, `barraSuperior`, `textoSuperior`, `colorFondo`, `colorTexto`, `logo`, `icono`, `redesSociales`, `fecha`) VALUES
(1, '#000000', '#ffffff', '#00ffff', '#000000', 'vistas/img/plantilla/logo.png', 'vistas/img/plantilla/icono.ico', '[{\r\n		\"red\": \"fa-facebook\",\r\n		\"estilo\": \"facebookBlanco\",\r\n		\"url\": \"http://facebook.com/\"\r\n	}, {\r\n		\"red\": \"fa-youtube\",\r\n		\"estilo\": \"youtubeBlanco\",\r\n		\"url\": \"http://youtube.com/\"\r\n	}, {\r\n		\"red\": \"fa-twitter\",\r\n		\"estilo\": \"twitterBlanco\",\r\n		\"url\": \"http://twitter.com/\"\r\n	},{\r\n		\"red\": \"fa-google-plus\",\r\n		\"estilo\": \"googleBlanco\",\r\n		\"url\": \"http://google.com/\"\r\n	}, {\r\n		\"red\": \"fa-instagram\",\r\n		\"estilo\": \"instagramBlanco\",\r\n		\"url\": \"http://instagram.com/\"\r\n	}\r\n\r\n]', '2021-04-03 16:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_subcategoria` int(11) NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `titular` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `multimedia` text COLLATE utf8_spanish_ci NOT NULL,
  `detalles` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  `portada` text COLLATE utf8_spanish_ci NOT NULL,
  `vistas` int(11) NOT NULL,
  `ventas` int(11) NOT NULL,
  `vistasGratis` int(11) NOT NULL,
  `ventasGratis` int(11) NOT NULL,
  `ofertadoPorCategoria` int(11) NOT NULL,
  `ofertadoPorSubCategoria` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `nuevo` int(11) NOT NULL,
  `peso` float NOT NULL,
  `entrega` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `id_subcategoria`, `tipo`, `ruta`, `titulo`, `titular`, `descripcion`, `multimedia`, `detalles`, `precio`, `portada`, `vistas`, `ventas`, `vistasGratis`, `ventasGratis`, `ofertadoPorCategoria`, `ofertadoPorSubCategoria`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `nuevo`, `peso`, `entrega`, `fecha`) VALUES
(1, 1, 1, 'fisico', 'tekken7', 'tekken7', 'Tekken 7', 'Tekken7', '[{\"foto\":\"vistas/img/multimedia/videojuegos/ps4/tekken7/tekken7-1.jpg\"}, {\"foto\":\"vistas/img/multimedia/videojuegos/ps4/tekken7/tekken7-1.jpg\"},  {\"foto\":\"vistas/img/multimedia/videojuegos/ps4/tekken7/tekken7-1.jpg\"}]\r\n', '', 29, 'vistas/img/productos/videojuegos/ps4/tekken7/tekken7-1.jpg', 22, 1, 1, 1, 1, 1, 1, 11, 1, 'vistas/img/ofertas/', '2021-04-07 20:49:20', 1, 1, 1, '2021-04-03 21:23:48'),
(2, 1, 1, 'fisico', 'god-of-war', 'god of war', 'accion', 'Es un nuevo comienzo para Kratos. Viviendo como un hombre fuera de la sombra de los dioses, se aventura en la brutal selva nórdica con su hijo Atreus, luchando por cumplir una búsqueda profundamente personal.\r\n\r\nDesde Santa Monica Studio y el director creativo Cory Barlog llega un nuevo comienzo para uno de los íconos más reconocibles de los juegos. Viviendo como un hombre fuera de la sombra de los dioses, Kratos debe adaptarse a tierras desconocidas, amenazas inesperadas y una segunda oportunidad de ser padre. Junto con su hijo Atreus, la pareja se aventurará en la brutal selva nórdica y luchará para cumplir una búsqueda profundamente personal.', '[{\"foto\":\"vistas/img/multimedia/videojuegos/playstation4/god-of-war/god-of-war.jpg\"}]', '', 29, 'vistas/img/productos/videojuegos/playstation4/god-of-war/god-of-war.jpg', 4, 403, 0, 0, 0, 0, 1, 1, 40, 'vistas/img/ofertas/', '2021-04-15 21:37:10', 0, 1, 10, '2021-04-02 05:07:20'),
(3, 1, 1, 'fisico', 'uncharted', 'UNCHARTED THE NATHAN DRAKE', 'accion', 'De los innovadores narradores de Naughty Dog, llega la épica que define el género que revolucionó la narración de aventuras, reconstruida por Bluepoint Games con el poder del sistema PS4. Experimenta una de las series de juegos más veneradas de todos los tiempos mientras sigues el peligroso viaje de Nathan Drake por todo el mundo, desde humildes comienzos hasta descubrimientos extraordinarios. Conoce a un elenco inolvidable de personajes mientras Drake pone en juego la vida y la amistad en una carrera contra enemigos despiadados para descubrir tesoros inimaginables. UNCHARTED: The Nathan Drake Collection incluye las campañas de un jugador para UNCHARTED: Drake’s Fortune, UNCHARTED 2: Among Thieves y UNCHARTED 3: Drake’s Deception.', '[{\"foto\":\"vistas/img/multimedia/videojuegos/playstation4/UNCHARTED-THE-NATHAN-DRAKE/UNCHARTED-THE-NATHAN-DRAKE.jpg\"}]', '', 29, 'vistas/img/productos/videojuegos/playstation4/\r\nUNCHARTED-THE-NATHAN-DRAKE/UNCHARTED-THE-NATHAN-DRAKE.jpg', 6, 402, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-02 05:07:18'),
(4, 1, 1, 'fisico', 'star-wars', 'STAR WARS JEDI FALLEN ORDER', 'accion', 'Una aventura de galaxias te espera en Star Wars Jedi: Fallen Order, un nuevo título de acción y aventura en tercera persona de Respawn Entertainment. Este juego para un solo jugador narrativo te pone en el papel de un Padawan Jedi que escapó por poco de la purga de la Orden 66 después de los eventos del Episodio 3: La Venganza de los Sith. En una búsqueda para reconstruir la Orden Jedi, debes recoger las piezas de tu pasado destrozado para completar tu entrenamiento, desarrollar nuevas habilidades poderosas de la Fuerza y ​​dominar el arte del icónico sable de luz, todo mientras te mantienes un paso por delante del Imperio y su Inquisidores mortales. Mientras dominan sus habilidades, los jugadores participarán en sables de luz cargados cinematográficamente y combates de la Fuerza diseñados para ofrecer el tipo de intensas batallas de sables de luz de Star Wars como se ve en las películas. Los jugadores deberán acercarse estratégicamente a los enemigos, evaluando las fortalezas y debilidades mientras utilizan inteligentemente su entrenamiento Jedi para vencer a sus oponentes y resolver los misterios que se encuentran en su camino. Los fanáticos de Star Wars reconocerán ubicaciones icónicas, armas, equipo y enemigos al mismo tiempo que se encontrarán con una lista de nuevos personajes, ubicaciones, criaturas, droides y adversarios nuevos en Star Wars. Como parte de esta auténtica historia de Star Wars, los fanáticos ', '[{\"foto\":\"vistas/img/multimedia/videojuegos/playstation4/STAR-WARS-JEDI-FALLEN-ORDER/STAR-WARS-JEDI-FALLEN-ORDER.jpg\"}]', '', 29, 'vistas/img/productos/videojuegos/playstation4/STAR-WARS-JEDI-FALLEN-ORDER/STAR-WARS-JEDI-FALLEN-ORDER.jpg', 7, 402, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-02 05:07:17'),
(5, 1, 2, 'fisico', 'spider-man', 'SPIDER-MAN MILES MORALES', 'accion', 'Experimenta el apogeo de Miles Morales a medida que el nuevo héroe domina los nuevos poderes explosivos e increíbles para convertirse en su propio Spider-Man.\r\n\r\nLa versión Ultimate Edition incluye un código de cupón para Marvel’s Spider-Man: Remastered . Podrás experimentar la historia completa hasta este punto, que incluye la remasterización del juego original y las tres entregas del   contenido descargable Marvel’s Spider-Man: The City That Never Sleeps para que puedas jugar el arco narrativo completo.\r\n\r\nEl remaster de la PS5 no es una simple actualización, ya que muchos de los recursos artísticos del juego se han actualizado por completo para aprovechar la potencia de la consola PS5. Verás personajes más atractivos con piel, ojos, cabello y animación facial mejorados (incluido nuestro nuevo Peter Parker de próxima generación). También verás reflejos trazados por rayos y sombras ambientales, iluminac', '[{\"foto\":\"vistas/img/multimedia/videojuegos/playstation5/SPIDER-MAN-MILES-MORALES/SPIDER-MAN-MILES-MORALES.jpg\"}]', '', 45, 'vistas/img/productos/videojuegos/playstation5/SPIDER-MAN-MILES-MORALES/SPIDER-MAN-MILES-MORALES.jpg', 5, 402, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-02 05:07:15'),
(6, 1, 2, 'fisico', 'sackboy', 'SACKBOY A BIG ADVENTURE', 'infantil', 'Sackboy, el emblemático héroe de PlayStation®, vuelve a la acción con una aventura de plataformas multijugador gigante, divertida, frenética y en 3D. ¡Y con una nueva y provocadora actitud sackadísima!\r\n\r\nY esto es lo que sucede:\r\n\r\nEl malvado Vex (un ser casi mítico nacido nada menos que del miedo y del caos) secuestró a los amigos de Sackboy y los obligó a construir el Ponepatas Pararriba.\r\n\r\nEste diabólico y mortal dispositivo hará que Mundo Artesano pase de ser una tierra fantástica de pura imaginación y sueños inocentes a… un paisaje desolado lleno de pesadillas. ¡Ay, qué terrible!\r\n\r\nPero las leyendas hablan de una profecía originada en lo más profundo de la orden de los Caballeros Tejidos, los protectores legendarios de Mundo Artesano. Solo los valientes, intrépidos, caballerosos y, obviamente, galantes pueden salvar al mundo en una carrera contra el tiempo casi demasiado dramática para ponerla en palabras y plagada de peligros. Tantos peligros.\r\n\r\nAventúrate a solas o con tus amigos más valientes a un torbellino de andanzas a través de las montañas más nevadas, las selvas más enmarañadas, los reinos submarinos más mojados y, eh, las colonias espaciales más espaciosas.\r\n\r\nDerrota a Vex. Salva a los sackianos. Salva al mundo. Es hora de cumplir con tu destino, Sackboy. Del chico maravilla lanudo y héroe de arpillera… se alza nuestro Caballero Tejido.', '[{\"foto\":\"vistas/img/multimedia/videojuegos/playstation5/SACKBOY-A-BIG-ADVENTURE/SACKBOY-A-BIG-ADVENTURE.jpg\"}]', '', 29, 'vistas/img/productos/videojuegos/playstation5/SACKBOY-A-BIG-ADVENTURE/SACKBOY-A-BIG-ADVENTURE.jpg', 5, 402, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-02 05:07:13'),
(7, 1, 2, 'fisico', 'just-dance', 'JUST DANCE 2021', 'baile', 'Just Dance 2021 es el juego de baile definitivo, con 40 nuevos éxitos como «Don’t Start Now» de Dua Lipa, «Feel Special» de TWICE y «Señorita» de Shawn Mendes & Camila Cabello. ¡Monta una fiesta y baila con famila y amigos!\r\n', '[{\"foto\":\"vistas/img/multimedia/videojuegos/playstation5/JUST-DANCE-2021/JUST-DANCE-2021.jpg\"}]', '', 29, 'vistas/img/productos/videojuegos/playstation5/JUST-DANCE-2021/JUST-DANCE-2021.jpg', 7, 402, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-02 03:10:00'),
(8, 1, 3, 'fisico', 'super-mario-odyssey', 'SUPER MARIO ODYSSEY', 'aventura', 'Una aventura cautivadora\r\n\r\nExplora lugares increíbles lejos del Reino Champiñón mientras te unes a Mario y su nuevo aliado Cappy en una aventura en 3D masiva y trotamundos. ¡Usa nuevas y sorprendentes habilidades, como el poder de capturar y controlar objetos, animales y enemigos, para recolectar Power Moons para poder impulsar la aeronave Odyssey y salvar a Princess Peach de los planes de boda de Bowser!', '[{\"foto\":\"vistas/img/multimedia/videojuegos/nintendoSwitch/SUPER-MARIO-ODYSSEY-1/SUPER-MARIO-ODYSSEY-1.jpg\"}]', '', 29, 'vistas/img/productos/videojuegos/nintendoSwitch/SUPER-MARIO-ODYSSEY-1/SUPER-MARIO-ODYSSEY-1.jpg', 5, 402, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-02 03:16:14'),
(9, 1, 3, 'fisico', 'pokemon-sword', 'POKEMON SWORD', 'aventura', 'Una nueva generación de Pokémon llegará al sistema Nintendo Switch. ¡Conviértete en Entrenador Pokémon y emprende un nuevo viaje en la nueva región de Galar! Elige uno de los tres nuevos Pokémon socios: Grookey, Scorbunny o Sobble. En esta aventura completamente nueva, encontrarás Pokémon nuevos y familiares a medida que atrapes, luchas e intercambias Pokémon mientras exploras nuevas áreas y descubres una historia completamente nueva. Prepárate para la próxima aventura Pokémon en los juegos Pokémon Sword y Pokémon Shield.', '[{\"foto\":\"vistas/img/multimedia/videojuegos/nintendoSwitch/POKEMON-SWORD/POKEMON-SWORD.jpg\"}]', '', 28, 'vistas/img/productos/videojuegos/nintendoSwitch/POKEMON-SWORD/POKEMON-SWORD.jpg', 5, 396, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-02 05:07:11'),
(10, 1, 3, 'fisico', 'mario-kart-8', 'MARIO KART 8 DELUXE', 'carrera', '¡Sal a la carretera con la versión definitiva de Mario Kart 8 y juega en cualquier momento y en cualquier lugar! Compite con tus amigos o lucha en un modo de batalla revisado en campos de batalla nuevos y antiguos. Juega localmente en el modo multijugador de hasta 4 jugadores en 1080p mientras juega en modo TV. Todas las pistas de la versión de Wii U, incluido el DLC, hacen un regreso emocionante. ¡Además, los Inklings aparecen como nuevos personajes invitados, junto con los favoritos que regresan, como King Boo, Dry Bones y Bowser Jr.!', '[{\"foto\":\"vistas/img/multimedia/videojuegos/nintendoSwitch/MARIO-KART-8-DELUXE/MARIO-KART-8-DELUXE.jpg\"}]', '', 29, 'vistas/img/productos/videojuegos/nintendoSwitch/MARIO-KART-8-DELUXE/MARIO-KART-8-DELUXE.jpg', 6, 402, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-02 03:24:30'),
(11, 1, 3, 'fisico', 'fifa20', 'FIFA20', 'deporte', 'Desarrollado por Frostbite, EA SPORTS FIFA 20 da vida a The World’s Game como nunca antes. EA SPORTS FIFA 20 Legacy Edition se lanza el 27 de septiembre en Nintendo Switch con los últimos kits, clubes y escuadrones de algunas de las principales ligas del mundo. También contará con algunos de los estadios más famosos del mundo, incluidos algunos nuevos en FIFA 20. Las características y modos de juego tendrán paridad con FIFA 19 en Nintendo Switch.\r\n\r\nJUEGO: FIFA 20 Legacy Edition contará con la misma innovación de juego de FIFA 19 sin ningún nuevo desarrollo o mejoras significativas.\r\n\r\nPRESENTACIÓN: FIFA 20 Legacy Edition contará con una identidad visual actualizada con un nuevo diseño en el front-end y pantallas de menú. Los paquetes de superposición de transmisión se actualizarán en todos los modos.', '[{\"foto\":\"vistas/img/multimedia/videojuegos/nintendoSwitch/FIFA-20/FIFA-20.jpg\"}]', '', 29, 'vistas/img/productos/videojuegos/nintendoSwitch/FIFA-20/FIFA-20.jpg', 7, 402, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-04 14:48:51'),
(12, 1, 3, 'fisico', 'ctr-nitro-fueled', 'CTR CRASH TEAM RACING NITRO ', 'carrera', '¡Crash™ vuelve al volante! Prepárate para desmelenarte con la auténtica experiencia de CTR y mucho más contenido remasterizado a tope de revoluciones!\r\n\r\nCalienta motores con los modos de juego, personajes, circuitos, potenciadores, armas y controles originales\r\nSuperderrapa hacia la gloria con karts, arenas y circuitos adicionales de Crash™ Nitro Kart\r\nCompite online con tus amigos y arrasa con la competencia en los marcadores\r\nPersonaliza tu vehículo y tu personaje con objetos para karts y aspectos de locura\r\nQue no decaiga la competición con contenido y desafíos nuevos en los Grandes Premios después del lanzamiento\r\nEn Crash™ Team Racing Nitro-Fueled, el riesgo es elevado y los rivales muy duros. Es el CTR de siempre, pero a toda marcha', '[{\"foto\":\"vistas/img/multimedia/videojuegos/nintendoSwitch/CTR-CRASH-TEAM-RACING-NITRO-FUELED/CTR-CRASH-TEAM-RACING-NITRO-FUELED.jpg\"}]', '', 29, 'vistas/img/productos/videojuegos/nintendoSwitch/CTR-CRASH-TEAM-RACING-NITRO-FUELED/CTR-CRASH-TEAM-RACING-NITRO-FUELED.jpg', 7, 402, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-04 01:38:23'),
(13, 1, 4, 'fisico', 'jump-force', 'JUMP FORCE', 'lucha', 'Juego JUMP Force es un juego de combate y acción en 3D para Xbox One, PS4 y PC que tiene su principal atractivo en ofrecer un crossover de personajes y universos anime y manga basados en la prestigiosa publicación japonesa Shonen Jump. Se trata de la revista más famosa de Japón, y la cuna de las series más importantes de la historia, como Naruto, Dragon Ball, One Piece o Death Note.', '[{\"foto\":\"vistas/img/multimedia/videojuegos/xboxOne/JUMP-FORCE/JUMP-FORCE.webp\"}]', '', 34, 'vistas/img/productos/videojuegos/xboxOne/JUMP-FORCE/JUMP-FORCE.webp', 10, 402, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-02 23:43:16'),
(14, 1, 4, 'fisico', 'pes-2018', 'PRO EVOLUTION SOCCER PES 2018', 'deporte', '\r\nNinguna parte de PES 2018 se ha dejado intacta, ofreciéndote nuevas formas de jugar con una serie de mejoras de juego, Cooperativo en línea, Partida de selección aleatoria y una revisión completa de la presentación con modelos de jugadores realistas, nuevos menús e imágenes de jugadores reales. La calidad de juego de renombre mundial se ha afinado y refinado para recrear la autenticidad del hermoso juego, incluida una velocidad de juego más realista. El Dribbling estratégico le da al usuario un control significativamente mayor en posesión, con la adición de blindaje contextual para proteger la pelota, así como controles simples de palanca que activan movimientos realistas y sutiles para los defensores de los pies equivocados. \r\n ', '[{\"foto\":\"vistas/img/multimedia/videojuegos/xboxOne/PES-2018/PES-2018.webp\"}]', '', 29, 'vistas/img/productos/videojuegos/xboxOne/PES-2018/PES-2018.webp', 13, 402, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-02 03:32:07'),
(15, 1, 4, 'fisico', 'mortal-kombat-11', 'MORTAL KOMBAT 11', 'lucha', 'Mortal Kombat 11 es la nueva entrega de la violenta y salvaje saga de lucha. Se trata de la undécima secuela de una serie de títulos de combate y peleas de marcada estructura 2D, que en esta ocasión, además de añadir los mejores gráficos de la serie y el gore más descarnado en los llamados Fatality, presentará luchadores clásicos y nuevos, más modos de juego y una oferta online que quiere marcar un antes y un después en los eSports.', '[{\"foto\":\"vistas/img/multimedia/videojuegos/xboxOne/MORTAL-KOMBAT-11/MORTAL-KOMBAT-11.webp\"}]', '', 43, 'vistas/img/productos/videojuegos/xboxOne/MORTAL-KOMBAT-11/MORTAL-KOMBAT-11.webp', 8, 402, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-02 05:07:07'),
(16, 1, 4, 'fisico', 'need-for-speed', 'NEED FOR SPEED HEAT', 'carrera', 'Need for Speed Heat es la nueva entrega de conducción arcade de EA y Ghost Games. En esta ocasión, nos llevará a los jugadores a Palm City, el nuevo mundo abierto del videojuego, y el lugar donde los pilotos callejeros se reúnen para alcanzar la fama y el reconocimiento. Durante el día, todos los usuarios competirán en Speedhunters Showdown, una competición autorizada con la que poder ganar fondos con los que comprar mejores coches, así como personalizarlos al gusto. Sin embargo, al caer la noche, los jugadores se arriesgarán a competir en carreras ilegales a merced de las fuerzas policiales corruptas que intentarán darnos caza y quedarse con nuestras ganancias', '[{\"foto\":\"vistas/img/multimedia/videojuegos/xboxOne/NEED-FOR-SPEED-HEAT/NEED-FOR-SPEED-HEAT.webp\"}]', '', 35, 'vistas/img/productos/videojuegos/xboxOne/NEED-FOR-SPEED-HEAT/NEED-FOR-SPEED-HEAT.webp', 12, 402, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-04 14:48:45'),
(17, 2, 5, 'fisico', 'playstation-4', 'PlayStation 4', 'Consola Sony Playstation 4 1TB - Negro PS4 Slim Edition con almacenamiento de 1TB, un controlador inalámbrico', 'PlayStation te mantendrá enganchado durante horas.\r\n\r\nEsta PS4 es ligera y elegante y le proporcionará años de diversión expriences.\r\n\r\nEl paquete incluye:\r\n1 consola PlayStation 4 de 1 TB\r\n1 controlador inalámbrico DS 4 (solo 1 controlador incluido en el paquete)\r\nMono Earbud\r\nCable HDMI\r\nCable de alimentación de CA\r\nCable USB\r\nGalliumPi Dual PS4 Controlador de carga Dock', '[{\"foto\":\"vistas/img/multimedia/consolas/consola-ps4/ps4/ps4.jpg\"},{\"foto\":\"vistas/img/multimedia/consolas/consola-ps4/ps4/ps4_2.jpg\"}]', '', 500, 'vistas/img/productos/consolas/consola-ps4/ps4/ps4.jpg', 48, 400, 1, 1, 1, 1, 1, 469, 6, 'vistas/img/ofertas/', '2021-04-30 22:36:29', 1, 1, 10, '2021-04-03 23:23:04'),
(18, 2, 5, 'fisico', 'playstation-4-pack', 'PlayStation 4 Pack', 'CONSOLA PLAYSTATION 4 MEGA PACK 1: GRAND THEFT AUTO V + DAYS GONE + HORIZON + FORTNITE $20 (1TB)', 'PlayStation te mantendrá enganchado durante horas.\r\n\r\nEsta PS4 es ligera y elegante y le proporcionará años de diversión expriences.\r\n\r\nEl paquete incluye:\r\n1 consola PlayStation 4 de 1 TB\r\n1 controlador inalámbrico DS 4 (solo 1 controlador incluido en el paquete)\r\nMono Earbud\r\nCable HDMI\r\nCable de alimentación de CA', '[{\"foto\":\"vistas/img/multimedia/consolas/consola-ps4/ps4-pack/ps4-pack.jpg\"},{\"foto\":\"vistas/img/multimedia/consolas/consola-ps4/ps4-pack/ps4-pack_2.jpg\"}]', '', 550, 'vistas/img/productos/consolas/consola-ps4/ps4-pack/ps4-pack.jpg', 44, 400, 1, 1, 1, 1, 1, 185, 16, 'vistas/img/ofertas/', '2021-04-30 22:36:29', 1, 1, 10, '2021-04-02 05:12:19'),
(19, 2, 5, 'fisico', 'playstation-3', 'PlayStation 3', 'Playstation 3 320GB HW Bundle - Call of Duty: Modern Warfare 3', 'Paquete CALL OF DUTY MW3 de PlayStation 3: el sistema PlayStation 3 es la única consola de juegos que ofrece un sistema de entretenimiento completo de alta definición con un reproductor de Blu-ray incorporado, disco duro grande, Wi-Fi, los mejores videos de transmisión HD y películas y membresía gratuita de PlayStation Network para un sinfín de juegos multijugador.', '[{\"foto\":\"vistas/img/multimedia/consolas/consola-ps3/ps3/ps3.jpg\"},{\"foto\":\"vistas/img/multimedia/consolas/consola-ps3/ps3/ps3_2.jpg\"}]', '', 220, 'vistas/img/productos/consolas/consola-ps3/ps3/ps3.jpg', 46, 200, 1, 1, 1, 1, 1, 490, 11, 'vistas/img/ofertas/', '2021-04-30 22:36:29', 1, 1, 10, '2021-04-03 23:23:08'),
(20, 2, 5, 'fisico', 'playstation-5', 'PlayStation 5', 'PlayStation 5 Console', 'Velocidad de rayo: aprovecha la potencia de una CPU, GPU y SSD personalizados con I/O integrado que reescribe las reglas de lo que puede hacer una consola PlayStation.\r\nImpresionantes juegos: Marvel con gráficos increíbles y experimenta nuevas funciones de PS5.\r\nImpresionante inmersión – Descubre una experiencia de juego más profunda con soporte para retroalimentación táctil, disparadores adaptativos y tecnología de audio 3D.', '[{\"foto\":\"vistas/img/multimedia/consolas/consola-ps5/ps5/ps5.jpg\"},{\"foto\":\"vistas/img/multimedia/consolas/consola-ps5/ps5/ps5_2.jpg\"},{\"foto\":\"vistas/img/multimedia/consolas/consola-ps5/ps5/ps5_3.jpg\"}]', '', 1200, 'vistas/img/productos/consolas/consola-ps5/ps5/ps5.jpg', 31, 500, 1, 1, 1, 1, 1, 999, 13, 'vistas/img/ofertas/', '2021-04-30 22:36:29', 1, 1, 10, '2021-04-04 14:34:49'),
(21, 2, 6, 'fisico', 'nintendo-wii', 'Nintendo Wii', 'Consola Nintendo Wii Negra con Wii Sports Resort', 'Incluye mando a distancia, Wii nunchuk, barra de sensor, adaptador de CA, cable AV y juego de Wii Sports Resort\r\nLa familiaridad de un mando a distancia de TV, combinado con la tecnología de detección de movimiento hace que la experiencia sea perfecta.\r\nJuegos: experimenta cientos de juegos para la consola Wii\r\nEste producto renovado está probado y certificado para verse y funcionar como nuevo. El proceso de reacondicionamiento incluye pruebas de funcionalidad, limpieza básica, inspección y reempaque.', '[{\"foto\":\"vistas/img/multimedia/consolas/nintendo-wii/nintendo-wii-black/nintendo-wii.jpg\"},{\"foto\":\"vistas/img/multimedia/consolas/nintendo-wii/nintendo-wii-black/nintendo-wii.jpg\"}]\r\n', '', 260, 'vistas/img/productos/consolas/nintendo-wii/nintendo-wii-black/nintendo-wii.jpg', 20, 500, 1, 1, 1, 1, 1, 247, 5, 'vistas/img/ofertas/', '2021-04-30 22:36:29', 1, 1, 10, '2021-04-03 21:09:45'),
(22, 2, 6, 'fisico', 'nintendo-switch-consola', 'Nintendo Switch', 'Nintendo Switch Neon Blue y Neon Red + Mario Kart', 'Nintendo Switch Online se actualizará automáticamente después de 3 meses. Se aplican términos.\r\nCorre y lucha contra tus amigos en la versión definitiva del juego Mario Kart 8.', '[{\"foto\":\"vistas/img/multimedia/consolas/nintendo-switch/nintendo-switch-pack/nintendo-switch-pack.jpg\"},{\"foto\":\"vistas/img/multimedia/consolas/nintendo-switch/nintendo-switch-pack/nintendo-switch-pack_2.jpg\"}]', '', 500, 'vistas/img/productos/consolas/nintendo-switch/nintendo-switch-pack/nintendo-switch-pack.jpg', 20, 500, 1, 1, 1, 1, 1, 429, 14, 'vistas/img/ofertas/', '2021-04-30 22:36:29', 1, 1, 10, '2021-04-04 13:05:13'),
(23, 2, 7, 'fisico', 'xbox-360', 'Xbox 360 ', 'Xbox 360 250GB Slim Console', 'La XBox 360 está gobernada por una CPU basada en PowerPC y diseñada por IBM. Esta CPU funciona a a 3.2 GHz y consta de tres núcleos simétricos que pueden ejecutar dos hilos por hardware cada uno. Incorpora 512 MB de RAM de tipo GDDR3 a 700 Mhz, que le proporcionan un ancho de banda a memoria de 22.4 Gbps.', '[{\"foto\":\"vistas/img/multimedia/consolas/xbox-360/xbox-360-black/xbox-360-black.jpg\"},{\"foto\":\"vistas/img/multimedia/consolas/xbox-360/xbox-360-black/xbox-360-black.jpg\"}]', '', 200, 'vistas/img/multimedia/consolas/xbox-360/xbox-360-black/xbox-360-black.jpg', 15, 500, 1, 1, 1, 1, 1, 100, 50, 'vistas/img/ofertas/', '2021-04-30 22:36:29', 1, 1, 10, '2021-04-02 23:42:30'),
(24, 2, 7, 'fisico', 'xbox-one-s', 'Xbox One S', 'Xbox One S', 'Disfruta de los mayores éxitos de taquilla, las franquicias más populares y los clásicos de Xbox de tres generaciones de títulos favoritos a los que volver a jugar o que disfrutar por primera vez.', '[{\"foto\":\"vistas/img/multimedia/consolas/xbox-one/xbox-one-s/xbox-one-s.jpg\"}]', '', 1200, 'vistas/img/multimedia/consolas/xbox-one/xbox-one-s/xbox-one-s.jpg', 30, 500, 1, 1, 1, 1, 1, 999, 17, 'vistas/img/ofertas/', '2021-04-30 22:36:29', 1, 1, 10, '2021-04-02 23:42:53'),
(25, 4, 14, 'fisico', 'psn-10', 'Tarjeta PlayStation Network Card 10 USD', 'Tarjeta de Regalo', 'La PSN Card o también llamada PlayStation Network Card, te permite cargar saldo a tu monedero de PlayStation Store sin la necesidad de una tarjeta de crédito o débito. Ya que con el saldo cargado podrás comprar juegos, bundles, dlc’s y Playstation Plus.', '[{\"foto\":\"vistas/img/multimedia/gift-cards/psn/psn_10.jpg\"}]', '', 11, 'vistas/img/productos/gift-cards/psn/psn_10.jpg', 5, 1, 1, 1, 1, 1, 1, 10, 1, '', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-02 06:13:33'),
(26, 4, 14, 'fisico', 'psn-20', 'Tarjeta PlayStation Network Card 25 USD', 'Tarjeta de Regalo', 'La PSN Card o también llamada PlayStation Network Card, te permite cargar saldo a tu monedero de PlayStation Store sin la necesidad de una tarjeta de crédito o débito. Ya que con el saldo cargado podrás comprar juegos, bundles, dlc’s y Playstation Plus.', '[{\"foto\":\"vistas/img/multimedia/gift-cards/psn/psn_20.jpg\"}]', '', 21, 'vistas/img/productos/gift-cards/psn/psn_20.jpg', 3, 1, 1, 1, 1, 1, 1, 20, 1, '', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-02 06:13:34'),
(27, 4, 14, 'fisico', 'psn-50', 'Tarjeta PlayStation Network Card 50 USD', 'Tarjeta de Regalo', 'La PSN Card o también llamada PlayStation Network Card, te permite cargar saldo a tu monedero de PlayStation Store sin la necesidad de una tarjeta de crédito o débito. Ya que con el saldo cargado podrás comprar juegos, bundles, dlc’s y Playstation Plus.', '[{\"foto\":\"vistas/img/multimedia/gift-cards/psn/psn_50.jpg\"}]', '', 55, 'vistas/img/productos/gift-cards/psn/psn_50.jpg', 5, 1, 1, 1, 1, 1, 1, 50, 1, '', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-02 06:13:37'),
(28, 4, 14, 'fisico', 'ps-plus-12m', 'Suscripción PlayStation Plus 12 meses', 'Suscripción', 'PlayStation Plus es una suscripción de pago para poder jugar en línea y para acceder a varias ofertas especiales en la tienda virtual.', '[{\"foto\":\"vistas/img/multimedia/gift-cards/psplus/psplus_12meses.jpg\"}]', '', 11, 'vistas/img/multimedia/gift-cards/psplus/psplus_12meses.jpg', 5, 1, 1, 1, 1, 1, 1, 10, 1, '', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-04 13:09:42'),
(29, 4, 14, 'fisico', 'ps-plus-3m', 'Suscripción PlayStation Plus 3meses', 'Suscripción', 'PlayStation Plus es una suscripción de pago para poder jugar en línea y para acceder a varias ofertas especiales en la tienda virtual.', '[{\"foto\":\"vistas/img/multimedia/gift-cards/psplus/psplus_3meses.jpg\"}]', '', 11, 'vistas/img/multimedia/gift-cards/psplus/psplus_3meses.jpg', 5, 1, 1, 1, 1, 1, 1, 10, 1, '', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-04 13:09:24'),
(30, 4, 14, 'fisico', 'ps-plus-1m', 'Suscripción PlayStation Plus 1mes', 'Suscripción', 'PlayStation Plus es una suscripción de pago para poder jugar en línea y para acceder a varias ofertas especiales en la tienda virtual.', '[{\"foto\":\"vistas/img/multimedia/gift-cards/psplus/psplus_1mes.jpg\"}]', '', 11, 'vistas/img/productos/gift-cards/psplus/psplus_1mes.jpg', 5, 1, 1, 1, 1, 1, 1, 10, 1, '', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-04 13:09:29'),
(31, 4, 15, 'fisico', 'xbox-live-10', 'Tarjeta Xbox Live 10 USD', 'Tarjeta de Regalo', 'Con una tarjeta de regalo de Microsoft o Xbox, el afortunado destinatario podrá elegir el regalo que quiera. No hay fechas de ni cuotas y cualquier tarjeta puede utilizarse para comprar: Suscripciones como Xbox Live Gold, Xbox Game Pass y Xbox Game Pass Ultimate. Juegos, aplicaciones y complementos populares.', '[{\"foto\":\"vistas/img/multimedia/gift-cards/xbox/xbox_10.jpg\"}]', '', 11, 'vistas/img/multimedia/gift-cards/xbox/xbox_10.jpg', 5, 1, 1, 1, 1, 1, 1, 10, 1, '', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-03 23:39:43'),
(32, 4, 15, 'fisico', 'xbox-live-20', 'Tarjeta Xbox Live 20 USD', 'Tarjeta de Regalo', 'Con una tarjeta de regalo de Microsoft o Xbox, el afortunado destinatario podrá elegir el regalo que quiera. No hay fechas de ni cuotas y cualquier tarjeta puede utilizarse para comprar: Suscripciones como Xbox Live Gold, Xbox Game Pass y Xbox Game Pass Ultimate. Juegos, aplicaciones y complementos populares.', '[{\"foto\":\"vistas/img/multimedia/gift-cards/xbox/xbox_20.jpg\"}]', '', 11, 'vistas/img/multimedia/gift-cards/xbox/xbox_20.jpg', 5, 1, 1, 1, 1, 1, 1, 10, 1, '', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-03 03:05:01'),
(33, 4, 15, 'fisico', 'xbox-live-50', 'Tarjeta Xbox Live 50 USD', 'Tarjeta de Regalo', 'Con una tarjeta de regalo de Microsoft o Xbox, el afortunado destinatario podrá elegir el regalo que quiera. No hay fechas de ni cuotas y cualquier tarjeta puede utilizarse para comprar: Suscripciones como Xbox Live Gold, Xbox Game Pass y Xbox Game Pass Ultimate. Juegos, aplicaciones y complementos populares.', '[{\"foto\":\"vistas/img/multimedia/gift-cards/xbox/xbox_50.jpg\"}]', '', 11, 'vistas/img/multimedia/gift-cards/xbox/xbox_50.jpg', 6, 1, 1, 1, 1, 1, 1, 10, 1, '', '2021-04-23 00:47:31', 1, 1, 1, '2021-04-03 03:05:04'),
(34, 4, 15, 'fisico', 'xboxgold-1m', 'Suscripción Xbox Live Gold 1 mes', 'Suscripción', 'Con una suscripción a una cuenta de Xbox Live Gold, tendrás acceso a Games with Gold y a juegos gratuitos para Xbox One y Xbox 360, así como también Deals with Gold para Xbox One, que ofrece a los miembros descuentos exclusivos en juegos de Microsoft Store.', '[{\"foto\":\"vistas/img/multimedia/gift-cards/xboxlive/xboxlive_1mes.jpg\"}]', '', 46, 'vistas/img/multimedia/gift-cards/xboxlive/xboxlive_1mes.jpg', 1, 1, 1, 1, 1, 1, 1, 40, 6, '', '2021-04-08 01:17:46', 1, 1, 1, '2021-04-03 03:05:08'),
(35, 4, 15, 'fisico', 'xboxgold-3m', 'Suscripción Xbox Live Gold 3 meses', 'Suscripción', 'Con una suscripción a una cuenta de Xbox Live Gold, tendrás acceso a Games with Gold y a juegos gratuitos para Xbox One y Xbox 360, así como también Deals with Gold para Xbox One, que ofrece a los miembros descuentos exclusivos en juegos de Microsoft Store.', '[{\"foto\":\"vistas/img/multimedia/gift-cards/xboxlive/xboxlive_3meses.jpg\"}]', '', 46, 'vistas/img/multimedia/gift-cards/xboxlive/xboxlive_3meses.jpg', 1, 1, 1, 1, 1, 1, 1, 40, 6, '', '2021-04-08 01:17:46', 1, 1, 1, '2021-04-03 03:05:12'),
(36, 4, 15, 'fisico', 'xboxgold-12m', 'Suscripción Xbox Live Gold 12 meses', 'Suscripción', 'Con una suscripción a una cuenta de Xbox Live Gold, tendrás acceso a Games with Gold y a juegos gratuitos para Xbox One y Xbox 360, así como también Deals with Gold para Xbox One, que ofrece a los miembros descuentos exclusivos en juegos de Microsoft Store.', '[{\"foto\":\"vistas/img/multimedia/gift-cards/xboxlive/xboxlive_12meses.jpg\"}]', '', 46, 'vistas/img/multimedia/gift-cards/xboxlive/xboxlive_12meses.jpg', 1, 1, 1, 1, 1, 1, 1, 40, 6, '', '2021-04-08 01:17:46', 1, 1, 1, '2021-04-03 03:05:20'),
(37, 4, 16, 'fisico', 'googleplay-10', 'Tarjeta Google Play 10 USD', 'Tarjeta de Regalo', 'El crédito de las tarjetas puede ser usado para comprar los diferentes tipos de contenidos que nos ofrece Google Play: aplicaciones, libros, música y películas.', '[{\"foto\":\"vistas/img/multimedia/gift-cards/googleplay/googleplay_10.jpg\"}]', '', 0, 'vistas/img/multimedia/gift-cards/googleplay/googleplay_10.jpg', 2, 1, 1, 1, 1, 1, 0, 10, 1, '', '2021-04-30 01:24:47', 1, 1, 1, '2021-04-04 02:32:23'),
(38, 4, 16, 'fisico', 'googleplay-25', 'Tarjeta Google Play 25 USD', 'Tarjeta de Regalo', 'El crédito de las tarjetas puede ser usado para comprar los diferentes tipos de contenidos que nos ofrece Google Play: aplicaciones, libros, música y películas.', '[{\"foto\":\"vistas/img/multimedia/gift-cards/googleplay/googleplay_25.jpg\"}]', '', 30, 'vistas/img/multimedia/gift-cards/googleplay/googleplay_25.jpg', 8, 1, 1, 1, 1, 1, 1, 25, 1, '', '2021-04-30 01:24:47', 1, 1, 1, '2021-04-03 03:05:27'),
(39, 4, 16, 'fisico', 'googleplay-50', 'Tarjeta Google Play 10 USD', 'Tarjeta de Regalo', 'El crédito de las tarjetas puede ser usado para comprar los diferentes tipos de contenidos que nos ofrece Google Play: aplicaciones, libros, música y películas.', '[{\"foto\":\"vistas/img/multimedia/gift-cards/googleplay/googleplay_50.jpg\"}]', '', 60, 'vistas/img/multimedia/gift-cards/googleplay/googleplay_50.jpg', 8, 1, 1, 1, 1, 1, 1, 50, 1, '', '2021-04-30 01:24:47', 1, 1, 1, '2021-04-03 03:05:30'),
(40, 4, 17, 'fisico', 'nintendoeshop-5', 'Tarjeta Nintendo Eshop 5 USD', 'Tarjeta de Regalo', 'Las Nintendo eShop Cards son una alternativa rápida, fácil y segura a las tarjetas de crédito a la hora de comprar juegos y otros contenidos en Nintendo eShop de Wii U y de la familia de consolas Nintendo 3DS o en el sitio web oficial de Nintendo*', '[{\"foto\":\"vistas/img/multimedia/gift-cards/nintendoeshop/nintendoeshop_5.jpg\"}]', '', 0, 'vistas/img/multimedia/gift-cards/nintendoeshop/nintendoeshop_5.jpg', 8, 1, 2, 1, 1, 1, 0, 5, 1, '', '2021-04-30 01:24:47', 1, 1, 1, '2021-04-04 02:33:59'),
(41, 4, 17, 'fisico', 'nintendoeshop-25', 'Tarjeta Nintendo Eshop 25 USD', 'Tarjeta de Regalo', 'Las Nintendo eShop Cards son una alternativa rápida, fácil y segura a las tarjetas de crédito a la hora de comprar juegos y otros contenidos en Nintendo eShop de Wii U y de la familia de consolas Nintendo 3DS o en el sitio web oficial de Nintendo*', '[{\"foto\":\"vistas/img/multimedia/gift-cards/nintendoeshop/nintendoeshop_25.jpg\"}]', '', 26, 'vistas/img/multimedia/gift-cards/nintendoeshop/nintendoeshop_25.jpg', 9, 1, 1, 1, 1, 1, 0, 25, 1, '', '2021-04-30 01:24:47', 1, 1, 1, '2021-04-04 02:33:02'),
(42, 4, 17, 'fisico', 'nintendoeshop-99', 'Tarjeta Nintendo Eshop 99 USD', 'Tarjeta de Regalo', 'Las Nintendo eShop Cards son una alternativa rápida, fácil y segura a las tarjetas de crédito a la hora de comprar juegos y otros contenidos en Nintendo eShop de Wii U y de la familia de consolas Nintendo 3DS o en el sitio web oficial de Nintendo*', '[{\"foto\":\"vistas/img/multimedia/gift-cards/nintendoeshop/nintendoeshop_99.jpg\"}]', '', 100, 'vistas/img/multimedia/gift-cards/nintendoeshop/nintendoeshop_99.jpg', 9, 1, 1, 1, 1, 1, 1, 99, 1, '', '2021-04-30 01:24:47', 1, 1, 1, '2021-04-03 16:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `imgFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `tipoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `imgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloImgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloTextoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo1` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo2` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo3` text COLLATE utf8_spanish_ci NOT NULL,
  `boton` text COLLATE utf8_spanish_ci NOT NULL,
  `url` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `imgFondo`, `tipoSlide`, `imgProducto`, `estiloImgProducto`, `estiloTextoSlide`, `titulo1`, `titulo2`, `titulo3`, `boton`, `url`, `fecha`) VALUES
(1, 'vistas/img/slide/default/fondo-ps.jpg', 'slideOpcion1', 'vistas/img/slide/slide1/ps5.png', '{\"top\": \"15%\" ,\"right\": \"30%\" ,\"width\": \"20%\", \"height\":\"20%\"}', '{\"top\": \"20%\" ,\"right\": \"\" ,\"width\": \"40%\", \"left\":\"10%\"}', '{\"texto\": \"Play Station 5 Digital\" ,\"color\": \"#00ffff\"}', '{\"texto\": \"Comprala ahora\" ,\"color\": \"#fff\"}', '{\"texto\": \"Oferta 12%\" ,\"color\": \"#fff\"}', '<button class=\"btn btn-default backColor text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', '2021-04-03 21:30:38'),
(2, 'vistas/img/slide/default/fondo-ps.jpg', 'slideOpcion2', 'vistas/img/slide/slide2/psplus.jpg', '{\r\n	\"width\": \"40%\",\r\n	\"top\": \"5%\",\r\n	\"left\": \"10%\", \r\n        \"height\":\"40%\"\r\n}', '{\r\n	\"width\": \"40%\",\r\n	\"top\": \"15%\",\r\n	\"left\": \"\",\r\n	\"right\": \"15%\"\r\n}', '{\"texto\": \"Juegos del mes\" ,\"color\": \"#00ffff\"}', '{\"texto\": \"Play Station Plus\" ,\"color\": \"#fff\"}', '{\"texto\": \"Compra tu suscripcion aqui\" ,\"color\": \"#fff\"}', '<button class=\"btn btn-default backColor text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', '2021-04-03 21:30:59'),
(3, 'vistas/img/slide/default/nintendo-fondo.jpg', 'slideOpcion2', 'vistas/img/slide/slide3/mario2.png', '{\r\n	\"width\": \"20%\",\r\n	\"top\": \"5%\",\r\n	\"left\": \"15%\",\r\n	\"height\": \"20%\"\r\n}', '{\r\n	\"width\": \"40%\",\r\n	\"top\": \"15%\",\r\n	\"left\": \"\",\r\n	\"right\": \"15%\"\r\n}', '{\"texto\": \"Nintendo switch\" ,\"color\": \"#000000\"}', '{\"texto\": \"Oferta de 10%\" ,\"color\": \"#00ffff\"}', '{\"texto\": \"Comprala ahora\" ,\"color\": \"#000000\"}', '<button class=\"btn btn-default backColor text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', '2021-04-03 21:33:15'),
(4, 'vistas/img/slide/slide4/zelda-fondo.jpg', 'slideOpcion2', '', '{\r\n	\"width\": \"35%\",\r\n	\"top\": \"5%\",\r\n	\"left\": \"15%\",\r\n	\"right\": \"\"\r\n}', '{\r\n	\"width\": \"40%\",\r\n	\"top\": \"30%\",\r\n	\"left\": \"5%\",\r\n	\"right\": \"\"\r\n}', '{\"texto\": \"Yo no cumplo propositos,\" ,\"color\": \"#eee\"}', '{\"texto\": \"Yo desbloqueo logros\" ,\"color\": \"#eee\"}', '{\"texto\": \"\" ,\"color\": \"#888\"}', '', '', '2021-04-03 01:32:58');

-- --------------------------------------------------------

--
-- Table structure for table `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `subcategoria` text COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `subcategoria`, `id_categoria`, `ruta`, `fecha`) VALUES
(1, 'Playstation 4', 1, 'playstation4', '2021-04-01 03:12:05'),
(2, 'Playstation 5', 1, 'playstation5', '2021-04-01 03:12:21'),
(3, 'Nintendo Switch', 1, 'nintendo-switch', '2021-04-01 03:12:31'),
(4, 'Xbox One', 1, 'xbox-one', '2021-04-01 03:12:35'),
(5, 'Playstation', 2, 'playstation', '2021-04-01 03:43:50'),
(6, 'Nintendo', 2, 'nintendo', '2021-04-01 03:43:55'),
(7, 'Xbox', 2, 'xbox', '2021-04-01 03:44:00'),
(9, 'Audifonos', 3, 'audifonos', '2021-04-01 03:44:28'),
(10, 'Controles', 3, 'controles', '2021-04-01 03:44:33'),
(11, 'Micrófono', 3, 'microfono', '2021-04-01 03:44:38'),
(12, 'Cámara', 3, 'camara', '2021-04-01 03:44:42'),
(14, 'PSN', 4, 'psn', '2021-04-01 03:44:48'),
(15, 'Xbox', 4, 'xbox-cards', '2021-04-02 06:16:08'),
(16, 'Google Play', 4, 'google-play', '2021-04-01 03:45:01'),
(17, 'Nintendo', 4, 'nintendo-cards', '2021-04-02 06:31:38'),
(18, 'Hot Toys', 5, 'hot-toys', '2021-04-01 03:45:18'),
(19, 'Funkos', 5, 'funkos', '2021-04-01 03:45:28'),
(20, 'LEGO', 5, 'lego', '2021-04-01 03:45:32'),
(21, 'Amiibo', 5, 'amiibo', '2021-04-01 03:45:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
