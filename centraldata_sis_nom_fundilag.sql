-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 01:13 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `centraldata_sis_nom_fundilag`
--

-- --------------------------------------------------------

--
-- Table structure for table `calibrador`
--

CREATE TABLE `calibrador` (
  `calibradorID` int(10) NOT NULL,
  `nombre_calibrador` varchar(40) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `direccion_calibrador` varchar(40) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `numero_telefono` varchar(40) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `rfc` varchar(40) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calibrador`
--

INSERT INTO `calibrador` (`calibradorID`, `nombre_calibrador`, `direccion_calibrador`, `numero_telefono`, `rfc`) VALUES
(1, 'Edson Ornelas Rios', 'Torreon', '8713424433', 'EDS9299433');

-- --------------------------------------------------------

--
-- Table structure for table `ejecutivos`
--

CREATE TABLE `ejecutivos` (
  `ej_ID` int(10) NOT NULL,
  `nom_ej` varchar(70) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `dir_ej` varchar(80) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `num_tel_ej` varchar(18) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `rfc` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ejecutivos`
--

INSERT INTO `ejecutivos` (`ej_ID`, `nom_ej`, `dir_ej`, `num_tel_ej`, `rfc`) VALUES
(1, 'Adrian Villareal', 'Privada, Parque Industrial', '8711409767', 'ADR9388821');

-- --------------------------------------------------------

--
-- Table structure for table `mantenimiento`
--

CREATE TABLE `mantenimiento` (
  `tb_ID` int(10) NOT NULL,
  `nom_tb` varchar(70) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `dir_tb` varchar(80) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `num_tel_tb` varchar(18) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `rfc` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mantenimiento`
--

INSERT INTO `mantenimiento` (`tb_ID`, `nom_tb`, `dir_tb`, `num_tel_tb`, `rfc`) VALUES
(1, 'Gerardo hernandes pereira', 'Ej. El fenix, coyote, coahuila.', '8713777221', 'RFC993321');

-- --------------------------------------------------------

--
-- Table structure for table `maquinas`
--

CREATE TABLE `maquinas` (
  `maquinaID` int(10) NOT NULL,
  `nombre_maquina` varchar(40) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `modelo_maquina` varchar(40) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `serie_maquina` varchar(40) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `planta_maquina_instalada` varchar(40) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maquinas`
--

INSERT INTO `maquinas` (`maquinaID`, `nombre_maquina`, `modelo_maquina`, `serie_maquina`, `planta_maquina_instalada`) VALUES
(1, 'Expansora De Copolimero', 'G3910X', '399488829', 'Politor A');

-- --------------------------------------------------------

--
-- Table structure for table `operadores`
--

CREATE TABLE `operadores` (
  `op_ID` int(10) NOT NULL,
  `nm_op` varchar(70) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `dir_oper` varchar(80) NOT NULL,
  `num_tel_oper` varchar(18) NOT NULL,
  `rfc` varchar(13) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `operadores`
--

INSERT INTO `operadores` (`op_ID`, `nm_op`, `dir_oper`, `num_tel_oper`, `rfc`) VALUES
(38, 'Julio hrdz', 'Calle numero #1', '871332112', 'RFC9288389'),
(39, 'Gerardo Martinez Herrera', 'Torreon Coahuila', '7611234443', 'RFC3455332'),
(40, 'Daniel Solis', 'San Pedro', '871344443', 'RFC23443443');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `usrID` int(15) NOT NULL,
  `nm_user` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `psw` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `planta_usr` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`usrID`, `nm_user`, `psw`, `planta_usr`) VALUES
(29, 'julio', '123', 'Planta A'),
(30, 'root', '123', 'Planta A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calibrador`
--
ALTER TABLE `calibrador`
  ADD PRIMARY KEY (`calibradorID`);

--
-- Indexes for table `ejecutivos`
--
ALTER TABLE `ejecutivos`
  ADD PRIMARY KEY (`ej_ID`);

--
-- Indexes for table `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD PRIMARY KEY (`tb_ID`);

--
-- Indexes for table `maquinas`
--
ALTER TABLE `maquinas`
  ADD PRIMARY KEY (`maquinaID`);

--
-- Indexes for table `operadores`
--
ALTER TABLE `operadores`
  ADD PRIMARY KEY (`op_ID`) USING BTREE;

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usrID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calibrador`
--
ALTER TABLE `calibrador`
  MODIFY `calibradorID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ejecutivos`
--
ALTER TABLE `ejecutivos`
  MODIFY `ej_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mantenimiento`
--
ALTER TABLE `mantenimiento`
  MODIFY `tb_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `maquinas`
--
ALTER TABLE `maquinas`
  MODIFY `maquinaID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `operadores`
--
ALTER TABLE `operadores`
  MODIFY `op_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usrID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
