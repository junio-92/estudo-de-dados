-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Ago-2021 às 13:23
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_rafael`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(30) DEFAULT NULL,
  `telefone_cliente` varchar(15) DEFAULT NULL,
  `tipo_de_atendimento` varchar(30) DEFAULT NULL,
  `funcionarios_id_funcionario` int(11) DEFAULT NULL,
  `clinicas_id_clinica` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome_cliente`, `telefone_cliente`, `tipo_de_atendimento`, `funcionarios_id_funcionario`, `clinicas_id_clinica`) VALUES
(1, 'Kaka', '(61) 80864-5676', 'Consulta', 1, 1),
(2, 'Lulu', '(78) 37423-8475', 'Operação', 2, 2),
(3, 'Juju', '(31) 70848-5054', 'Consulta', 3, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `clinicas`
--

CREATE TABLE `clinicas` (
  `id_clinica` int(11) NOT NULL,
  `nome_clinica` varchar(30) DEFAULT NULL,
  `endereco` varchar(30) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clinicas`
--

INSERT INTO `clinicas` (`id_clinica`, `nome_clinica`, `endereco`, `telefone`) VALUES
(1, 'Guajajara', 'Rua A', '(31) 75004-5807'),
(2, 'Bem Viver', 'Rua B', '(31) 47130-2179');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id_funcionario` int(11) NOT NULL,
  `nome_funcionario` varchar(30) DEFAULT NULL,
  `cargo_funcionario` varchar(30) DEFAULT NULL,
  `clinicas_id_clinica` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id_funcionario`, `nome_funcionario`, `cargo_funcionario`, `clinicas_id_clinica`) VALUES
(1, 'Rafael', 'Serviços Gerais', 1),
(2, 'Rafaela', 'Gerente', 2),
(3, 'Paula', 'Médica', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `funcionarios_id_funcionario` (`funcionarios_id_funcionario`),
  ADD KEY `clinicas_id_clinica` (`clinicas_id_clinica`);

--
-- Índices para tabela `clinicas`
--
ALTER TABLE `clinicas`
  ADD PRIMARY KEY (`id_clinica`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id_funcionario`),
  ADD KEY `clinicas_id_clinica` (`clinicas_id_clinica`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `clinicas`
--
ALTER TABLE `clinicas`
  MODIFY `id_clinica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`funcionarios_id_funcionario`) REFERENCES `funcionarios` (`id_funcionario`),
  ADD CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`clinicas_id_clinica`) REFERENCES `clinicas` (`id_clinica`);

--
-- Limitadores para a tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`clinicas_id_clinica`) REFERENCES `clinicas` (`id_clinica`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
