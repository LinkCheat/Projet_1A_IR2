-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 05 juin 2024 à 16:37
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `DATA`
--

-- --------------------------------------------------------

--
-- Structure de la table `absences`
--

CREATE TABLE `absences` (
  `COL 1` varchar(2) DEFAULT NULL,
  `COL 2` varchar(8) DEFAULT NULL,
  `COL 3` varchar(10) DEFAULT NULL,
  `COL 4` varchar(6) DEFAULT NULL,
  `COL 5` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `absences`
--

INSERT INTO `absences` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`) VALUES
('id', 'Id_élève', 'date', 'Absent', 'Motif'),
('1', '22304059', '2024-05-01', '1', 'Rendez-vous médical'),
('2', '22104670', '2024-05-02', '1', 'Urgence familiale'),
('3', '22304715', '2024-05-03', '1', 'Congé maladie'),
('4', '22305104', '2024-05-04', '1', 'Problèmes de transport'),
('5', '22204595', '2024-05-05', '1', 'Raisons personnelles'),
('6', '22304059', '2024-05-06', '1', 'Rendez-vous médical'),
('7', '22104670', '2024-05-07', '1', 'Urgence familiale'),
('8', '22304715', '2024-05-08', '1', 'Congé maladie'),
('9', '22305104', '2024-05-09', '1', 'Problèmes de transport'),
('10', '22204595', '2024-05-10', '1', 'Raisons personnelles'),
('11', '22304902', '2024-06-01', '1', 'Rendez-vous médical'),
('12', '22304902', '2024-06-02', '1', 'Problèmes de transport'),
('13', '22304902', '2024-06-03', '1', 'Raisons personnelles');

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add absences', 7, 'add_absences'),
(26, 'Can change absences', 7, 'change_absences'),
(27, 'Can delete absences', 7, 'delete_absences'),
(28, 'Can view absences', 7, 'view_absences'),
(29, 'Can add filieres', 8, 'add_filieres'),
(30, 'Can change filieres', 8, 'change_filieres'),
(31, 'Can delete filieres', 8, 'delete_filieres'),
(32, 'Can view filieres', 8, 'view_filieres'),
(33, 'Can add matieresir', 9, 'add_matieresir'),
(34, 'Can change matieresir', 9, 'change_matieresir'),
(35, 'Can delete matieresir', 9, 'delete_matieresir'),
(36, 'Can view matieresir', 9, 'view_matieresir'),
(37, 'Can add tableir', 10, 'add_tableir'),
(38, 'Can change tableir', 10, 'change_tableir'),
(39, 'Can delete tableir', 10, 'delete_tableir'),
(40, 'Can view tableir', 10, 'view_tableir'),
(41, 'Can add utilisateurs', 11, 'add_utilisateurs'),
(42, 'Can change utilisateurs', 11, 'change_utilisateurs'),
(43, 'Can delete utilisateurs', 11, 'delete_utilisateurs'),
(44, 'Can view utilisateurs', 11, 'view_utilisateurs');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$jVrPYOtyYDv0BMJ01OOAdp$0FvmLr+AQSrLczIaL8JvDRDdD/7J4amEQ7/obldpNhE=', '2024-06-05 14:04:02.589357', 1, 'alban', '', '', 'alban@uha.fr', 1, 1, '2024-06-05 14:02:17.054212');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-06-05 14:28:16.428424', 'dhzhfghcbdj', 'dhzhfghcbdj', 3, '', 8, 1),
(2, '2024-06-05 14:35:01.064978', 'php', 'php', 1, '[{\"added\": {}}]', 8, 1),
(3, '2024-06-05 14:35:36.572012', 'php', 'php', 3, '', 8, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'epresence_api', 'absences'),
(8, 'epresence_api', 'filieres'),
(9, 'epresence_api', 'matieresir'),
(10, 'epresence_api', 'tableir'),
(11, 'epresence_api', 'utilisateurs'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-06-05 14:00:33.860718'),
(2, 'auth', '0001_initial', '2024-06-05 14:00:34.292469'),
(3, 'admin', '0001_initial', '2024-06-05 14:00:34.380309'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-06-05 14:00:34.388376'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-05 14:00:34.395329'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-06-05 14:00:34.438325'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-06-05 14:00:34.475759'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-06-05 14:00:34.489455'),
(9, 'auth', '0004_alter_user_username_opts', '2024-06-05 14:00:34.496951'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-06-05 14:00:34.527186'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-06-05 14:00:34.531017'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-05 14:00:34.541115'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-06-05 14:00:34.552974'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-05 14:00:34.565041'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-06-05 14:00:34.577480'),
(16, 'auth', '0011_update_proxy_permissions', '2024-06-05 14:00:34.585991'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-05 14:00:34.597993'),
(18, 'sessions', '0001_initial', '2024-06-05 14:00:34.623521');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ys2uwc7l7hwwgopfjinr5ohwqkpyk9gg', '.eJxVjMEOwiAQRP-FsyHdLdLi0bvfQJZdkKqhSWlPxn-XJj3obTLvzbyVp23Nfqtx8ZOoiwJ1-u0C8TOWHciDyn3WPJd1mYLeFX3Qqm-zxNf1cP8OMtXc1qMQDhSQTARDydgeIAg7BsdiE47dGSzyQIldiwjQ24Bgm2mYsVOfL-neN34:1sErFC:_Eap9Ow_FweYYsAs8nJQXVEyoTkz6vxRDcb0a_AAYik', '2024-06-19 14:04:02.593125');

-- --------------------------------------------------------

--
-- Structure de la table `filieres`
--

CREATE TABLE `filieres` (
  `COL 1` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `filieres`
--

INSERT INTO `filieres` (`COL 1`) VALUES
('nom_filiere'),
('Informatique et réseaux'),
('Automatique et systèmes embarqués'),
('Textile et fibre'),
('Génie industriel'),
('Mécanique');

-- --------------------------------------------------------

--
-- Structure de la table `matieresir`
--

CREATE TABLE `matieresir` (
  `COL 1` varchar(10) DEFAULT NULL,
  `COL 2` varchar(48) DEFAULT NULL,
  `COL 3` varchar(7) DEFAULT NULL,
  `COL 4` varchar(8) DEFAULT NULL,
  `COL 5` varchar(11) DEFAULT NULL,
  `COL 6` varchar(22) DEFAULT NULL,
  `COL 7` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `matieresir`
--

INSERT INTO `matieresir` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`) VALUES
('matiere_id', 'nom_matiere', 'filiere', 'semestre', 'coefficient', 'ue', 'total_heures'),
('IR-5.1', 'Immersion', 'IR', 'S5', '4', 'IR_UE1_Fondamentaux_S5', '70'),
('IR-5.2.1', 'Mathématiques discrètes I', 'IR', 'S5', '2', 'IR_UE2_Analyse_S5', '20'),
('IR-5.2.2', 'Mathématiques discrètes II', 'IR', 'S5', '2', 'IR_UE2_Analyse_S5', '24'),
('IR-5.2.3', 'Mathématiques et signal', 'IR', 'S5', '2', 'IR_UE2_Analyse_S5', '28'),
('IR-5.2.4', 'Programmation fonctionnelle & preuves', 'IR', 'S5', '2', 'IR_UE2_Analyse_S5', '20'),
('IR-5.3.1', 'Architecture des ordinateurs', 'IR', 'S5', '2', 'IR_UE1_Fondamentaux_S5', '10'),
('IR-5.3.2', 'ICG', 'IR', 'S5', '2', 'IR_UE1_Fondamentaux_S5', '26'),
('IR-5.3.3', 'Découverte des Réseaux', 'IR', 'S5', '2', 'IR_UE1_Fondamentaux_S5', '25'),
('IR-5.3.4', 'Unix commandes de base', 'IR', 'S5', '2', 'IR_UE1_Fondamentaux_S5', '24'),
('IR-5.3.5', 'Systèmes d’exploitation', 'IR', 'S5', '2', 'IR_UE1_Fondamentaux_S5', '30'),
('IR-5.3.6', 'Algorithmie et structures de données-C', 'IR', 'S5', '2', 'IR_UE1_Fondamentaux_S5', '30'),
('IR-5.4.1', 'Technologies WEB I', 'IR', 'S5', '2', 'IR_UE1_Fondamentaux_S5', '20'),
('IR-5.4.2', 'Technologies WEB II', 'IR', 'S5', '2', 'IR_UE1_Fondamentaux_S5', '20'),
('IR-5.4.3', 'Programmation WEB', 'IR', 'S5', '2', 'IR_UE1_Fondamentaux_S5', '20'),
('IR-5.5.1', 'Recherche bibliographique', 'IR', 'S5', '1', 'IR_UE1_Fondamentaux_S5', '4'),
('IR-5.5.2', 'Communiquer et présenter un projet', 'IR', 'S5', '1', 'IR_UE1_Fondamentaux_S5', '2'),
('IR-5.5.3', 'Analyse de la valeur', 'IR', 'S5', '1', 'IR_UE1_Fondamentaux_S5', '4'),
('IR-5.5.4', 'Projet Professionnel/Connaissance de soi', 'IR', 'S5', '1', 'IR_UE1_Fondamentaux_S5', '8'),
('IR-5.5.5', 'CV/Lettre de motivation', 'IR', 'S5', '1', 'IR_UE1_Fondamentaux_S5', '4'),
('IR-5.5.6', 'Français - Projet Voltaire (en ligne)', 'IR', 'S5', '1', 'IR_UE1_Fondamentaux_S5', '6'),
('IR-5.6.1', 'Anglais', 'IR', 'S5', '2', 'LV', '24'),
('IR-6.1', 'Maths générales', 'IR', 'S6', '4', 'IR_UE1_Maths_S6', '80'),
('IR-6.1.1', 'Calcul matriciel', 'IR', 'S6', '1', 'IR_UE1_Maths_S6', '10'),
('IR-6.1.2', 'Analyse générale', 'IR', 'S6', '1', 'IR_UE1_Maths_S6', '10'),
('IR-6.1.3', 'Statistiques et systèmes stochastiques', 'IR', 'S6', '1', 'IR_UE1_Maths_S6', '28'),
('IR-6.1.4', 'Analyse numérique et calcul scientifique', 'IR', 'S6', '1', 'IR_UE1_Maths_S6', '20'),
('IR-6.1.5', 'Projet', 'IR', 'S6', '1', 'IR_UE1_Maths_S6', '12'),
('IR-6.2', 'Ingénierie objet', 'IR', 'S6', '6', 'IR_UE2_Objets_S6', '76'),
('IR-6.2.1', 'AOO & langage Java', 'IR', 'S6', '2', 'IR_UE2_Objets_S6', '32'),
('IR-6.2.2', 'UML', 'IR', 'S6', '2', 'IR_UE2_Objets_S6', '24'),
('IR-6.2.3', 'Projet', 'IR', 'S6', '2', 'IR_UE2_Objets_S6', '20'),
('IR-6.3', 'Données', 'IR', 'S6', '4', 'IR_UE2_Data_S6', '62'),
('IR-6.3.1', 'SGBD', 'IR', 'S6', '2', 'IR_UE2_Data_S6', '28'),
('IR-6.3.2', 'BI', 'IR', 'S6', '2', 'IR_UE2_Data_S6', '34'),
('IR-7.1', 'Programmation système', 'IR', 'S7', '5', 'IR_UE1_System_S7', '82'),
('IR-7.1.1', 'Théorie des langages', 'IR', 'S7', '1', 'IR_UE1_System_S7', '24'),
('IR-7.1.2', 'Programmation système (API Unix)', 'IR', 'S7', '1', 'IR_UE1_System_S7', '20'),
('IR-7.1.3', 'Langage C++', 'IR', 'S7', '1', 'IR_UE1_System_S7', '38'),
('IR-7.2', 'Ingénierie Logicielle I', 'IR', 'S7', '6', 'IR_UE1_Logiciel_S7', '86'),
('IR-7.2.1', 'Génie logiciel', 'IR', 'S7', '1', 'IR_UE1_Logiciel_S7', '20'),
('IR-7.2.2', 'Industrialisation logicielle', 'IR', 'S7', '1', 'IR_UE1_Logiciel_S7', '22'),
('IR-7.2.3', 'Architectures à objets et Design Pattern', 'IR', 'S7', '1', 'IR_UE1_Logiciel_S7', '20'),
('IR-7.2.4', 'Architecture des IHM', 'IR', 'S7', '1', 'IR_UE1_Logiciel_S7', '24'),
('IR-8.1', 'Ingénierie des langages et modèles', 'IR', 'S8', '8', 'IR_UE1_Langages_S8', '94'),
('IR-8.1.1', 'Réseaux (architecture, protocole, programmation)', 'IR', 'S8', '2', 'IR_UE1_Langages_S8', '26'),
('IR-8.1.2', 'Compilation', 'IR', 'S8', '2', 'IR_UE1_Langages_S8', '28'),
('IR-8.1.3', 'Représentation et analyse de documents', 'IR', 'S8', '2', 'IR_UE1_Langages_S8', '20'),
('IR-8.1.4', 'Eco-conception', 'IR', 'S8', '2', 'IR_UE1_Langages_S8', '20'),
('IR-8.2', 'Science des données II', 'IR', 'S8', '9', 'IR_UE2_Data_S8', '92'),
('IR-8.2.1', 'IA/Optimisation', 'IR', 'S8', '2', 'IR_UE2_Data_S8', '10'),
('IR-8.2.2', 'Cloud Computing', 'IR', 'S8', '2', 'IR_UE2_Data_S8', '30'),
('IR-8.2.3', 'Deep Learning I', 'IR', 'S8', '2', 'IR_UE2_Data_S8', '24'),
('IR-8.2.4', 'Mathématiques pour les datasciences', 'IR', 'S8', '2', 'IR_UE2_Data_S8', '28');

-- --------------------------------------------------------

--
-- Structure de la table `tableir`
--

CREATE TABLE `tableir` (
  `COL 1` varchar(10) DEFAULT NULL,
  `COL 2` varchar(13) DEFAULT NULL,
  `COL 3` varchar(15) DEFAULT NULL,
  `COL 4` varchar(9) DEFAULT NULL,
  `COL 5` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `tableir`
--

INSERT INTO `tableir` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`) VALUES
('student_id', 'prenom', 'nom', 'groupe_TD', 'groupe_TP'),
('22304059', 'ELIE', 'ABI-ISSI', 'TD1', 'TP1'),
('22104670', 'SIMON', 'ANTROPIUS', 'TD1', 'TP1'),
('22304715', 'LOUIS', 'AUGEY', 'TD1', 'TP1'),
('22305104', 'HAMZA', 'BAYA', 'TD1', 'TP1'),
('22204595', 'RIM', 'BENCHAHBOUN', 'TD1', 'TP1'),
('22104745', 'SIRINE', 'BEN-CHARNIA', 'TD1', 'TP1'),
('22303556', 'NICOLAS', 'BERNARDI', 'TD1', 'TP1'),
('22104710', 'ROMAIN', 'BOMBA', 'TD1', 'TP1'),
('22304466', 'LIZA', 'BOUARAB', 'TD1', 'TP1'),
('22304010', 'IKRAM', 'BOURICHI', 'TD1', 'TP1'),
('22303900', 'BENJAMIN', 'CARBON', 'TD1', 'TP1'),
('22304669', 'MEJDA', 'CHAABANE', 'TD1', 'TP1'),
('22304463', 'MEHDI', 'CHOUAF', 'TD1', 'TP1'),
('22104716', 'MAXENCE', 'DESMONTEIX', 'TD1', 'TP1'),
('22304105', 'EVAN', 'DOUARD', 'TD1', 'TP1'),
('22304137', 'DOUAE', 'EL-MOUJARRADE', 'TD1', 'TP1'),
('21901399', 'LUDOVIC', 'ERTZER', 'TD1', 'TP1'),
('22104720', 'HARRY', 'ESSLINGER', 'TD1', 'TP1'),
('22000139', 'MOHAMED AMINE', 'FADLALLAH', 'TD1', 'TP1'),
('22303866', 'MOHAMED', 'GACHA', 'TD1', 'TP1'),
('22304055', 'ALBAN', 'GAILLOT', 'TD2', 'TP2'),
('22304023', 'ARNAUD', 'GAUTHERET', 'TD2', 'TP2'),
('22104756', 'QUENTIN', 'GIRARDAT', 'TD2', 'TP2'),
('22304779', 'WISSAM', 'HAMDANE', 'TD2', 'TP2'),
('22303994', 'ALEXIS', 'IBRAHIM', 'TD2', 'TP2'),
('22304145', 'FADWA', 'JABRI', 'TD2', 'TP2'),
('22303899', 'DORRA', 'KEMICHA', 'TD2', 'TP2'),
('22303681', 'OUSSAMA', 'KOUIRI', 'TD2', 'TP2'),
('22304369', 'MATTHIS', 'LAHARGOUE', 'TD2', 'TP2'),
('22304768', 'SALMA', 'LAMOUALDA', 'TD2', 'TP2'),
('22304479', 'QUENTIN', 'LOUSSOUARN', 'TD2', 'TP2'),
('22304117', 'VICTOR', 'MURRIS', 'TD2', 'TP2'),
('22304830', 'SALAH-EDDINE', 'NABAT', 'TD2', 'TP2'),
('22303917', 'AYA', 'NAJJI', 'TD2', 'TP2'),
('22304141', 'NASSIM', 'OUIDIR', 'TD2', 'TP2'),
('22304412', 'ZYAD', 'OUMALOUL', 'TD2', 'TP2'),
('22001266', 'OLEG', 'PRAVEDNYI', 'TD2', 'TP2'),
('22304051', 'YOUSSEF', 'ROCHDI', 'TD2', 'TP2'),
('22304185', 'REMI', 'ROUTIER', 'TD2', 'TP2'),
('22304902', 'MAXIME', 'SANCIAUME', 'TD2', 'TP2'),
('22104728', 'LOUIS', 'SENECHAL', 'TD2', 'TP3'),
('22304815', 'MAROUANE', 'SOUKHRATI', 'TD2', 'TP3'),
('22304339', 'AMRAN', 'TAGHOULT-OUNMIR', 'TD2', 'TP3'),
('22204535', 'YACINE', 'THIAM-MAME', 'TD2', 'TP3'),
('22304054', 'CLOVIS', 'TIEMTORE', 'TD1', 'TP3'),
('22303904', 'ERWAN', 'VANGU', 'TD1', 'TP3'),
('22303848', 'PERRINE', 'WURTZ', 'TD1', 'TP3');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `COL 1` varchar(8) DEFAULT NULL,
  `COL 2` varchar(15) DEFAULT NULL,
  `COL 3` varchar(13) DEFAULT NULL,
  `COL 4` varchar(30) DEFAULT NULL,
  `COL 5` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`) VALUES
('ID', 'Nom', 'Prenom', 'Email', 'MotDePasse'),
('22304059', 'ABI-ISSI', 'ELIE', 'elie.abi-issi@uha.fr', 'eb141c6f18'),
('22104670', 'ANTROPIUS', 'SIMON', 'simon.antropius@uha.fr', '3d2c822c9c'),
('22304715', 'AUGEY', 'LOUIS', 'louis.augey@uha.fr', '976b84cb62'),
('22305104', 'BAYA', 'HAMZA', 'hamza.baya@uha.fr', '6e10eaddee'),
('22204595', 'BENCHAHBOUN', 'RIM', 'rim.benchahboun@uha.fr', 'd4da2c76f0'),
('22104745', 'BEN-CHARNIA', 'SIRINE', 'sirine.ben-charnia@uha.fr', 'fa2a093d51'),
('22303556', 'BERNARDI', 'NICOLAS', 'nicolas.bernardi@uha.fr', '71ff5e7da3'),
('22104710', 'BOMBA', 'ROMAIN', 'romain.bomba@uha.fr', 'a5f93c5012'),
('22304466', 'BOUARAB', 'LIZA', 'liza.bouarab@uha.fr', '17f58af202'),
('22304010', 'BOURICHI', 'IKRAM', 'ikram.bourichi@uha.fr', 'd465090c2d'),
('22303900', 'CARBON', 'BENJAMIN', 'benjamin.carbon@uha.fr', 'd8a1488462'),
('22304669', 'CHAABANE', 'MEJDA', 'mejda.chaabane@uha.fr', '1d51719a32'),
('22304463', 'CHOUAF', 'MEHDI', 'mehdi.chouaf@uha.fr', '99a9da0f57'),
('22104716', 'DESMONTEIX', 'MAXENCE', 'maxence.desmonteix@uha.fr', '2b71387dc9'),
('22304105', 'DOUARD', 'EVAN', 'evan.douard@uha.fr', '26baaf6d09'),
('22304137', 'EL-MOUJARRADE', 'DOUAE', 'douae.el-moujarrade@uha.fr', '384400802d'),
('21901399', 'ERTZER', 'LUDOVIC', 'ludovic.ertzer@uha.fr', 'd114843aab'),
('22104720', 'ESSLINGER', 'HARRY', 'harry.esslinger@uha.fr', '05a16ea33f'),
('22000139', 'FADLALLAH', 'MOHAMED AMINE', 'mohamed amine.fadlallah@uha.fr', 'b6521f6e8b'),
('22303866', 'GACHA', 'MOHAMED', 'mohamed.gacha@uha.fr', '6c026b74fc'),
('22304055', 'GAILLOT', 'ALBAN', 'alban.gaillot@uha.fr', '4572ce8d4d'),
('22304023', 'GAUTHERET', 'ARNAUD', 'arnaud.gautheret@uha.fr', 'af1b53ccf4'),
('22104756', 'GIRARDAT', 'QUENTIN', 'quentin.girardat@uha.fr', '13e7925361'),
('22304779', 'HAMDANE', 'WISSAM', 'wissam.hamdane@uha.fr', '615825b28b'),
('22303994', 'IBRAHIM', 'ALEXIS', 'alexis.ibrahim@uha.fr', 'e725f49312'),
('22304145', 'JABRI', 'FADWA', 'fadwa.jabri@uha.fr', '6086e632f8'),
('22303899', 'KEMICHA', 'DORRA', 'dorra.kemicha@uha.fr', '3e9e0d4184'),
('22303681', 'KOUIRI', 'OUSSAMA', 'oussama.kouiri@uha.fr', 'bb07f832b1'),
('22304369', 'LAHARGOUE', 'MATTHIS', 'matthis.lahargoue@uha.fr', '2db7231aef'),
('22304768', 'LAMOUALDA', 'SALMA', 'salma.lamoualda@uha.fr', 'eea53b3aa7'),
('22304479', 'LOUSSOUARN', 'QUENTIN', 'quentin.loussouarn@uha.fr', '56a80cbd01'),
('22304117', 'MURRIS', 'VICTOR', 'victor.murris@uha.fr', '1566262e31'),
('22304830', 'NABAT', 'SALAH-EDDINE', 'salah-eddine.nabat@uha.fr', 'def373e814'),
('22303917', 'NAJJI', 'AYA', 'aya.najji@uha.fr', '7f4b7fbe49'),
('22304141', 'OUIDIR', 'NASSIM', 'nassim.ouidir@uha.fr', '9c5f12eda8'),
('22304412', 'OUMALOUL', 'ZYAD', 'zyad.oumaloul@uha.fr', '7291ad0935'),
('22001266', 'PRAVEDNYI', 'OLEG', 'oleg.pravednyi@uha.fr', 'e87f754f29'),
('22304051', 'ROCHDI', 'YOUSSEF', 'youssef.rochdi@uha.fr', 'bfc302155e'),
('22304185', 'ROUTIER', 'REMI', 'remi.routier@uha.fr', '9fe4f9a632'),
('22304902', 'SANCIAUME', 'MAXIME', 'maxime.sanciaume@uha.fr', '53462b0a7a'),
('22104728', 'SENECHAL', 'LOUIS', 'louis.senechal@uha.fr', '79f8698ee2'),
('22304815', 'SOUKHRATI', 'MAROUANE', 'marouane.soukhrati@uha.fr', 'd8710d11ac'),
('22304339', 'TAGHOULT-OUNMIR', 'AMRAN', 'amran.taghoult-ounmir@uha.fr', '284a517d71'),
('22204535', 'THIAM-MAME', 'YACINE', 'yacine.thiam-mame@uha.fr', '1cee909064'),
('22304054', 'TIEMTORE', 'CLOVIS', 'clovis.tiemtore@uha.fr', '7fecad7de3'),
('22303904', 'VANGU', 'ERWAN', 'erwan.vangu@uha.fr', '4072307a1c'),
('22303848', 'WURTZ', 'PERRINE', 'perrine.wurtz@uha.fr', '50ab24c909'),
('1', 'DION', 'Joel', 'joel.dion@uha.fr', 'aa8438ccd3'),
('2', 'ANICIC', 'Sylvia', 'sylvia.anicic@uha.fr', 'af4f3c41de'),
('3', 'THIRY', 'Laurent', 'laurent.thiry@uha.fr', '4160610b30'),
('4', 'STUDER', 'Philippe', 'philippe.studer@uha.fr', 'a8ccc7f4d6'),
('5', 'FORESTIER', 'Germain', 'germain.forestier@uha.fr', 'cf4c490485'),
('6', 'HILT', 'Benoit', 'benoit.hilt@uha.fr', 'a2181886e8'),
('7', 'HAYE', 'Ludovic', 'ludovic.haye@uha.fr', '9546d4b16b'),
('8', 'VIGOUROUX', 'Christian', 'christian.vigouroux@uha.fr', 'df3a6455cd'),
('9', 'RUMA', 'Corinne', 'corinne.ruma@uha.fr', 'd28e769dc3'),
('10', 'GEYER', 'Cyril', 'cyril.geyer@uha.fr', '01a6a432ba'),
('11', 'WEBER', 'Jonathan', 'jonathan.weber@uha.fr', '5d62c0b237');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
