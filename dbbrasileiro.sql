-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/10/2025 às 02:56
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbbrasileiro`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `campeonatos`
--

CREATE TABLE `campeonatos` (
  `idCampeonato` int(11) NOT NULL,
  `nomeCampeonato` varchar(100) NOT NULL,
  `sigla_estadoCampeonato` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `campeonatos`
--

INSERT INTO `campeonatos` (`idCampeonato`, `nomeCampeonato`, `sigla_estadoCampeonato`) VALUES
(1, 'potiguar', 'RN'),
(2, 'carioca', 'RJ');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clubes`
--

CREATE TABLE `clubes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `sigla_estado` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clubes`
--

INSERT INTO `clubes` (`id`, `nome`, `sigla_estado`) VALUES
(1, 'ABCFC', 'RN'),
(2, 'Flamengo', 'RJ'),
(3, 'Globo', 'RN');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `campeonatos`
--
ALTER TABLE `campeonatos`
  ADD PRIMARY KEY (`idCampeonato`);

--
-- Índices de tabela `clubes`
--
ALTER TABLE `clubes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `campeonatos`
--
ALTER TABLE `campeonatos`
  MODIFY `idCampeonato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `clubes`
--
ALTER TABLE `clubes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
