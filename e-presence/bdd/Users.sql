-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 05 juin 2024 à 00:08
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
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(100) DEFAULT NULL,
  `Prenom` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `MotDePasse` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=MyISAM AUTO_INCREMENT=22305105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`ID`, `Nom`, `Prenom`, `Email`, `MotDePasse`) VALUES
(22304059, 'ABI-ISSI', 'ELIE', 'elie.abi-issi@uha.fr', 'eb141c6f18'),
(22104670, 'ANTROPIUS', 'SIMON', 'simon.antropius@uha.fr', '3d2c822c9c'),
(22304715, 'AUGEY', 'LOUIS', 'louis.augey@uha.fr', '976b84cb62'),
(22305104, 'BAYA', 'HAMZA', 'hamza.baya@uha.fr', '6e10eaddee'),
(22204595, 'BENCHAHBOUN', 'RIM', 'rim.benchahboun@uha.fr', 'd4da2c76f0'),
(22104745, 'BEN-CHARNIA', 'SIRINE', 'sirine.ben-charnia@uha.fr', 'fa2a093d51'),
(22303556, 'BERNARDI', 'NICOLAS', 'nicolas.bernardi@uha.fr', '71ff5e7da3'),
(22104710, 'BOMBA', 'ROMAIN', 'romain.bomba@uha.fr', 'a5f93c5012'),
(22304466, 'BOUARAB', 'LIZA', 'liza.bouarab@uha.fr', '17f58af202'),
(22304010, 'BOURICHI', 'IKRAM', 'ikram.bourichi@uha.fr', 'd465090c2d'),
(22303900, 'CARBON', 'BENJAMIN', 'benjamin.carbon@uha.fr', 'd8a1488462'),
(22304669, 'CHAABANE', 'MEJDA', 'mejda.chaabane@uha.fr', '1d51719a32'),
(22304463, 'CHOUAF', 'MEHDI', 'mehdi.chouaf@uha.fr', '99a9da0f57'),
(22104716, 'DESMONTEIX', 'MAXENCE', 'maxence.desmonteix@uha.fr', '2b71387dc9'),
(22304105, 'DOUARD', 'EVAN', 'evan.douard@uha.fr', '26baaf6d09'),
(22304137, 'EL-MOUJARRADE', 'DOUAE', 'douae.el-moujarrade@uha.fr', '384400802d'),
(21901399, 'ERTZER', 'LUDOVIC', 'ludovic.ertzer@uha.fr', 'd114843aab'),
(22104720, 'ESSLINGER', 'HARRY', 'harry.esslinger@uha.fr', '05a16ea33f'),
(22000139, 'FADLALLAH', 'MOHAMED AMINE', 'mohamed amine.fadlallah@uha.fr', 'b6521f6e8b'),
(22303866, 'GACHA', 'MOHAMED', 'mohamed.gacha@uha.fr', '6c026b74fc'),
(22304055, 'GAILLOT', 'ALBAN', 'alban.gaillot@uha.fr', '4572ce8d4d'),
(22304023, 'GAUTHERET', 'ARNAUD', 'arnaud.gautheret@uha.fr', 'af1b53ccf4'),
(22104756, 'GIRARDAT', 'QUENTIN', 'quentin.girardat@uha.fr', '13e7925361'),
(22304779, 'HAMDANE', 'WISSAM', 'wissam.hamdane@uha.fr', '615825b28b'),
(22303994, 'IBRAHIM', 'ALEXIS', 'alexis.ibrahim@uha.fr', 'e725f49312'),
(22304145, 'JABRI', 'FADWA', 'fadwa.jabri@uha.fr', '6086e632f8'),
(22303899, 'KEMICHA', 'DORRA', 'dorra.kemicha@uha.fr', '3e9e0d4184'),
(22303681, 'KOUIRI', 'OUSSAMA', 'oussama.kouiri@uha.fr', 'bb07f832b1'),
(22304369, 'LAHARGOUE', 'MATTHIS', 'matthis.lahargoue@uha.fr', '2db7231aef'),
(22304768, 'LAMOUALDA', 'SALMA', 'salma.lamoualda@uha.fr', 'eea53b3aa7'),
(22304479, 'LOUSSOUARN', 'QUENTIN', 'quentin.loussouarn@uha.fr', '56a80cbd01'),
(22304117, 'MURRIS', 'VICTOR', 'victor.murris@uha.fr', '1566262e31'),
(22304830, 'NABAT', 'SALAH-EDDINE', 'salah-eddine.nabat@uha.fr', 'def373e814'),
(22303917, 'NAJJI', 'AYA', 'aya.najji@uha.fr', '7f4b7fbe49'),
(22304141, 'OUIDIR', 'NASSIM', 'nassim.ouidir@uha.fr', '9c5f12eda8'),
(22304412, 'OUMALOUL', 'ZYAD', 'zyad.oumaloul@uha.fr', '7291ad0935'),
(22001266, 'PRAVEDNYI', 'OLEG', 'oleg.pravednyi@uha.fr', 'e87f754f29'),
(22304051, 'ROCHDI', 'YOUSSEF', 'youssef.rochdi@uha.fr', 'bfc302155e'),
(22304185, 'ROUTIER', 'REMI', 'remi.routier@uha.fr', '9fe4f9a632'),
(22304902, 'SANCIAUME', 'MAXIME', 'maxime.sanciaume@uha.fr', '53462b0a7a'),
(22104728, 'SENECHAL', 'LOUIS', 'louis.senechal@uha.fr', '79f8698ee2'),
(22304815, 'SOUKHRATI', 'MAROUANE', 'marouane.soukhrati@uha.fr', 'd8710d11ac'),
(22304339, 'TAGHOULT-OUNMIR', 'AMRAN', 'amran.taghoult-ounmir@uha.fr', '284a517d71'),
(22204535, 'THIAM-MAME', 'YACINE', 'yacine.thiam-mame@uha.fr', '1cee909064'),
(22304054, 'TIEMTORE', 'CLOVIS', 'clovis.tiemtore@uha.fr', '7fecad7de3'),
(22303904, 'VANGU', 'ERWAN', 'erwan.vangu@uha.fr', '4072307a1c'),
(22303848, 'WURTZ', 'PERRINE', 'perrine.wurtz@uha.fr', '50ab24c909'),
(1, 'DION', 'Joel', 'joel.dion@uha.fr', 'aa8438ccd3'),
(2, 'ANICIC', 'Sylvia', 'sylvia.anicic@uha.fr', 'af4f3c41de'),
(3, 'THIRY', 'Laurent', 'laurent.thiry@uha.fr', '4160610b30'),
(4, 'STUDER', 'Philippe', 'philippe.studer@uha.fr', 'a8ccc7f4d6'),
(5, 'FORESTIER', 'Germain', 'germain.forestier@uha.fr', 'cf4c490485'),
(6, 'HILT', 'Benoit', 'benoit.hilt@uha.fr', 'a2181886e8'),
(7, 'HAYE', 'Ludovic', 'ludovic.haye@uha.fr', '9546d4b16b'),
(8, 'VIGOUROUX', 'Christian', 'christian.vigouroux@uha.fr', 'df3a6455cd'),
(9, 'RUMA', 'Corinne', 'corinne.ruma@uha.fr', 'd28e769dc3'),
(10, 'GEYER', 'Cyril', 'cyril.geyer@uha.fr', '01a6a432ba'),
(11, 'WEBER', 'Jonathan', 'jonathan.weber@uha.fr', '5d62c0b237');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
