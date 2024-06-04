-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 04 juin 2024 à 09:22
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
  `Ue` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`matiere_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `matieres`
--

INSERT INTO `matieres` (`matiere_id`, `nom_matiere`, `filiere`, `semestre`, `coefficient`, `Ue`) VALUES
('IR_S5_1', 'Immersion', 'IR', 'S5', 4, 'IR_UE1_Fondamentaux_S5'),
('IR_S5_2', 'Statistiques', 'IR', 'S5', 6, 'IR_UE2_Analyse_S5'),
('IR_S5_3', 'Informatique Bases', 'IR', 'S5', 9, 'IR_UE1_Fondamentaux_S5'),
('IR_S5_4', 'Développement Web', 'IR', 'S5', 5, 'IR_UE1_Fondamentaux_S5'),
('IR_S5_5', 'Unix', 'IR', 'S5', 4, 'IR_UE1_Fondamentaux_S5'),
('IR_S6_6', 'Anglais', 'IR', 'S6', 2, 'IR_UE2_Langues_S6'),
('IR_S5_7', 'BI', 'IR', 'S5', 9, 'IR_UE2_DATA_S5'),
('IR_S5_8', 'langage C', 'IR', 'S5', 5, 'IR_UE1_Fondamentaux_S5'),
('IR_S5_9', 'F#', 'IR', 'S5', 4, 'IR_UE2_Langages_S5'),
('IR_S7_1', 'Intelligence Artificielle', 'IR', 'S7', 9, 'IR_UE2_Techniques_S7'),
('IR_S7_2', 'Cloud Computing', 'IR', 'S7', 8, 'IR_UE2_Techniques_S7'),
('IR_S7_3', 'Programmation fonctionnelle avancée', 'IR', 'S7', 5, 'IR_UE2_Langages_S7'),
('IR_S7_4', 'Machine Learning', 'IR', 'S7', 10, 'IR_UE2_Techniques_S7'),
('IR_S7_5', 'Développement d’applications distribuées', 'IR', 'S7', 7, 'IR_UE2_Techniques_S7'),
('IR_S7_6', 'Cryptographie', 'IR', 'S7', 8, 'IR_UE2_Techniques_S7'),
('TF_S6_1', 'Textile Techniques Avancées', 'T&F', 'S6', 4, 'TF_UE1_Techniques_Gestion_S6'),
('TF_S6_2', 'Gestion de Production Textile', 'T&F', 'S6', 5, 'TF_UE1_Techniques_Gestion_S6'),
('TF_S7_1', 'Design Textile', 'T&F', 'S7', 6, 'TF_UE2_Design_Innovation_S7_S8'),
('TF_S7_2', 'Matériaux Composites', 'T&F', 'S7', 7, 'TF_UE2_Design_Innovation_S7_S8'),
('TF_S8_1', 'Innovations Textiles Durables', 'T&F', 'S8', 6, 'TF_UE2_Design_Innovation_S7_S8'),
('TF_S8_2', 'Marketing Textile', 'T&F', 'S8', 5, 'IR_UE2_Marketing_S8'),
('GI_S6_1', 'Logistique et Supply Chain Management', 'GI', 'S6', 6, 'GI_UE1_Logistique_Automatisation_S6'),
('GI_S6_2', 'Automatisation Industrielle', 'GI', 'S6', 5, 'GI_UE1_Logistique_Automatisation_S6'),
('GI_S7_1', 'Gestion de Projet Avancée', 'GI', 'S7', 7, 'GI_UE2_Gestion_Finances_S7'),
('GI_S7_2', 'Analyse Financière', 'GI', 'S7', 5, 'GI_UE2_Gestion_Finances_S7'),
('GI_S8_1', 'Systèmes de Production', 'GI', 'S8', 8, 'GI_UE3_Production_Qualité_S8'),
('GI_S8_2', 'Contrôle de Qualité', 'GI', 'S8', 7, 'GI_UE3_Production_Qualité_S8'),
('ASE_S6_1', 'Systèmes Embarqués Avancés', 'ASE', 'S6', 6, 'ASE_UE1_Systèmes_Automatique_S6'),
('ASE_S6_2', 'Automatique', 'ASE', 'S6', 5, 'ASE_UE1_Systèmes_Automatique_S6'),
('ASE_S6_3', 'Contrôle Industriel', 'ASE', 'S6', 7, 'ASE_UE1_Systèmes_Automatique_S6'),
('ASE_S7_1', 'Robotique Industrielle', 'ASE', 'S7', 6, 'ASE_UE2_Robotique_Vision_S7'),
('ASE_S7_2', 'Vision par Ordinateur', 'ASE', 'S7', 5, 'ASE_UE2_Robotique_Vision_S7'),
('ASE_S7_3', 'Capteurs et Actionneurs', 'ASE', 'S7', 4, 'ASE_UE2_Robotique_Vision_S7'),
('ASE_S8_1', 'Automatique Digitale', 'ASE', 'S8', 7, 'ASE_UE3_Automatique_Digitale_S8'),
('ASE_S8_2', 'Systèmes de Navigation', 'ASE', 'S8', 6, 'ASE_UE3_Automatique_Digitale_S8'),
('ASE_S8_3', 'Réseaux de Communication Industriels', 'ASE', 'S8', 5, 'ASE_UE3_Automatique_Digitale_S8'),
('Meca_S6_1', 'Dynamique des Fluides', 'Méca', 'S6', 5, 'Meca_UE1_Mécanique_Fondamentale_S6'),
('Meca_S6_2', 'Résistance des Matériaux', 'Méca', 'S6', 6, 'Meca_UE1_Mécanique_Fondamentale_S6'),
('Meca_S7_1', 'Thermodynamique Avancée', 'Méca', 'S7', 7, 'Meca_UE2_Thermo_Conception_S7'),
('Meca_S7_2', 'Conception Mécanique', 'Méca', 'S7', 6, 'Meca_UE2_Thermo_Conception_S7'),
('Meca_S8_1', 'Ingénierie de Maintenance', 'Méca', 'S8', 8, 'Meca_UE3_Maintenance_Modélisation_S8'),
('Meca_S8_2', 'Techniques de Modélisation et Simulation', 'Méca', 'S8', 7, 'Meca_UE3_Maintenance_Modélisation_S8');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
