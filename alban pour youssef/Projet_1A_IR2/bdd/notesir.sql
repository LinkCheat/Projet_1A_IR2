-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 05 juin 2024 à 11:09
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
-- Structure de la table `notesir`
--

DROP TABLE IF EXISTS `notesir`;
CREATE TABLE IF NOT EXISTS `notesir` (
  `student_id` varchar(10) NOT NULL,
  `matiere_id` varchar(10) NOT NULL,
  `note` decimal(5,2) NOT NULL,
  `date_evaluation` date NOT NULL,
  `type_evaluation` varchar(50) NOT NULL,
  `remarques` text,
  PRIMARY KEY (`student_id`,`matiere_id`,`date_evaluation`,`type_evaluation`),
  KEY `matiere_id` (`matiere_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `notesir`
--

INSERT INTO `notesir` (`student_id`, `matiere_id`, `note`, `date_evaluation`, `type_evaluation`, `remarques`) VALUES
('22304059', 'IR-5.1', 15.50, '2024-06-10', 'Partiel', 'Très bien'),
('22104670', 'IR-5.2.1', 12.00, '2024-06-11', 'TP', 'Peut mieux faire'),
('22304715', 'IR-5.2.2', 8.00, '2024-06-12', 'Partiel', 'À améliorer'),
('22305104', 'IR-5.2.3', 17.00, '2024-06-13', 'Partiel', 'Excellent'),
('22204595', 'IR-5.2.4', 11.00, '2024-06-14', 'TP', 'Moyen'),
('22104745', 'IR-5.3.1', 14.00, '2024-06-15', 'Partiel', 'Bien fait'),
('22303556', 'IR-5.3.2', 13.00, '2024-06-16', 'TP', 'Correct'),
('22104710', 'IR-5.3.3', 16.00, '2024-06-17', 'Partiel', 'Très bon'),
('22304466', 'IR-5.3.4', 10.00, '2024-06-18', 'TP', 'Insuffisant'),
('22304010', 'IR-5.3.5', 18.00, '2024-06-19', 'Partiel', 'Parfait'),
('22303900', 'IR-6.1', 9.00, '2024-06-20', 'TP', 'Passable'),
('22304669', 'IR-6.2', 16.00, '2024-06-21', 'Partiel', 'Impressionnant'),
('22304463', 'IR-6.3', 14.00, '2024-06-22', 'TP', 'Bon travail'),
('22104716', 'IR-7.1', 6.00, '2024-06-23', 'Partiel', 'Réviser'),
('22304105', 'IR-7.2', 19.00, '2024-06-24', 'Partiel', 'Presque parfait'),
('22304137', 'IR-8.1', 13.00, '2024-06-25', 'TP', 'Solide'),
('21901399', 'IR-8.2', 7.50, '2024-06-26', 'Partiel', 'À concentrer'),
('22104720', 'IR-6.1.1', 10.00, '2024-06-27', 'TP', 'Moyen'),
('22000139', 'IR-6.1.2', 12.50, '2024-06-28', 'Partiel', 'Adéquat'),
('22304055', 'IR-6.1.4', 17.50, '2024-06-30', 'Partiel', 'Très haut niveau');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
