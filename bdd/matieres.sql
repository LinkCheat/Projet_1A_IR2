-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 31 mai 2024 à 14:35
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
-- Structure de la table `matieres`
--

DROP TABLE IF EXISTS `matieres`;
CREATE TABLE IF NOT EXISTS `matieres` (
  `matiere_id` varchar(10) NOT NULL,
  `nom_matiere` varchar(100) DEFAULT NULL,
  `filiere` varchar(50) DEFAULT NULL,
  `semestre` varchar(10) DEFAULT NULL,
  `coefficient` int DEFAULT NULL,
  PRIMARY KEY (`matiere_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `matieres`
--

INSERT INTO `matieres` (`matiere_id`, `nom_matiere`, `filiere`, `semestre`, `coefficient`) VALUES
('IR_S5_1', 'Immersion', 'Informatique et réseaux', 'S5', 4),
('IR_S5_2', 'Statistiques', 'Informatique et réseaux', 'S5', 6),
('IR_S5_3', 'Informatique Bases', 'Informatique et réseaux', 'S5', 9),
('IR_S5_4', 'Développement Web', 'Informatique et réseaux', 'S5', 5),
('IR_S5_5', 'Unix', 'Informatique et réseaux', 'S5', 4),
('IR_S6_6', 'Anglais', 'Informatique et réseaux', 'S6', 2),
('IR_S5_7', 'BI', 'Informatique et réseaux', 'S5', 9),
('IR_S5_8', 'langage C', 'Informatique et réseaux', 'S5', 5),
('IR_S5_9', 'F#', 'Informatique et réseaux', 'S5', 4),
('IR_S6_10', 'Anglais', 'Informatique et réseaux', 'S6', 2),
('IR_S7_1', 'Intelligence Artificielle', 'Informatique et réseaux', 'S7', 9),
('IR_S7_2', 'Cloud Computing', 'Informatique et réseaux', 'S7', 8),
('IR_S7_3', 'Programmation fonctionnelle avancée', 'Informatique et réseaux', 'S7', 5),
('IR_S7_4', 'Machine Learning', 'Informatique et réseaux', 'S7', 10),
('IR_S7_5', 'Développement d’applications distribuées', 'Informatique et réseaux', 'S7', 7),
('IR_S7_6', 'Cryptographie', 'Informatique et réseaux', 'S7', 8),
('TF_S6_1', 'Textile Techniques Avancées', 'Textile et Fibres', 'S6', 4),
('TF_S6_2', 'Gestion de Production Textile', 'Textile et Fibres', 'S6', 5),
('TF_S7_1', 'Design Textile', 'Textile et Fibres', 'S7', 6),
('TF_S7_2', 'Matériaux Composites', 'Textile et Fibres', 'S7', 7),
('TF_S8_1', 'Innovations Textiles Durables', 'Textile et Fibres', 'S8', 6),
('TF_S8_2', 'Marketing Textile', 'Textile et Fibres', 'S8', 5),
('GI_S6_1', 'Logistique et Supply Chain Management', 'Génie Industriel', 'S6', 6),
('GI_S6_2', 'Automatisation Industrielle', 'Génie Industriel', 'S6', 5),
('GI_S7_1', 'Gestion de Projet Avancée', 'Génie Industriel', 'S7', 7),
('GI_S7_2', 'Analyse Financière', 'Génie Industriel', 'S7', 5),
('GI_S8_1', 'Systèmes de Production', 'Génie Industriel', 'S8', 8),
('GI_S8_2', 'Contrôle de Qualité', 'Génie Industriel', 'S8', 7),
('ASE_S6_1', 'Systèmes Embarqués Avancés', 'Automatique et systèmes embarqués', 'S6', 6),
('ASE_S6_2', 'Automatique', 'Automatique et systèmes embarqués', 'S6', 5),
('ASE_S6_3', 'Contrôle Industriel', 'Automatique et systèmes embarqués', 'S6', 7),
('ASE_S7_1', 'Robotique Industrielle', 'Automatique et systèmes embarqués', 'S7', 6),
('ASE_S7_2', 'Vision par Ordinateur', 'Automatique et systèmes embarqués', 'S7', 5),
('ASE_S7_3', 'Capteurs et Actionneurs', 'Automatique et systèmes embarqués', 'S7', 4),
('ASE_S8_1', 'Automatique Digitale', 'Automatique et systèmes embarqués', 'S8', 7),
('ASE_S8_2', 'Systèmes de Navigation', 'Automatique et systèmes embarqués', 'S8', 6),
('ASE_S8_3', 'Réseaux de Communication Industriels', 'Automatique et systèmes embarqués', 'S8', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
