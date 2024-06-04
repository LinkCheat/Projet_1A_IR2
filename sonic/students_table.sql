-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 04 juin 2024 à 07:26
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
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=230052 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`student_id`, `first_name`, `last_name`, `field_of_study`, `groupe_tp`) VALUES
(230001, 'Ethan', 'Smith', 'Informatique et réseaux', 'TP1'),
(230002, 'Noah', 'Johnson', 'Informatique et réseaux', 'TP1'),
(230003, 'William', 'Williams', 'Automatique et systèmes embarqués', 'TP1'),
(230004, 'James', 'Brown', 'Textile et fibre', 'TP1'),
(230005, 'Oliver', 'Jones', 'Génie industriel', 'TP1'),
(230006, 'Benjamin', 'Garcia', 'Mécanique', 'TP1'),
(230007, 'Lucas', 'Miller', 'Informatique et réseaux', 'TP1'),
(230008, 'Mason', 'Davis', 'Automatique et systèmes embarqués', 'TP1'),
(230009, 'Elijah', 'Rodriguez', 'Textile et fibre', 'TP1'),
(230010, 'Logan', 'Martinez', 'Génie industriel', 'TP1'),
(230011, 'Alexander', 'Hernandez', 'Mécanique', 'TP1'),
(230012, 'Sebastian', 'Lopez', 'Informatique et réseaux', 'TP1'),
(230013, 'Jack', 'Gonzalez', 'Automatique et systèmes embarqués', 'TP1'),
(230014, 'Aiden', 'Wilson', 'Textile et fibre', 'TP1'),
(230015, 'Owen', 'Anderson', 'Génie industriel', 'TP1'),
(230016, 'Samuel', 'Thomas', 'Mécanique', 'TP1'),
(230017, 'Matthew', 'Taylor', 'Informatique et réseaux', 'TP1'),
(230018, 'Joseph', 'Moore', 'Automatique et systèmes embarqués', 'TP1'),
(230019, 'Levi', 'Jackson', 'Textile et fibre', 'TP2'),
(230020, 'Sophia', 'Lee', 'Génie industriel', 'TP2'),
(230021, 'Emma', 'Perez', 'Mécanique', 'TP2'),
(230022, 'Ava', 'Thompson', 'Informatique et réseaux', 'TP2'),
(230023, 'Charlotte', 'White', 'Automatique et systèmes embarqués', 'TP2'),
(230024, 'Mia', 'Harris', 'Textile et fibre', 'TP2'),
(230025, 'Amelia', 'Martin', 'Génie industriel', 'TP2'),
(230026, 'Harper', 'Garcia', 'Mécanique', 'TP2'),
(230027, 'Evelyn', 'Martinez', 'Informatique et réseaux', 'TP2'),
(230028, 'Abigail', 'Robinson', 'Automatique et systèmes embarqués', 'TP2'),
(230029, 'Emily', 'Clark', 'Textile et fibre', 'TP2'),
(230030, 'Elizabeth', 'Rodriguez', 'Génie industriel', 'TP2'),
(230031, 'Mila', 'Lewis', 'Mécanique', 'TP2'),
(230032, 'Ella', 'Lee', 'Informatique et réseaux', 'TP2'),
(230033, 'Avery', 'Walker', 'Automatique et systèmes embarqués', 'TP2'),
(230034, 'Sofia', 'Hall', 'Textile et fibre', 'TP2'),
(230035, 'Camila', 'Allen', 'Génie industriel', 'TP2'),
(230036, 'Aria', 'Young', 'Mécanique', 'TP2'),
(230037, 'Scarlett', 'King', 'Informatique et réseaux', 'TP2'),
(230038, 'Victoria', 'Scott', 'Automatique et systèmes embarqués', 'TP3'),
(230039, 'Madison', 'Green', 'Textile et fibre', 'TP3'),
(230040, 'Luna', 'Adams', 'Génie industriel', 'TP3'),
(230041, 'Grace', 'Baker', 'Mécanique', 'TP3'),
(230042, 'Chloe', 'Nelson', 'Informatique et réseaux', 'TP3'),
(230043, 'Penelope', 'Carter', 'Automatique et systèmes embarqués', 'TP3'),
(230044, 'Layla', 'Mitchell', 'Textile et fibre', 'TP3'),
(230045, 'Riley', 'Perez', 'Génie industriel', 'TP3'),
(230046, 'Zoey', 'Roberts', 'Mécanique', 'TP3'),
(230047, 'Nora', 'Turner', 'Informatique et réseaux', 'TP3'),
(230048, 'Lily', 'Phillips', 'Automatique et systèmes embarqués', 'TP3'),
(230049, 'Eleanor', 'Campbell', 'Textile et fibre', 'TP3'),
(230050, 'Hannah', 'Parker', 'Génie industriel', 'TP3'),
(230051, 'Lillian', 'Evans', 'Mécanique', 'TP3');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
