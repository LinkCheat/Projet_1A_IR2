-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 07 juin 2024 à 12:23
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
  `semestre` varchar(10) DEFAULT NULL,
  `coefficient` int DEFAULT NULL,
  `ue` varchar(100) DEFAULT NULL,
  `total_heures` int DEFAULT NULL,
  `professor_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`matiere_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `matieres`
--

INSERT INTO `matieres` (`matiere_id`, `nom_matiere`, `semestre`, `coefficient`, `ue`, `total_heures`, `professor_id`) VALUES
('IR-5.1', 'Immersion', 'S5', 4, 'IR_UE1_Fondamentaux_S5', 70, '00001'),
('IR-5.2.1', 'Mathématiques discrètes I', 'S5', 2, 'IR_UE2_Analyse_S5', 20, '00002'),
('IR-5.2.2', 'Mathématiques discrètes II', 'S5', 2, 'IR_UE2_Analyse_S5', 24, '00003'),
('IR-5.2.3', 'Mathématiques et signal', 'S5', 2, 'IR_UE2_Analyse_S5', 28, '00004'),
('IR-5.2.4', 'Programmation fonctionnelle & preuves', 'S5', 2, 'IR_UE2_Analyse_S5', 20, '00005'),
('IR-5.3.1', 'Architecture des ordinateurs', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 10, '00006'),
('IR-5.3.2', 'ICG', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 26, '00007'),
('IR-5.3.3', 'Découverte des Réseaux', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 25, '00008'),
('IR-5.3.4', 'Unix commandes de base', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 24, '00009'),
('IR-5.3.5', 'Systèmes d’exploitation', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 30, '00010'),
('IR-5.3.6', 'Algorithmie et structures de données-C', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 30, '00001'),
('IR-5.4.1', 'Technologies WEB I', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 20, '00002'),
('IR-5.4.2', 'Technologies WEB II', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 20, '00003'),
('IR-5.4.3', 'Programmation WEB', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 20, '00004'),
('IR-5.5.1', 'Recherche bibliographique', 'S5', 1, 'IR_UE1_Fondamentaux_S5', 4, '00005'),
('IR-5.5.2', 'Communiquer et présenter un projet', 'S5', 1, 'IR_UE1_Fondamentaux_S5', 2, '00006'),
('IR-5.5.3', 'Analyse de la valeur', 'S5', 1, 'IR_UE1_Fondamentaux_S5', 4, '00007'),
('IR-5.5.4', 'Projet Professionnel/Connaissance de soi', 'S5', 1, 'IR_UE1_Fondamentaux_S5', 8, '00008'),
('IR-5.5.5', 'CV/Lettre de motivation', 'S5', 1, 'IR_UE1_Fondamentaux_S5', 4, '00009'),
('IR-5.5.6', 'Français - Projet Voltaire (en ligne)', 'S5', 1, 'IR_UE1_Fondamentaux_S5', 6, '00010'),
('IR-5.6.1', 'Anglais', 'S5', 2, 'LV', 24, '00001'),
('IR-6.1', 'Maths générales', 'S6', 4, 'IR_UE1_Maths_S6', 80, '00002'),
('IR-6.1.1', 'Calcul matriciel', 'S6', 1, 'IR_UE1_Maths_S6', 10, '00003'),
('IR-6.1.2', 'Analyse générale', 'S6', 1, 'IR_UE1_Maths_S6', 10, '00004'),
('IR-6.1.3', 'Statistiques et systèmes stochastiques', 'S6', 1, 'IR_UE1_Maths_S6', 28, '00005'),
('IR-6.1.4', 'Analyse numérique et calcul scientifique', 'S6', 1, 'IR_UE1_Maths_S6', 20, '00006'),
('IR-6.1.5', 'Projet', 'S6', 1, 'IR_UE1_Maths_S6', 12, '00007'),
('IR-6.2', 'Ingénierie objet', 'S6', 6, 'IR_UE2_Objets_S6', 76, '00008'),
('IR-6.2.1', 'AOO & langage Java', 'S6', 2, 'IR_UE2_Objets_S6', 32, '00009'),
('IR-6.2.2', 'UML', 'S6', 2, 'IR_UE2_Objets_S6', 24, '00010'),
('IR-6.2.3', 'Projet', 'S6', 2, 'IR_UE2_Objets_S6', 20, '00001'),
('IR-6.3', 'Données', 'S6', 4, 'IR_UE2_Data_S6', 62, '00002'),
('IR-6.3.1', 'SGBD', 'S6', 2, 'IR_UE2_Data_S6', 28, '00003'),
('IR-6.3.2', 'BI', 'S6', 2, 'IR_UE2_Data_S6', 34, '00004'),
('IR-7.1', 'Programmation système', 'S7', 5, 'IR_UE1_System_S7', 82, '00005'),
('IR-7.1.1', 'Théorie des langages', 'S7', 1, 'IR_UE1_System_S7', 24, '00006'),
('IR-7.1.2', 'Programmation système (API Unix)', 'S7', 1, 'IR_UE1_System_S7', 20, '00007'),
('IR-7.1.3', 'Langage C++', 'S7', 1, 'IR_UE1_System_S7', 38, '00008'),
('IR-7.2', 'Ingénierie Logicielle I', 'S7', 6, 'IR_UE1_Logiciel_S7', 86, '00009'),
('IR-7.2.1', 'Génie logiciel', 'S7', 1, 'IR_UE1_Logiciel_S7', 20, '00010'),
('IR-7.2.2', 'Industrialisation logicielle', 'S7', 1, 'IR_UE1_Logiciel_S7', 22, '00001'),
('IR-7.2.3', 'Architectures à objets et Design Pattern', 'S7', 1, 'IR_UE1_Logiciel_S7', 20, '00002'),
('IR-7.2.4', 'Architecture des IHM', 'S7', 1, 'IR_UE1_Logiciel_S7', 24, '00003'),
('IR-8.1', 'Ingénierie des langages et modèles', 'S8', 8, 'IR_UE1_Langages_S8', 94, '00004'),
('IR-8.1.1', 'Réseaux (architecture, protocole, programmation)', 'S8', 2, 'IR_UE1_Langages_S8', 26, '00005'),
('IR-8.1.2', 'Compilation', 'S8', 2, 'IR_UE1_Langages_S8', 28, '00006'),
('IR-8.1.3', 'Représentation et analyse de documents', 'S8', 2, 'IR_UE1_Langages_S8', 20, '00007'),
('IR-8.1.4', 'Eco-conception', 'S8', 2, 'IR_UE1_Langages_S8', 20, '00008'),
('IR-8.2', 'Science des données II', 'S8', 9, 'IR_UE2_Data_S8', 92, '00009'),
('IR-8.2.1', 'IA/Optimisation', 'S8', 2, 'IR_UE2_Data_S8', 10, '00010'),
('IR-8.2.2', 'Cloud Computing', 'S8', 2, 'IR_UE2_Data_S8', 30, '00001'),
('IR-8.2.3', 'Deep Learning I', 'S8', 2, 'IR_UE2_Data_S8', 24, '00002'),
('IR-8.2.4', 'Mathématiques pour les datasciences', 'S8', 2, 'IR_UE2_Data_S8', 28, '00003');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
