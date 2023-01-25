-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2023 at 09:34 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomerceafrica`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `categoria` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`id`, `categoria`) VALUES
(1, 'saia'),
(3, 'vestido'),
(4, 'Camisolas'),
(5, 'T-sherts'),
(6, 'Calcas');

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `Pnome` varchar(80) DEFAULT NULL,
  `Unome` varchar(30) NOT NULL,
  `pais` varchar(50) DEFAULT 'Angola',
  `Nempresa` varchar(70) NOT NULL,
  `endereco` varchar(90) NOT NULL,
  `cidade` varchar(70) NOT NULL,
  `condado` varchar(80) NOT NULL,
  `cep` varchar(89) NOT NULL,
  `email` varchar(80) NOT NULL,
  `telefone` varchar(80) NOT NULL,
  `produtos` varchar(600) DEFAULT NULL,
  `preco` varchar(300) DEFAULT NULL,
  `qtd` varchar(200) DEFAULT NULL,
  `total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`idCliente`, `id`, `Pnome`, `Unome`, `pais`, `Nempresa`, `endereco`, `cidade`, `condado`, `cep`, `email`, `telefone`, `produtos`, `preco`, `qtd`, `total`) VALUES
(1, 1, 'vasco', 'juuu', 'Angola', 'Google', 'Talatona', 'Luanda', 'Angola', '108920700ZE0413', 'vasco@gmail.com', '926153108', ', Ténis BNW', ',69000', ',1', 1242000),
(2, 1, 'Teves', 'Nelo', 'R.D.C', 'Tecno', 'Matadi', 'Side', 'FA', '2556677', 'teves@gmail.com', '200200200', ', Ténis BNW', ',69000', ',17', 1173000),
(3, 1, 'Telo', 'Hugo', 'Angola', 'Nokia', 'gomes@gmail.com', 'Santa Clara', 'Ao', '23333', 'teresa@gmail.com', '25553666', '', '', '', 0),
(4, 1, 'vasco', 'Nelo', 'Angola', 'Google', 'Talatona', 'Luanda', 'Angola', '108920700ZE0413', 'vasco@gmail.com', '926153108', '', '', '', 0),
(5, 8, 'Teves', 'Nelo', 'Angola', 'Google', 'Talatona', 'Luanda', 'AO', '108920700ZE0413', 'vasco@gmail.com', '967989309', '', '', '', 0),
(6, 8, 'Teves', 'Hugo', 'Angola', 'Google', 'Talatona', 'Luanda', 'Angola', '108920700ZE0413', 'teresa@gmail.com', '926153108', ',Camisola Nerd', ',1700', ',23', 40800),
(7, 8, 'Teves', 'juuu', 'Angola', 'Google', 'Talatona', 'Luanda', 'Angola', '108920700ZE0413', 'vasco@gmail.com', '926153108', ',Equipamento de Benfica', ',15000', ',1', 525000),
(8, 8, 'vasco', 'juuu', 'Angola', 'Google', 'Talatona', 'Luanda', 'Ao', '108920700ZE0413', 'teresa@gmail.com', '967989309', ',Camisola Nerd', ',1700', ',1', 1700),
(9, 8, 'Alberto', 'Chico', 'Angola', 'Tecno', 'Cazenga/Calawenda', 'Cazenga', 'AO', '00388840ZE08', 'AlbertoChico@gamil.com', '883788', ',Calçaõ do Mundinho', ',8000', ',20', 160000),
(10, 8, 'Teus ', 'JII', 'Africa do sul', 'Itel', 'Luanda/Talatona rua direita de SIAC', 'Luanda', 'AF', '288877888', 'manuelvasco@gmail.com', '926153108', ',Camisola Nerd', ',1700', ',1', 39100),
(11, 8, 'gabriel', 'Juda', 'America', 'Tecno', 'Nova York', 'Nova york', 'US', '3777884JH', 'gabriel@gmail.com', '28888', ',Sapato Social', ',39900', ',20', 798000);

-- --------------------------------------------------------

--
-- Table structure for table `detalhesproduct`
--

CREATE TABLE `detalhe-product` (
  `idPedido` int(11) NOT NULL,
  `produto` varchar(600) DEFAULT NULL,
  `preco` varchar(300) DEFAULT NULL,
  `qtd` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  `data_pedido` datetime DEFAULT NULL,
  `data_necessaria` datetime DEFAULT NULL,
  `data_envio` date DEFAULT NULL,
  `via_maritima` enum('sim','nao') DEFAULT 'nao',
  `frete` enum('sim','nao') DEFAULT 'nao',
  `nome_navio` enum('sim','nao') DEFAULT 'nao',
  `endereco_navio` enum('sim','nao') DEFAULT 'nao',
  `modo_entrega` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pedido`
--

INSERT INTO `pedido` (`id`, `idCliente`, `idFuncionario`, `data_pedido`, `data_necessaria`, `data_envio`, `via_maritima`, `frete`, `nome_navio`, `endereco_navio`, `modo_entrega`) VALUES
(1, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(2, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(3, 2, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(4, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(5, 2, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(6, 3, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(7, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(8, 2, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(9, 3, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(10, 4, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(11, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(12, 2, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(13, 3, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(14, 4, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(15, 5, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(16, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(17, 2, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(18, 3, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(19, 4, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(20, 5, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(21, 6, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(22, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(23, 2, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(24, 3, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(25, 4, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(26, 5, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(27, 6, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(28, 7, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(29, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(30, 2, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),


-- --------------------------------------------------------

--
-- Table structure for table `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(90) DEFAULT NULL,
  `precoUnitario` float DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `estado` varchar(90) DEFAULT NULL,
  `supplid` int(11) DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL,
  `descricao` varchar(300) DEFAULT NULL,
  `imagem` varchar(90) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `precoUnitario`, `qtd`, `estado`, `supplid`, `idCategoria`, `descricao`, `imagem`, `data`, `total`) VALUES
(30, 'Calção Dourado', 6000, 33, 'stock', 32, 6, 'Para Lazer', '63bf2376e625c', '2023-01-11 22:00:38', 198000),
(31, 'Fato Casal', 65000, 12, 'stock', 22, 4, 'Fato para ocasiao especial', '63bf23afa2fab', '2023-01-11 22:01:35', 780000),
(32, 'Fato Kid', 10000, 12, 'stock', 212, 4, 'Fato para criança de 12anos á 14anos', '63bf23e86b45f', '2023-01-11 22:02:32', 120000),
(33, 'Fato social', 70000, 3, 'stock', 3222, 4, 'Fato para saída social e casamento', '63bf241c48eda', '2023-01-11 22:03:24', 210000),
(34, 'Vestido Gala', 30000, 12, 'stock', 233221, 4, 'Para Gala', '63bf244848585', '2023-01-11 22:04:08', 360000);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `passe` varchar(40) DEFAULT NULL,
  `privilegio` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome`, `email`, `telefone`, `passe`, `privilegio`) VALUES
(1, 'Manuel Vasco', 'vasco@gmail.com', NULL, '123456', 0),
(3, 'Manuel Vasco Antonio', 'manuelvasco@gmail.com', '926153108', '12345', 0),
(4, 'Teresa Mateus', 'teresa@gmail.com', ' 924402325', '12345', 1),
(5, 'Home men', 'joy@gmail.com', ' 924356987', '1234', 1),
(6, 'Gabriel', 'gabriel@gmail.com', ' 924402325', '11111', 1),
(7, 'Manuel Afonso', 'manuelAfonso@gmail.com', ' 925678900', '123456', 1),
(8, 'ruth gabriel', 'ruth@gmail.com', ' 934508987', '12345', 1),
(10, 'Gome Santos', 'fontesgonga@gmail.com', ' 916788007', '3434', 1),
(11, '', '', ' ', '', 1),
(14, 'Manuel Vasco', 'vasco@gmail.com', '35666777', '123456', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `detalhesproduct`
--
ALTER TABLE `detalhesproduct`
  ADD PRIMARY KEY (`idPedido`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `detalhesproduct`
--
ALTER TABLE `detalhesproduct`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id`) REFERENCES `usuario` (`id_usuario`);

--
-- Constraints for table `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Constraints for table `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
