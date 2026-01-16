-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql309.byetcluster.com
-- Tempo de geração: 16/01/2026 às 16:24
-- Versão do servidor: 11.4.9-MariaDB
-- Versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca_tartara`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Título` text NOT NULL,
  `Arquivo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `disciplinas`
--

INSERT INTO `disciplinas` (`ID`, `Título`, `Arquivo`) VALUES
(1, 'Programação', 'programacao'),
(2, 'Eletrônica Analógica', 'eletronica_analogica');

-- --------------------------------------------------------

--
-- Estrutura para tabela `materias`
--

CREATE TABLE `materias` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Título` text NOT NULL,
  `Arquivo` text NOT NULL,
  `Série` int(4) UNSIGNED NOT NULL,
  `Disciplina` text NOT NULL,
  `Categoria` enum('Lição','Compilado','Anotação','Atividade','Extraclasse') NOT NULL DEFAULT 'Lição',
  `Estado` enum('Pendente','Digitalizado','Redigindo','Revisando','Concluído') NOT NULL DEFAULT 'Pendente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `materias`
--

INSERT INTO `materias` (`ID`, `Título`, `Arquivo`, `Série`, `Disciplina`, `Categoria`, `Estado`) VALUES
(1, 'Ponteiros', 'ponteiros', 3, 'programacao', 'Lição', 'Concluído'),
(3, 'Noções de Programação', 'nocoes_de_programacao', 2, 'programacao', 'Lição', 'Concluído'),
(4, 'Laços de Repetição', 'lacos_de_repeticao', 2, 'programacao', 'Lição', 'Concluído'),
(5, 'Funções', 'funcoes', 2, 'programacao', 'Lição', 'Concluído'),
(9, 'Testes Comparativo-Condicionais', 'testes_comparativo_condicionais', 2, 'programacao', 'Lição', 'Concluído'),
(10, 'Escolhas Causais', 'escolhas_causais', 2, 'programacao', 'Lição', 'Concluído'),
(11, 'Manipulação de Arquivos', 'manipulacao_de_arquivos', 3, 'programacao', 'Lição', 'Concluído'),
(15, 'Estruturas', 'estruturas', 2, 'programacao', 'Lição', 'Concluído'),
(16, 'O formato de arquivo de som WAVE PCM (.wav)', 'wav', 3, 'programacao', 'Lição', 'Concluído'),
(17, 'O formato do arquivo de imagem BITMAP (.bmp)', 'bmp', 3, 'programacao', 'Lição', 'Concluído'),
(18, 'A Linguagem C', 'linguagem_c', 2, 'programacao', 'Compilado', 'Concluído'),
(19, 'Leis de Kirchhoff', 'leis_de_kirschhoff', 2, 'eletronica_analogica', 'Lição', 'Concluído'),
(20, 'Fonte de Corrente', 'fonte_de_corrente', 2, 'eletronica_analogica', 'Lição', 'Concluído'),
(21, 'Fontes Reais', 'fontes_reais', 2, 'eletronica_analogica', 'Lição', 'Concluído'),
(22, 'Fontes Equivalentes', 'fontes_equivalentes', 2, 'eletronica_analogica', 'Lição', 'Concluído'),
(23, 'Método da Substituição de Fontes Reais', 'metodo_fontes_reais', 2, 'eletronica_analogica', 'Lição', 'Concluído'),
(24, 'Teorema da Superposição', 'teorema_da_superposição', 2, 'eletronica_analogica', 'Lição', 'Concluído'),
(25, 'Teorema de Thevenin', 'teorema_de_thevenin', 2, 'eletronica_analogica', 'Lição', 'Concluído'),
(26, 'Noções de Semicondutores', 'nocoes_de_semicondutores', 2, 'eletronica_analogica', 'Lição', 'Concluído'),
(27, 'Componentes Eletrônicos Semicondutores', 'semicondutores', 2, 'eletronica_analogica', 'Lição', 'Concluído'),
(28, 'Diodo', 'diodo', 2, 'eletronica_analogica', 'Lição', 'Concluído'),
(29, 'Diodo Zener', 'diodo_zener', 2, 'eletronica_analogica', 'Lição', 'Concluído'),
(30, 'Transistor Bipolar de Junção (TBJ)', 'transistor_bipolar_juncao', 2, 'eletronica_analogica', 'Compilado', 'Concluído'),
(31, 'Capacitores e Indutores', 'capacitores_e_indutores', 2, 'eletronica_analogica', 'Compilado', 'Concluído'),
(32, 'Sinais Elétricos Variáveis', 'sinais_eletricos_variaveis', 2, 'eletronica_analogica', 'Lição', 'Concluído'),
(33, 'o Osciloscópio e o Gerador de Sinais', 'osciloscopio_e_gerador_de_sinais', 2, 'eletronica_analogica', 'Anotação', 'Concluído'),
(34, 'Análise de Circuitos em Corrente Alternada', 'circuitos_ac', 2, 'eletronica_analogica', 'Lição', 'Concluído'),
(35, 'Matrizes, Vetores e Strings', 'matrizes_vetores_strings', 2, 'programacao', 'Lição', 'Concluído');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `materias`
--
ALTER TABLE `materias`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
