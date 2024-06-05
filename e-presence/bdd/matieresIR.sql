-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 05 juin 2024 à 00:21
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
  `ue` varchar(100) DEFAULT NULL,
  `total_heures` int DEFAULT NULL,
  PRIMARY KEY (`matiere_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `matieres`
--

INSERT INTO `matieres` (`matiere_id`, `nom_matiere`, `filiere`, `semestre`, `coefficient`, `ue`, `total_heures`) VALUES
('IR-5.1', 'Immersion', 'IR', 'S5', 4, 'IR_UE1_Fondamentaux_S5', 70),
('IR-5.2.1', 'Mathématiques discrètes I', 'IR', 'S5', 2, 'IR_UE2_Analyse_S5', 20),
('IR-5.2.2', 'Mathématiques discrètes II', 'IR', 'S5', 2, 'IR_UE2_Analyse_S5', 24),
('IR-5.2.3', 'Mathématiques et signal', 'IR', 'S5', 2, 'IR_UE2_Analyse_S5', 28),
('IR-5.2.4', 'Programmation fonctionnelle & preuves', 'IR', 'S5', 2, 'IR_UE2_Analyse_S5', 20),
('IR-5.3.1', 'Architecture des ordinateurs', 'IR', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 10),
('IR-5.3.2', 'ICG', 'IR', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 26),
('IR-5.3.3', 'Découverte des Réseaux', 'IR', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 25),
('IR-5.3.4', 'Unix commandes de base', 'IR', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 24),
('IR-5.3.5', 'Systèmes d’exploitation', 'IR', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 30),
('IR-5.3.6', 'Algorithmie et structures de données-C', 'IR', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 30),
('IR-5.4.1', 'Technologies WEB I', 'IR', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 20),
('IR-5.4.2', 'Technologies WEB II', 'IR', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 20),
('IR-5.4.3', 'Programmation WEB', 'IR', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 20),
('IR-5.5.1', 'Recherche bibliographique', 'IR', 'S5', 1, 'IR_UE1_Fondamentaux_S5', 4),
('IR-5.5.2', 'Communiquer et présenter un projet', 'IR', 'S5', 1, 'IR_UE1_Fondamentaux_S5', 2),
('IR-5.5.3', 'Analyse de la valeur', 'IR', 'S5', 1, 'IR_UE1_Fondamentaux_S5', 4),
('IR-5.5.4', 'Projet Professionnel/Connaissance de soi', 'IR', 'S5', 1, 'IR_UE1_Fondamentaux_S5', 8),
('IR-5.5.5', 'CV/Lettre de motivation', 'IR', 'S5', 1, 'IR_UE1_Fondamentaux_S5', 4),
('IR-5.5.6', 'Français - Projet Voltaire (en ligne)', 'IR', 'S5', 1, 'IR_UE1_Fondamentaux_S5', 6),
('IR-5.6.1', 'Anglais', 'IR', 'S5', 2, 'LV', 24),
('IR-6.1', 'Maths générales', 'IR', 'S6', 4, 'IR_UE1_Maths_S6', 80),
('IR-6.1.1', 'Calcul matriciel', 'IR', 'S6', 1, 'IR_UE1_Maths_S6', 10),
('IR-6.1.2', 'Analyse générale', 'IR', 'S6', 1, 'IR_UE1_Maths_S6', 10),
('IR-6.1.3', 'Statistiques et systèmes stochastiques', 'IR', 'S6', 1, 'IR_UE1_Maths_S6', 28),
('IR-6.1.4', 'Analyse numérique et calcul scientifique', 'IR', 'S6', 1, 'IR_UE1_Maths_S6', 20),
('IR-6.1.5', 'Projet', 'IR', 'S6', 1, 'IR_UE1_Maths_S6', 12),
('IR-6.2', 'Ingénierie objet', 'IR', 'S6', 6, 'IR_UE2_Objets_S6', 76),
('IR-6.2.1', 'AOO & langage Java', 'IR', 'S6', 2, 'IR_UE2_Objets_S6', 32),
('IR-6.2.2', 'UML', 'IR', 'S6', 2, 'IR_UE2_Objets_S6', 24),
('IR-6.2.3', 'Projet', 'IR', 'S6', 2, 'IR_UE2_Objets_S6', 20),
('IR-6.3', 'Données', 'IR', 'S6', 4, 'IR_UE2_Data_S6', 62),
('IR-6.3.1', 'SGBD', 'IR', 'S6', 2, 'IR_UE2_Data_S6', 28),
('IR-6.3.2', 'BI', 'IR', 'S6', 2, 'IR_UE2_Data_S6', 34),
('IR-7.1', 'Programmation système', 'IR', 'S7', 5, 'IR_UE1_System_S7', 82),
('IR-7.1.1', 'Théorie des langages', 'IR', 'S7', 1, 'IR_UE1_System_S7', 24),
('IR-7.1.2', 'Programmation système (API Unix)', 'IR', 'S7', 1, 'IR_UE1_System_S7', 20),
('IR-7.1.3', 'Langage C++', 'IR', 'S7', 1, 'IR_UE1_System_S7', 38),
('IR-7.2', 'Ingénierie Logicielle I', 'IR', 'S7', 6, 'IR_UE1_Logiciel_S7', 86),
('IR-7.2.1', 'Génie logiciel', 'IR', 'S7', 1, 'IR_UE1_Logiciel_S7', 20),
('IR-7.2.2', 'Industrialisation logicielle', 'IR', 'S7', 1, 'IR_UE1_Logiciel_S7', 22),
('IR-7.2.3', 'Architectures à objets et Design Pattern', 'IR', 'S7', 1, 'IR_UE1_Logiciel_S7', 20),
('IR-7.2.4', 'Architecture des IHM', 'IR', 'S7', 1, 'IR_UE1_Logiciel_S7', 24),
('IR-8.1', 'Ingénierie des langages et modèles', 'IR', 'S8', 8, 'IR_UE1_Langages_S8', 94),
('IR-8.1.1', 'Réseaux (architecture, protocole, programmation)', 'IR', 'S8', 2, 'IR_UE1_Langages_S8', 26),
('IR-8.1.2', 'Compilation', 'IR', 'S8', 2, 'IR_UE1_Langages_S8', 28),
('IR-8.1.3', 'Représentation et analyse de documents', 'IR', 'S8', 2, 'IR_UE1_Langages_S8', 20),
('IR-8.1.4', 'Eco-conception', 'IR', 'S8', 2, 'IR_UE1_Langages_S8', 20),
('IR-8.2', 'Science des données II', 'IR', 'S8', 9, 'IR_UE2_Data_S8', 92),
('IR-8.2.1', 'IA/Optimisation', 'IR', 'S8', 2, 'IR_UE2_Data_S8', 10),
('IR-8.2.2', 'Cloud Computing', 'IR', 'S8', 2, 'IR_UE2_Data_S8', 30),
('IR-8.2.3', 'Deep Learning I', 'IR', 'S8', 2, 'IR_UE2_Data_S8', 24),
('IR-8.2.4', 'Mathématiques pour les datasciences', 'IR', 'S8', 2, 'IR_UE2_Data_S8', 28);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
