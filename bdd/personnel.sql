-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 04 juin 2024 à 23:19
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `student`
--

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
CREATE TABLE IF NOT EXISTS `personnel` (
  `ID` varchar(6) NOT NULL,
  `Nom` varchar(25) DEFAULT NULL,
  `Prenom` varchar(25) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `MotDePasse` varchar(25) DEFAULT NULL,
  `Role` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`ID`, `Nom`, `Prenom`, `Email`, `MotDePasse`, `Role`) VALUES
('00001', 'DION', 'Joel', 'joel.dion@uha.fr', 'n0c83zvn', 'Teacher'),
('00002', 'ANICIC', 'Sylvia', 'sylvia.anicic@uha.fr', 'ksCmfbee', 'Teacher'),
('00003', 'THIRY', 'Laurent', 'laurent.thiry@uha.fr', '44LrJHmY', 'Teacher'),
('00004', 'STUDER', 'Philippe', 'philippe.studer@uha.fr', 'vl3TJPQB', 'Teacher'),
('00005', 'FORESTIER', 'Germain', 'germain.forestier@uha.fr', 'mSXCHJ4m', 'Teacher'),
('00006', 'HILT', 'Benoit', 'benoit.hilt@uha.fr', 's6lkf8HZ', 'Teacher'),
('00007', 'HAYE', 'Ludovic', 'ludovic.haye@uha.fr', 'Q7dfatXq', 'Teacher'),
('00008', 'VIGOUROUX', 'Christian', 'christian.vigouroux@uha.fr', 'OFw7iiyY', 'Teacher'),
('00009', 'RUMA', 'Corinne', 'corinne.ruma@uha.fr', 'NpkqvseF', 'Teacher'),
('00010', 'GEYER', 'Cyril', 'cyril.geyer@uha.fr', 'Wr67m1lX', 'Teacher'),
('00011', 'WEBER', 'Jonathan', 'jonathan.weber@uha.fr', 'zMsbVZPU', 'Referent Specialise');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
