-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 04 juin 2024 à 23:59
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
-- Structure de la table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `student_id` int NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `groupe_TD` varchar(10) NOT NULL,
  `groupe_TP` varchar(10) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`student_id`, `prenom`, `nom`, `groupe_TD`, `groupe_TP`) VALUES
(22304059, 'ELIE', 'ABI-ISSI', 'TD1', 'TP1'),
(22104670, 'SIMON', 'ANTROPIUS', 'TD1', 'TP1'),
(22304715, 'LOUIS', 'AUGEY', 'TD1', 'TP1'),
(22305104, 'HAMZA', 'BAYA', 'TD1', 'TP1'),
(22204595, 'RIM', 'BENCHAHBOUN', 'TD1', 'TP1'),
(22104745, 'SIRINE', 'BEN-CHARNIA', 'TD1', 'TP1'),
(22303556, 'NICOLAS', 'BERNARDI', 'TD1', 'TP1'),
(22104710, 'ROMAIN', 'BOMBA', 'TD1', 'TP1'),
(22304466, 'LIZA', 'BOUARAB', 'TD1', 'TP1'),
(22304010, 'IKRAM', 'BOURICHI', 'TD1', 'TP1'),
(22303900, 'BENJAMIN', 'CARBON', 'TD1', 'TP1'),
(22304669, 'MEJDA', 'CHAABANE', 'TD1', 'TP1'),
(22304463, 'MEHDI', 'CHOUAF', 'TD1', 'TP1'),
(22104716, 'MAXENCE', 'DESMONTEIX', 'TD1', 'TP1'),
(22304105, 'EVAN', 'DOUARD', 'TD1', 'TP1'),
(22304137, 'DOUAE', 'EL-MOUJARRADE', 'TD1', 'TP1'),
(21901399, 'LUDOVIC', 'ERTZER', 'TD1', 'TP1'),
(22104720, 'HARRY', 'ESSLINGER', 'TD1', 'TP1'),
(22000139, 'MOHAMED AMINE', 'FADLALLAH', 'TD1', 'TP1'),
(22303866, 'MOHAMED', 'GACHA', 'TD1', 'TP1'),
(22304055, 'ALBAN', 'GAILLOT', 'TD2', 'TP2'),
(22304023, 'ARNAUD', 'GAUTHERET', 'TD2', 'TP2'),
(22104756, 'QUENTIN', 'GIRARDAT', 'TD2', 'TP2'),
(22304779, 'WISSAM', 'HAMDANE', 'TD2', 'TP2'),
(22303994, 'ALEXIS', 'IBRAHIM', 'TD2', 'TP2'),
(22304145, 'FADWA', 'JABRI', 'TD2', 'TP2'),
(22303899, 'DORRA', 'KEMICHA', 'TD2', 'TP2'),
(22303681, 'OUSSAMA', 'KOUIRI', 'TD2', 'TP2'),
(22304369, 'MATTHIS', 'LAHARGOUE', 'TD2', 'TP2'),
(22304768, 'SALMA', 'LAMOUALDA', 'TD2', 'TP2'),
(22304479, 'QUENTIN', 'LOUSSOUARN', 'TD2', 'TP2'),
(22304117, 'VICTOR', 'MURRIS', 'TD2', 'TP2'),
(22304830, 'SALAH-EDDINE', 'NABAT', 'TD2', 'TP2'),
(22303917, 'AYA', 'NAJJI', 'TD2', 'TP2'),
(22304141, 'NASSIM', 'OUIDIR', 'TD2', 'TP2'),
(22304412, 'ZYAD', 'OUMALOUL', 'TD2', 'TP2'),
(22001266, 'OLEG', 'PRAVEDNYI', 'TD2', 'TP2'),
(22304051, 'YOUSSEF', 'ROCHDI', 'TD2', 'TP2'),
(22304185, 'REMI', 'ROUTIER', 'TD2', 'TP2'),
(22304902, 'MAXIME', 'SANCIAUME', 'TD2', 'TP2'),
(22104728, 'LOUIS', 'SENECHAL', 'TD2', 'TP3'),
(22304815, 'MAROUANE', 'SOUKHRATI', 'TD2', 'TP3'),
(22304339, 'AMRAN', 'TAGHOULT-OUNMIR', 'TD2', 'TP3'),
(22204535, 'YACINE', 'THIAM-MAME', 'TD2', 'TP3'),
(22304054, 'CLOVIS', 'TIEMTORE', 'TD1', 'TP3'),
(22303904, 'ERWAN', 'VANGU', 'TD1', 'TP3'),
(22303848, 'PERRINE', 'WURTZ', 'TD1', 'TP3');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
