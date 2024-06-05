-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 04 juin 2024 à 08:18
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
  `student_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `field_of_study` varchar(100) NOT NULL,
  `groupe_tp` varchar(10) DEFAULT NULL,
  `groupe_td` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=230052 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`student_id`, `first_name`, `last_name`, `field_of_study`, `groupe_tp`, `groupe_td`) VALUES
(230001, 'Ethan', 'Smith', 'IR', 'TP1', 'TD1'),
(230002, 'Noah', 'Johnson', 'IR', 'TP1', 'TD1'),
(230003, 'William', 'Williams', 'ASE', 'TP1', 'TD1'),
(230004, 'James', 'Brown', 'T&F', 'TP1', 'TD1'),
(230005, 'Oliver', 'Jones', 'GI', 'TP1', 'TD1'),
(230006, 'Benjamin', 'Garcia', 'Méca', 'TP1', 'TD1'),
(230007, 'Lucas', 'Miller', 'IR', 'TP1', 'TD1'),
(230008, 'Mason', 'Davis', 'ASE', 'TP1', 'TD1'),
(230009, 'Elijah', 'Rodriguez', 'T&F', 'TP1', 'TD1'),
(230010, 'Logan', 'Martinez', 'GI', 'TP1', 'TD1'),
(230011, 'Alexander', 'Hernandez', 'Méca', 'TP1', 'TD1'),
(230012, 'Sebastian', 'Lopez', 'IR', 'TP1', 'TD1'),
(230013, 'Jack', 'Gonzalez', 'ASE', 'TP1', 'TD1'),
(230014, 'Aiden', 'Wilson', 'T&F', 'TP1', 'TD1'),
(230015, 'Owen', 'Anderson', 'GI', 'TP1', 'TD1'),
(230016, 'Samuel', 'Thomas', 'Méca', 'TP1', 'TD1'),
(230017, 'Matthew', 'Taylor', 'IR', 'TP1', 'TD1'),
(230018, 'Joseph', 'Moore', 'ASE', 'TP1', 'TD1'),
(230019, 'Levi', 'Jackson', 'T&F', 'TP2', 'TD1'),
(230020, 'Sophia', 'Lee', 'GI', 'TP2', 'TD1'),
(230021, 'Emma', 'Perez', 'Méca', 'TP2', 'TD1'),
(230022, 'Ava', 'Thompson', 'IR', 'TP2', 'TD1'),
(230023, 'Charlotte', 'White', 'ASE', 'TP2', 'TD1'),
(230024, 'Mia', 'Harris', 'T&F', 'TP2', 'TD1'),
(230025, 'Amelia', 'Martin', 'GI', 'TP2', 'TD1'),
(230026, 'Harper', 'Garcia', 'Méca', 'TP2', 'TD1'),
(230027, 'Evelyn', 'Martinez', 'IR', 'TP2', 'TD1'),
(230028, 'Abigail', 'Robinson', 'ASE', 'TP2', 'TD2'),
(230029, 'Emily', 'Clark', 'T&F', 'TP2', 'TD2'),
(230030, 'Elizabeth', 'Rodriguez', 'GI', 'TP2', 'TD2'),
(230031, 'Mila', 'Lewis', 'Méca', 'TP2', 'TD2'),
(230032, 'Ella', 'Lee', 'IR', 'TP2', 'TD2'),
(230033, 'Avery', 'Walker', 'ASE', 'TP2', 'TD2'),
(230034, 'Sofia', 'Hall', 'T&F', 'TP2', 'TD2'),
(230035, 'Camila', 'Allen', 'GI', 'TP2', 'TD2'),
(230036, 'Aria', 'Young', 'Méca', 'TP2', 'TD2'),
(230037, 'Scarlett', 'King', 'IR', 'TP2', 'TD2'),
(230038, 'Victoria', 'Scott', 'ASE', 'TP3', 'TD2'),
(230039, 'Madison', 'Green', 'T&F', 'TP3', 'TD2'),
(230040, 'Luna', 'Adams', 'GI', 'TP3', 'TD2'),
(230041, 'Grace', 'Baker', 'Méca', 'TP3', 'TD2'),
(230042, 'Chloe', 'Nelson', 'IR', 'TP3', 'TD2'),
(230043, 'Penelope', 'Carter', 'ASE', 'TP3', 'TD2'),
(230044, 'Layla', 'Mitchell', 'T&F', 'TP3', 'TD2'),
(230045, 'Riley', 'Perez', 'GI', 'TP3', 'TD2'),
(230046, 'Zoey', 'Roberts', 'Méca', 'TP3', 'TD2'),
(230047, 'Nora', 'Turner', 'IR', 'TP3', 'TD2'),
(230048, 'Lily', 'Phillips', 'ASE', 'TP3', 'TD2'),
(230049, 'Eleanor', 'Campbell', 'T&F', 'TP3', 'TD2'),
(230050, 'Hannah', 'Parker', 'GI', 'TP3', 'TD2'),
(230051, 'Lillian', 'Evans', 'Méca', 'TP3', 'TD2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
