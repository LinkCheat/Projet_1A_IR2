-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 05 juin 2024 à 00:46
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
-- Structure de la table `absences`
--

DROP TABLE IF EXISTS `absences`;
CREATE TABLE IF NOT EXISTS `absences` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `Id_élève` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `Absent` tinyint(1) DEFAULT NULL,
  `Motif` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `Id_élève` (`Id_élève`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `absences`
--

INSERT INTO `absences` (`id`, `Id_élève`, `date`, `Absent`, `Motif`) VALUES
(1, 22304059, '2024-05-01', 1, 'Rendez-vous médical'),
(2, 22104670, '2024-05-02', 1, 'Urgence familiale'),
(3, 22304715, '2024-05-03', 1, 'Congé maladie'),
(4, 22305104, '2024-05-04', 1, 'Problèmes de transport'),
(5, 22204595, '2024-05-05', 1, 'Raisons personnelles'),
(6, 22304059, '2024-05-06', 1, 'Rendez-vous médical'),
(7, 22104670, '2024-05-07', 1, 'Urgence familiale'),
(8, 22304715, '2024-05-08', 1, 'Congé maladie'),
(9, 22305104, '2024-05-09', 1, 'Problèmes de transport'),
(10, 22204595, '2024-05-10', 1, 'Raisons personnelles'),
(11, 22304902, '2024-06-01', 1, 'Rendez-vous médical'),
(12, 22304902, '2024-06-02', 1, 'Problèmes de transport'),
(13, 22304902, '2024-06-03', 1, 'Raisons personnelles');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
