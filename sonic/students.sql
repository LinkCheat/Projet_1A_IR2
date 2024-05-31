-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 31 mai 2024 à 13:41
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
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=230052 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`student_id`, `first_name`, `last_name`, `field_of_study`) VALUES
(230001, 'Ethan', 'Smith', 'Informatique et réseaux'),
(230002, 'Noah', 'Johnson', 'Informatique et réseaux'),
(230003, 'William', 'Williams', 'Automatique et systèmes embarqués'),
(230004, 'James', 'Brown', 'Textile et fibre'),
(230005, 'Oliver', 'Jones', 'Génie industriel'),
(230006, 'Benjamin', 'Garcia', 'Mécanique'),
(230007, 'Lucas', 'Miller', 'Informatique et réseaux'),
(230008, 'Mason', 'Davis', 'Automatique et systèmes embarqués'),
(230009, 'Elijah', 'Rodriguez', 'Textile et fibre'),
(230010, 'Logan', 'Martinez', 'Génie industriel'),
(230011, 'Alexander', 'Hernandez', 'Mécanique'),
(230012, 'Sebastian', 'Lopez', 'Informatique et réseaux'),
(230013, 'Jack', 'Gonzalez', 'Automatique et systèmes embarqués'),
(230014, 'Aiden', 'Wilson', 'Textile et fibre'),
(230015, 'Owen', 'Anderson', 'Génie industriel'),
(230016, 'Samuel', 'Thomas', 'Mécanique'),
(230017, 'Matthew', 'Taylor', 'Informatique et réseaux'),
(230018, 'Joseph', 'Moore', 'Automatique et systèmes embarqués'),
(230019, 'Levi', 'Jackson', 'Textile et fibre'),
(230020, 'Sophia', 'Lee', 'Génie industriel'),
(230021, 'Emma', 'Perez', 'Mécanique'),
(230022, 'Ava', 'Thompson', 'Informatique et réseaux'),
(230023, 'Charlotte', 'White', 'Automatique et systèmes embarqués'),
(230024, 'Mia', 'Harris', 'Textile et fibre'),
(230025, 'Amelia', 'Martin', 'Génie industriel'),
(230026, 'Harper', 'Garcia', 'Mécanique'),
(230027, 'Evelyn', 'Martinez', 'Informatique et réseaux'),
(230028, 'Abigail', 'Robinson', 'Automatique et systèmes embarqués'),
(230029, 'Emily', 'Clark', 'Textile et fibre'),
(230030, 'Elizabeth', 'Rodriguez', 'Génie industriel'),
(230031, 'Mila', 'Lewis', 'Mécanique'),
(230032, 'Ella', 'Lee', 'Informatique et réseaux'),
(230033, 'Avery', 'Walker', 'Automatique et systèmes embarqués'),
(230034, 'Sofia', 'Hall', 'Textile et fibre'),
(230035, 'Camila', 'Allen', 'Génie industriel'),
(230036, 'Aria', 'Young', 'Mécanique'),
(230037, 'Scarlett', 'King', 'Informatique et réseaux'),
(230038, 'Victoria', 'Scott', 'Automatique et systèmes embarqués'),
(230039, 'Madison', 'Green', 'Textile et fibre'),
(230040, 'Luna', 'Adams', 'Génie industriel'),
(230041, 'Grace', 'Baker', 'Mécanique'),
(230042, 'Chloe', 'Nelson', 'Informatique et réseaux'),
(230043, 'Penelope', 'Carter', 'Automatique et systèmes embarqués'),
(230044, 'Layla', 'Mitchell', 'Textile et fibre'),
(230045, 'Riley', 'Perez', 'Génie industriel'),
(230046, 'Zoey', 'Roberts', 'Mécanique'),
(230047, 'Nora', 'Turner', 'Informatique et réseaux'),
(230048, 'Lily', 'Phillips', 'Automatique et systèmes embarqués'),
(230049, 'Eleanor', 'Campbell', 'Textile et fibre'),
(230050, 'Hannah', 'Parker', 'Génie industriel'),
(230051, 'Lillian', 'Evans', 'Mécanique');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
