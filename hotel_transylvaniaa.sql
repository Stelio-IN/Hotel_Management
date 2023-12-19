-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 11-Maio-2023 às 07:05
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hotel_transylvania`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administradores`
--

DROP TABLE IF EXISTS `administradores`;
CREATE TABLE IF NOT EXISTS `administradores` (
  `Id` int NOT NULL,
  `Email_Admin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Senha_Admin` varchar(32) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Email_Admin` (`Email_Admin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `administradores`
--

INSERT INTO `administradores` (`Id`, `Email_Admin`, `Senha_Admin`) VALUES
(1, 'km@gmail.com', '123'),
(0, 'jm@gmail.com', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(20) NOT NULL,
  `Apelido` varchar(20) NOT NULL,
  `Nacionalidade` varchar(20) NOT NULL,
  `Genero` varchar(20) NOT NULL,
  `Endereço` varchar(20) NOT NULL,
  `Senha` varchar(20) NOT NULL,
  `Telefone` int NOT NULL,
  `BI` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Data_Nascimento` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Mes_de_Cadastro` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`Id`, `Nome`, `Apelido`, `Nacionalidade`, `Genero`, `Endereço`, `Senha`, `Telefone`, `BI`, `Email`, `Data_Nascimento`, `Mes_de_Cadastro`) VALUES
(8, 'Kaya', 'Maure', '', 'Feminino', 'Coop', '1234', 870092876, '123456', 'kaysmm23@gmail.com', '09-06-2003', 5),
(9, 'Zendaya', 'Coleman', 'MZ', 'Feminino', 'Coop', '1234', 876625241, '111234322', 'zecole@gmail.com', '09-05-2023', 5),
(10, 'Julia', 'Newman', '', 'Feminino', '1234565M', '1234', 123456, '12345', 'jnew@gmail.com', '10-05-2023', 5),
(11, 'Kris', 'Jenner', '', 'Feminino', 'Coop', '1234', 862251431, '1826267M', 'kj@gmail.com', '09-05-2023', 5),
(12, 'Bri', 'Kaya', '', 'Feminino', 'Coop', '1234', 87552432, '1234', 'bk@gmail.com', '23-05-2023', 5),
(13, 'vivan', 'lol', '', 'Feminino', 'Coop', '1234', 863376524, '12345', 'vv@gmail.com', '17-05-2023', 5),
(14, 'Kiara', 'Diana', '', 'Feminino', 'Coop', '1234', 863373653, '12345', 'kiadia@gmail.com', '01-05-2023', 5),
(15, 'Joy', 'Crookes', '', 'Feminino', 'Coop', '1234', 866652432, '123456', 'jc@gmail.com', '01-05-2023', 5),
(16, 'Beyonce', 'Knowles', '', 'Feminino', 'Coop', '1234', 873392872, '12342', 'beyk@gmail.com', '02-05-2023', 5),
(17, 'Jiana', 'Marques', '', 'Feminino', 'Coop', '123', 1234, '1253442', 'kmm@gmail.com', '02-05-2023', 5),
(18, 'iana', 'oi', '', 'Feminino', 'Coop', '1234', 876653423, '1234', 'ia@gmail.com', '01-05-2023', 5),
(19, 'Stelio', 'Hey', '', 'Feminino', 'Coop', '1234', 875542321, '89828792', 'sh@gmail.com', '01-05-2023', 5),
(20, 'Olivia', 'Pope', '', 'Feminino', 'Coop', '12345', 865592872, '172937253', 'op@gmail.com', '03-05-2023', 5),
(21, 'Deja', 'Vu', 'Moçambique', 'Feminino', 'Coop', 'Deja', 870091381, '123456', 'dv@gmail.com', '01-05-2023', 5),
(22, 'Yolanda', 'Mirror', '', '', 'Coop', 'Yolanda', 856654342, '123456', 'yom@gmail.com', '11-05-1999', 5),
(23, 'Raye', 'Jones', '', 'Feminino', 'Coop', 'Raye', 873392281, '123456', 'rj@gmail.com', '04-07-2004', 5),
(24, 'Mary', 'Jane', 'Moçambique', 'Feminino', 'Coop', 'Mary', 876652431, '12348376', 'mj@gmail.com', '09-05-2023', 5),
(25, 'Blue Ivy', 'Carter', 'Moçambique', 'Feminino', 'Coop', 'Blue Ivy', 856635241, '1234532', 'bic@gmail.com', '23-05-2001', 5),
(26, 'Belle', 'Brian', 'Moçambique', 'Feminino', 'Coop', 'Belle', 872253432, '12345', 'bb@gmail.com', '02-05-2023', 5),
(27, 'Gaga', 'Knowles', 'Moçambique', 'Feminino', 'Coop', '1234', 876652431, '1234', 'gg@gmail.com', '01-05-2023', 5),
(28, 'frfnrnfjr', 'rjfnrjnfjr', '', 'Feminino', 'erjfrjf', 'frfnrnfjr', 879905321, 'fnufref', 'crhfrf', '09-05-2023', 5),
(29, 'chhiey', 'heuhuiehf', 'Moçambique', 'Feminino', 'Coop', 'chhiey', 84763634, '8837272', 'ehdiyhehe', '09-05-2023', 5),
(30, 'Charlie', 'Benson', 'Moçambique', 'Feminino', 'Coop', 'Charlie', 865593873, '1234', 'cb@gmail.com', '07-05-2023', 5),
(31, 'jhha', 'mouss', 'Brazil', 'Feminino', 'Coop', '123', 839908763, '1237293', 'ksm@gmail.com', '09-05-2023', 5),
(32, 'Mpfemo', 'Pascoal', 'Angola', 'Outro', 'Coop', '123', 836654763, '123453', 'kaya.slime@gmail.com', '02-05-2023', 5),
(33, 'opps', 'maure', 'Moçambique', 'Feminino', 'Coop', '1234', 65372732, '638289', 'oppsmaure@gmail.com', '15-05-2023', 5),
(34, 'mayse', 'shy', 'Moçambique', 'Feminino', 'Coop', '1234', 85736276, '37828837', 'mayseshy@gmail.com', '15-05-2023', 5),
(35, 'iana', 'boston', 'EUA', 'Feminino', 'Coop', '123', 86337632, '3672636', 'ianabo@gmail.com', '07-05-2023', 5),
(36, 'iury', 'jameson', 'EUA', 'Feminino', 'Coop', '1234', 86559282, '12322', 'iuryj@gmail.com', '16-05-2023', 5),
(37, 'Oi', 'pessoa', 'Angola', 'Feminino', 'Coop', '123', 8652253, '12342', 'oipess@gmail.com', '14-05-2023', 5),
(38, 'oi', 'pessoa', 'Moçambique', 'Masculino', 'Coop', '123', 85273882, '1233223', 'oipes@gmail.com', '08-05-2023', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
CREATE TABLE IF NOT EXISTS `funcionarios` (
  `id_funcionario` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(20) NOT NULL,
  `Apelido` varchar(30) NOT NULL,
  `Status_Funcionario` tinyint(1) NOT NULL DEFAULT '1',
  `Nacionalidade` varchar(50) NOT NULL,
  `Genero` varchar(20) NOT NULL,
  `Endereço` varchar(30) NOT NULL,
  `Senha` varchar(30) NOT NULL,
  `Nr_De_Telefone` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `BI` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Data_Nascimento` varchar(30) NOT NULL,
  PRIMARY KEY (`id_funcionario`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id_funcionario`, `Nome`, `Apelido`, `Status_Funcionario`, `Nacionalidade`, `Genero`, `Endereço`, `Senha`, `Nr_De_Telefone`, `BI`, `Email`, `Data_Nascimento`) VALUES
(1, 'Diana', 'Mate', 1, '', 'Feminino', 'Coop', '1234', '873352614', '12345M', 'dianamate@gmail.com', '08-05-2023'),
(2, 'Sara', 'Joao', 1, '', 'Feminino', 'Coop', '1234', '853362514', '123456M', 'saraj@gmail.com', '01-05-2023'),
(3, 'Gina', 'Francisco', 0, '', 'Feminino', 'Coop', '1234', '126', '1234M', 'ginaf@gmail.com', '2023-38-08'),
(4, 'Kiana', 'Joao', 0, 'Nigeria', 'Coop', 'Coop', '1234', '836649281', '12345', 'kianaj@gmail.com', 'Angola'),
(5, 'Cintia', 'Lais', 0, 'Africa do SUl', 'Coop', 'Coop', '1234', '862253423', '1234567', 'cintialais@gmail.com', ''),
(6, 'Herio', 'Samuel', 1, '', 'Masculino', 'Coop', '1234', '983762733', '1234', 'hsamuel@gmail.com', '10-05-2023'),
(7, 'Lidia', 'Marcos', 1, '', 'Feminino', 'Coop', '1234', '857792082', '1234567', 'Oi', '16-05-2023'),
(8, 'Joao', 'Paulo', 0, 'EUA', 'Coop', 'Coop', '3456', '857792082', '1234567', 'jp@gmail.com', '09-05-2023'),
(9, 'Joaquina', 'Lopes', 1, '', 'Feminino', 'Coop', '1234', '862252431', '1234564', 'jlopes@gmail.com', '09-05-2023'),
(10, 'Juni', 'Craig', 1, '', 'Feminino', 'Coop', '1234', '862263542', '1226353', 'jc@gmail.com', '09-05-2023'),
(11, 'Jules', 'Sam', 1, '', 'Feminino', 'Coop', '1234', '12345', '1726538932', 'jsams@gmail.com', '09-05-2023'),
(12, 'Stella', 'Ribeiro', 1, '', 'Feminino', 'Coop', '1234', '85226351', '1234', 'sr@gmail.com', '02-05-2023'),
(13, 'jane', 'kehlani', 1, '', 'Feminino', 'Coop', '1234', '873309281', '1234567', 'jk@gmail.com', '01-05-2023'),
(14, 'jane', 'kehlani', 1, '', 'Feminino', 'Coop', '1234', '873309281', '1234567', 'jk@gmail.com', '01-05-2023'),
(15, 'dhfee', 'chdhye', 0, 'Angola', 'Feminino', 'coop', '1234', '87726321', '2861782', 'oop@gmail.com', '07-05-2023'),
(16, 'jeremias', 'mainato', 0, 'Moçambique', 'Masculino', 'Coop', '123', '867765352', '1562532M', 'jm22@gmail.com', '08-05-2023'),
(17, 'jeremias', 'mainato', 1, 'Moçambique', 'Coop', 'Coop', '123', '867765352', '1562532M', 'jm22@gmail.com', '09-05-2023'),
(18, 'jeremias', 'mainato', 0, 'Moçambique', 'Masculino', 'Coop', '123', '867765352', '1562532M', 'jm22@gmail.com', '08-05-2023'),
(19, 'jeremias', 'mainato', 0, 'Moçambique', 'Masculino', 'Coop', '123', '867765352', '1562532M', 'jm22@gmail.com', '08-05-2023'),
(20, 'sumeid', 'irritante', 1, 'Moçambique', 'Coop', 'Coop', '123', '736277', '122321', 'sumeidi@gmail.com', '03-05-2023'),
(21, 'sumeid', 'irritante', 0, 'Africa do SUl', 'Feminino', 'Coop', '123', '736277', '122321', 'sumeidi@gmail.com', '14-05-2023');

-- --------------------------------------------------------

--
-- Estrutura da tabela `quarto`
--

DROP TABLE IF EXISTS `quarto`;
CREATE TABLE IF NOT EXISTS `quarto` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(255) DEFAULT NULL,
  `Descricao` varchar(255) DEFAULT NULL,
  `Localizacao` varchar(255) DEFAULT NULL,
  `Disponibilidade` tinyint(1) DEFAULT NULL,
  `Numero_quarto` varchar(255) DEFAULT NULL,
  `Capacidade` int DEFAULT NULL,
  `Preco_noite` double(255,2) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `quarto`
--

INSERT INTO `quarto` (`Id`, `Tipo`, `Descricao`, `Localizacao`, `Disponibilidade`, `Numero_quarto`, `Capacidade`, `Preco_noite`) VALUES
(1, 'Quarto Queen', 'Um cama com colchão queen e vista para o mar.', 'Primeiro andar.', 1, '9', 3, 2300.00),
(2, 'Quarto King', '1 cama com colchão King. Acesso a varanda.', 'Segundo andar.', 1, '4', 3, 2000.00),
(3, 'Quarto Twin', 'Quarto com duas camas com colchão twin. ', 'Segundo andar.', 1, '4', 2, 1000.00),
(4, 'Quarto Padrão', 'Quarto com uma cama e vista para o mar.', 'Segundo andar.', 1, '5', 1, 1500.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reservas`
--

DROP TABLE IF EXISTS `reservas`;
CREATE TABLE IF NOT EXISTS `reservas` (
  `id_reserva` int NOT NULL AUTO_INCREMENT,
  `data_entrada` varchar(20) NOT NULL,
  `data_saida` varchar(10) NOT NULL,
  `cod_reserva` varchar(6) NOT NULL,
  `status_reserva` tinyint(1) NOT NULL,
  `quarto` varchar(30) NOT NULL,
  `titular_reserva` varchar(30) NOT NULL,
  `nr_hospedes` int NOT NULL,
  `nr_adultos` int NOT NULL,
  `nr_crianças` int NOT NULL,
  `nr_diasEstadia` int NOT NULL,
  `servicos_adicionais` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `total_pagar` float NOT NULL,
  `mes_entrada` int DEFAULT NULL,
  `email_cliente` varchar(30) NOT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `fk_reservas_clientes` (`email_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `reservas`
--

INSERT INTO `reservas` (`id_reserva`, `data_entrada`, `data_saida`, `cod_reserva`, `status_reserva`, `quarto`, `titular_reserva`, `nr_hospedes`, `nr_adultos`, `nr_crianças`, `nr_diasEstadia`, `servicos_adicionais`, `total_pagar`, `mes_entrada`, `email_cliente`) VALUES
(44, '02-05-2023', '09-05-2023', '22387', 1, 'quarto2', 'olivia', 2, 1, 1, 7, NULL, 10, 5, 'op@gmail.com'),
(43, '02-05-2023', '10-05-2023', '29797', 1, 'nomequart', 'nomespeople', 1, 1, 0, 8, NULL, 10, 5, ''),
(42, '02-05-2023', '16-05-2023', '10272', 1, 'Yas', 'Froid', 2, 1, 1, 14, NULL, 10, 5, '0'),
(41, '03-05-2023', '17-05-2023', '16589', 1, 'quartoooo', 'oie', 5, 3, 2, 14, NULL, 10, 5, '0'),
(40, '02-05-2023', '16-05-2023', '29874', 1, 'carrot', 'pessoa', 2, 2, 2, 14, NULL, 10, 5, '0'),
(39, '04-05-2023', '10-05-2023', '15452', 1, '1', 'carrot', 1, 1, 2, 6, NULL, 10, 5, '0'),
(38, '02-05-2023', '10-05-2023', '20033', 1, 'carrot', 'oi', 2, 1, 1, 8, NULL, 10, 5, '0'),
(37, '08-05-2023', '17-05-2023', '', 1, 'carrot', 'julie', 2, 1, 3, 9, NULL, 10, 5, '0'),
(46, '05-05-2023', '10-05-2023', '12708', 1, 'emotions', 'Beyonce', 6, 2, 4, 5, NULL, 10, 5, 'op@gmail.com'),
(47, '03-05-2023', '08-05-2023', '11004', 1, 'quartobom', 'Ivandro', 2, 2, 2, 5, NULL, 10, 5, 'bb@gmail.com'),
(48, '02-05-2023', '15-05-2023', '17025', 1, 'quartobom', 'Ivandroo', 4, 2, 2, 13, NULL, 10, 5, 'bb@gmail.com'),
(49, '03-05-2023', '11-05-2023', '13439', 1, 'Quarto1', 'Beyonce', 4, 2, 2, 14, NULL, 10, 5, 'gg@gmail.com'),
(50, '01-05-2023', '12-05-2023', '24686', 1, 'quarto1', 'stelio', 4, 2, 2, 9, NULL, 11106, 5, 'gg@gmail.com'),
(51, '06-09-2023', '12-09-2023', '24882', 1, 'quarto1', 'kaya', 2, 1, 1, 6, NULL, 66, 5, 'gg@gmail.com'),
(52, '02-11-2023', '01-12-2023', '10281', 1, 'quarto1', 'edilton', 4, 2, 2, 29, 'Lavandaria', 638000, 5, 'gg@gmail.com'),
(53, '01-05-2023', '03-05-2023', '28352', 1, '', 'kobe', 2, 1, 1, 2, 'Lavandaria', 2400, 5, 'gg@gmail.com'),
(54, '06-09-2023', '20-09-2023', '21920', 0, 'Quarto Twin', 'george', 4, 2, 2, 14, 'Lavandaria', 10, 5, 'gg@gmail.com'),
(55, '09-05-2023', '17-05-2023', '12904', 1, 'Quarto Twin', 'yassss', 6, 3, 3, 8, 'Lavandaria', 10, 5, 'gg@gmail.com'),
(56, '01-05-2023', '02-06-2023', '22829', 0, 'Quarto Queen', 'oi', 6, 3, 3, 32, 'Lavandaria', 10, 5, ''),
(57, '02-05-2023', '05-05-2023', '15352', 0, 'Quarto Queen', 'diana', 4, 2, 2, 3, 'Lavandaria', 10, 5, 'gg@gmail.com'),
(58, '01-05-2023', '11-05-2023', '14370', 0, 'Quarto Twin', 'billie eilish', 4, 2, 2, 3, NULL, 10, 5, 'gg@gmail.com'),
(59, '02-05-2023', '11-05-2023', '10882', 0, 'Quarto Queen', 'george russell', 4, 2, 2, 9, 'LavandariaWi-Fi', 10, 5, 'gg@gmail.com'),
(60, '01-05-2023', '08-05-2023', '23082', 0, 'Quarto Twin', 'stelio', 5, 3, 2, 7, 'Lavandaria', 14000, 5, ''),
(61, '01-05-2023', '04-05-2023', '27017', 0, 'Quarto Twin', 'sumeiddd', 4, 2, 2, 3, 'Lavandaria', 6500, 5, 'gg@gmail.com'),
(62, '01-05-2023', '19-04-2023', '15141', 0, 'Quarto Twin', 'sumeidddd', 5, 2, 3, 11, 'LavandariaWi-Fi', 22600, 5, 'gg@gmail.com'),
(63, '02-05-2023', '11-05-2023', '22276', 0, 'Quarto Twin', 'sumeiddddddd', 5, 2, 3, 9, 'Ginasio', 16600, 5, 'gg@gmail.com'),
(64, '10-02-2023', '17-02-2023', '20694', 0, 'Quarto Twin', 'jean', 6, 3, 3, 7, 'Lavandaria', 7500, 5, 'gg@gmail.com'),
(65, '15-11-2023', '17-11-2023', '18320', 0, 'Quarto Twin', 'joao paulo', 4, 2, 2, 2, 'Lavandaria', 4500, 5, 'gg@gmail.com'),
(66, '01-05-2023', '02-05-2023', '19328', 0, 'Quarto Twin', 'kayasss', 2, 1, 1, 8, 'Lavandaria', 16500, 5, 'gg@gmail.com'),
(67, '02-05-2023', '24-05-2023', '21934', 0, 'Quarto Padrao', '', 4, 2, 2, 15, 'Lavandaria', 30500, 5, 'cb@gmail.com'),
(68, '03-05-2023', '16-05-2023', '16161', 0, 'Quarto Padrao', '', 4, 2, 2, 13, 'Lavandaria', 13500, 5, 'kaya.slime@gmail.com'),
(69, '10-05-2023', '13-05-2023', '17629', 0, 'Quarto Padrao', '', 6, 4, 2, 3, 'Lavandaria', 6500, 5, 'oppsmaure@gmail.com'),
(70, '03-05-2023', '06-05-2023', '27273', 0, 'Quarto Padrao', '', 4, 2, 2, 3, 'Lavandaria', 6500, 5, ''),
(71, '10-05-2023', '19-05-2023', '11502', 0, 'Quarto Padrao', '', 4, 2, 2, 2, 'Lavandaria', 4500, 5, 'kaya.slime@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
