--
-- Database: `sphinx_01`
--
CREATE DATABASE `sphinx_01`;
USE `sphinx_01`;

CREATE TABLE IF NOT EXISTS `personas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `observaciones` text,
  `grupo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

INSERT INTO `personas` (`id`, `nombre`, `apellido`, `fecha_nacimiento`, `observaciones`, `grupo_id`) VALUES
(1, 'diego', 'sapriza', '1977-12-19', 'amarillo azul verde', 1),
(2, 'juan diego', 'perez Rojo', '1978-05-26', 'negro rojo verde', 2),
(3, 'teresa', 'aguerre', '1980-05-05', 'violeta rojo azul', 1),
(4, 'federica', 'Sapriza Pérez', '2012-02-05', 'blanco azul rojo', 2);
