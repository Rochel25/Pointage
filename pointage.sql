-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 14 juin 2021 à 14:12
-- Version du serveur :  5.7.19
-- Version de PHP :  7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pointage`
--

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `NUMEMP` int(5) NOT NULL,
  `NUMFONCT` int(5) NOT NULL,
  `NOMEMP` varchar(128) NOT NULL,
  `PRENOMEMP` varchar(50) NOT NULL,
  `CONTACT` varchar(10) NOT NULL,
  PRIMARY KEY (`NUMEMP`),
  KEY `I_FK_EMPLOYE_FONCTION` (`NUMFONCT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`NUMEMP`, `NUMFONCT`, `NOMEMP`, `PRENOMEMP`, `CONTACT`) VALUES
(1, 1, 'RAKOTONDRANAIVO', 'Yvon', '0320462685'),
(2, 2, 'RAZAFITONINJARA', 'Erdelin', '0327631836'),
(3, 4, 'RANDIMBISON', 'Alina', '0320726613'),
(4, 6, 'RATELOSON', 'Domoina', '0321445632'),
(5, 5, 'RAMANANTSOA', 'Hasiniaina', '0321445623');

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

DROP TABLE IF EXISTS `fonction`;
CREATE TABLE IF NOT EXISTS `fonction` (
  `NUMFONCT` int(5) NOT NULL AUTO_INCREMENT,
  `NOMFONCT` varchar(150) NOT NULL,
  `CATFONCT` varchar(128) NOT NULL,
  PRIMARY KEY (`NUMFONCT`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`NUMFONCT`, `NOMFONCT`, `CATFONCT`) VALUES
(1, 'Directeur Inter-Régional', 'DIRECTION'),
(2, 'Responsable en Suivi Evaluation', 'DIRECTION'),
(3, 'Assistante informatique', 'DIRECTION'),
(4, 'Secrétaire de Direction', 'DIRECTION'),
(5, 'Chef de Service Administratif et Financier', 'SERVICE ADMINITRATIF ET FINANCE'),
(6, 'Comptable', 'SERVICE ADMINITRATIF ET FINANCE'),
(7, 'Assistant Comptable PAEB', 'SERVICE ADMINITRATIF ET FINANCE'),
(8, 'Comptable CERC', 'SERVICE ADMINITRATIF ET FINANCE'),
(9, 'Chef de Service des Opérations Environnements', 'SERVICE DES OPERATIONS ET ENVIRONNEMENT'),
(10, 'Socio-organisateur Chargé du Gouvernance Citoyenne et Cas Spéciaux', 'SERVICE DES OPERATIONS ET ENVIRONNEMENT'),
(11, 'Socio-organisateur - Sauvegarde Environnementale Sociale et Sécurisation', 'SERVICE DES OPERATIONS ET ENVIRONNEMENT'),
(12, 'Socio-organisateur Chargé de Mesure d\'Accompagnement', 'SERVICE DES OPERATIONS ET ENVIRONNEMENT'),
(13, 'Responsable de Transfert Monétaire pour le Développement Humain', 'SERVICE DES OPERATIONS ET ENVIRONNEMENT'),
(14, 'Responsable CERC', 'SERVICE DES OPERATIONS ET ENVIRONNEMENT'),
(15, 'Ingénieur Responsable Inclusion Productive', 'SERVICE DES OPERATIONS ET ENVIRONNEMENT'),
(16, 'Socio-organisateur - Argent Contre Travail Productif', 'SERVICE DES OPERATIONS ET ENVIRONNEMENT'),
(17, 'Socio-organisateur - FSP', 'SERVICE DES OPERATIONS ET ENVIRONNEMENT'),
(18, 'Ingénieur du Programme PAEB', 'SERVICE DES OPERATIONS ET ENVIRONNEMENT'),
(19, 'Socio-organisateur  CERC', 'SERVICE DES OPERATIONS ET ENVIRONNEMENT'),
(20, 'Socio-organisateur /RPI', 'SERVICE DES OPERATIONS ET ENVIRONNEMENT'),
(21, 'Socio-organisateur-Transfert Monétaire pour le Développement Humain', 'SERVICE DES OPERATIONS ET ENVIRONNEMENT'),
(22, 'Socio-organisateur-LUL', 'SERVICE DES OPERATIONS ET ENVIRONNEMENT'),
(23, 'Chauffeur', 'PERSONNEL D‘APPUI'),
(24, 'Gardien', 'PERSONNEL D‘APPUI'),
(25, 'Femme de ménage', 'PERSONNEL D‘APPUI'),
(26, 'Stagiaire SAF', 'STAGIAIRES'),
(27, 'Stagiaire CERC', 'STAGIAIRES'),
(28, 'Stagiaire SI', 'STAGIAIRES'),
(29, 'Stagiaire SD', 'STAGIAIRES'),
(30, 'Stagiaire TMDH', 'STAGIAIRES'),
(31, 'Stagiaire FSP', 'STAGIAIRES');

-- --------------------------------------------------------

--
-- Structure de la table `pointage`
--

DROP TABLE IF EXISTS `pointage`;
CREATE TABLE IF NOT EXISTS `pointage` (
  `IDPOINTAGE` int(5) NOT NULL AUTO_INCREMENT,
  `NUMEMP` int(6) NOT NULL,
  `NUMFONCT` int(5) NOT NULL,
  `DATEPOINTAGE` date NOT NULL,
  `HEUREENTMA` time NOT NULL,
  `HEURESORTMA` time NOT NULL,
  `HEUREENTSO` time NOT NULL,
  `HEURESORTSO` time NOT NULL,
  `OBSERVATION1` varchar(128) NOT NULL,
  PRIMARY KEY (`IDPOINTAGE`),
  KEY `I_FK_POINTAGE_EMPLOYE` (`NUMEMP`),
  KEY `NUMFONCT` (`NUMFONCT`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pointage`
--

INSERT INTO `pointage` (`IDPOINTAGE`, `NUMEMP`, `NUMFONCT`, `DATEPOINTAGE`, `HEUREENTMA`, `HEURESORTMA`, `HEUREENTSO`, `HEURESORTSO`, `OBSERVATION1`) VALUES
(1, 1, 1, '2021-05-10', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(2, 2, 2, '2021-05-10', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(3, 3, 4, '2021-05-10', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(4, 1, 1, '2021-05-11', '08:12:00', '20:14:00', '00:00:00', '00:00:00', ''),
(5, 2, 2, '2021-05-11', '20:21:00', '20:26:00', '00:00:00', '00:00:00', ''),
(6, 3, 4, '2021-05-11', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(7, 1, 1, '2021-05-21', '22:07:00', '22:07:00', '00:00:00', '00:00:00', ''),
(8, 2, 2, '2021-05-21', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(9, 3, 4, '2021-05-21', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(10, 4, 6, '2021-05-21', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(11, 1, 1, '2021-05-22', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(12, 2, 2, '2021-05-22', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(13, 3, 4, '2021-05-22', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(14, 4, 6, '2021-05-22', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(15, 1, 1, '2021-05-25', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(16, 2, 2, '2021-05-25', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(17, 3, 4, '2021-05-25', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(18, 4, 6, '2021-05-25', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(19, 1, 1, '2021-05-26', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(20, 2, 2, '2021-05-26', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(21, 3, 4, '2021-05-26', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(22, 4, 6, '2021-05-26', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(23, 1, 1, '2021-05-27', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(24, 2, 2, '2021-05-27', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(25, 3, 4, '2021-05-27', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(26, 4, 6, '2021-05-27', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(27, 1, 1, '2021-05-31', '20:51:00', '20:51:00', '00:00:00', '00:00:00', ''),
(28, 2, 2, '2021-05-31', '21:13:00', '21:15:00', '00:00:00', '00:00:00', ''),
(29, 3, 4, '2021-05-31', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(30, 4, 6, '2021-05-31', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(31, 1, 1, '2021-06-01', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(32, 2, 2, '2021-06-01', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(33, 3, 4, '2021-06-01', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(34, 4, 6, '2021-06-01', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(35, 5, 5, '2021-06-01', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(37, 1, 1, '2021-06-03', '14:29:00', '14:32:00', '15:11:00', '15:19:00', ''),
(38, 2, 2, '2021-06-03', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(39, 3, 4, '2021-06-03', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(40, 4, 6, '2021-06-03', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(41, 5, 5, '2021-06-03', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(42, 1, 1, '2021-06-04', '08:41:00', '00:00:00', '00:00:00', '00:00:00', ''),
(43, 2, 2, '2021-06-04', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(44, 3, 4, '2021-06-04', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(45, 4, 6, '2021-06-04', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(46, 5, 5, '2021-06-04', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(47, 1, 1, '2021-06-08', '15:29:00', '15:30:00', '00:00:00', '00:00:00', ''),
(48, 2, 2, '2021-06-08', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(49, 3, 4, '2021-06-08', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(50, 4, 6, '2021-06-08', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(51, 5, 5, '2021-06-08', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(52, 1, 1, '2021-06-10', '22:50:00', '22:51:00', '00:00:00', '00:00:00', ''),
(53, 2, 2, '2021-06-10', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(54, 3, 4, '2021-06-10', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(55, 4, 6, '2021-06-10', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(56, 5, 5, '2021-06-10', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(57, 1, 1, '2021-06-11', '08:00:00', '12:10:00', '00:00:00', '00:00:00', ''),
(58, 2, 2, '2021-06-11', '08:06:00', '12:21:00', '14:04:00', '18:30:00', ''),
(59, 3, 4, '2021-06-11', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(60, 4, 6, '2021-06-11', '00:00:00', '00:00:00', '00:00:00', '00:00:00', ''),
(61, 5, 5, '2021-06-11', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `NUMSEC` int(5) NOT NULL AUTO_INCREMENT,
  `NOMSEC` varchar(50) DEFAULT NULL,
  `ROLE` varchar(20) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `MDP` varchar(200) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`NUMSEC`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`NUMSEC`, `NOMSEC`, `ROLE`, `EMAIL`, `MDP`, `date`) VALUES
(6, 'Rindra', 'admin', 'Rindra@gmail.com', '250599', '2021-04-12 13:36:05'),
(7, 'Tommy', 'utilisateur', 'tommy@gmail.com', '12345678', '2021-05-04 11:45:04'),
(21, 'RIX', 'admin', 'fsd@gmail.com', '250566', '2021-06-03 13:03:12'),
(18, 'Sitraka', 'utilisateur', 'sitraka@gmail.com', '123456', '2021-06-01 08:12:39');

-- --------------------------------------------------------

--
-- Structure de la table `visite`
--

DROP TABLE IF EXISTS `visite`;
CREATE TABLE IF NOT EXISTS `visite` (
  `IDVISITE` int(5) NOT NULL AUTO_INCREMENT,
  `NUMEMP` int(5) NOT NULL,
  `NOMVISITEUR` varchar(150) NOT NULL,
  `CIN` varchar(12) NOT NULL,
  `DATEV` date NOT NULL,
  `HEUREENTV` time NOT NULL,
  `HEURESORTV` time NOT NULL,
  `OBSERVATION` varchar(120) NOT NULL,
  PRIMARY KEY (`IDVISITE`),
  KEY `numemp` (`NUMEMP`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `visite`
--

INSERT INTO `visite` (`IDVISITE`, `NUMEMP`, `NOMVISITEUR`, `CIN`, `DATEV`, `HEUREENTV`, `HEURESORTV`, `OBSERVATION`) VALUES
(1, 2, 'ANDRIAMBOLOLONA Rindra Rochel', '201031123458', '2021-06-11', '08:15:21', '09:18:45', 'dépot de dossier'),
(2, 3, 'RAKOTO Jean', '201031452123', '2021-06-11', '08:32:41', '00:00:00', 'dépannage matériel'),
(3, 2, 'ANDRIAMBOLOLONA Rindra', '', '2021-05-21', '21:36:04', '21:42:15', 'depot de dossier'),
(4, 4, 'RABE Naivo', '', '2021-05-21', '22:08:35', '22:08:56', 'ok'),
(5, 2, 'RABEKOTO', '', '2021-05-25', '16:39:04', '16:40:50', 'BLUR'),
(6, 4, 'RALAIVAO', '', '2021-05-25', '16:40:35', '16:40:55', 'PYTHON'),
(7, 3, 'JASON ', '', '2021-05-25', '16:52:28', '00:00:00', 'DGFSD'),
(8, 1, 'GFD', '', '2021-05-25', '16:53:25', '00:00:00', 'ddsq'),
(9, 1, 'fsd', '', '2021-05-25', '16:54:02', '00:00:00', 'fsd'),
(10, 2, 'dsf', '', '2021-05-25', '16:56:29', '00:00:00', 'fds'),
(11, 2, 'fdss45', '', '2021-05-25', '16:59:47', '00:00:00', 'fsdfs'),
(12, 1, 'ravao', '', '2021-05-01', '09:59:27', '09:59:37', 'plainte'),
(13, 3, 'RAJEAN', '', '2021-05-03', '15:08:19', '00:00:00', 'depot de dossier '),
(14, 1, 'RAMARIA', '201123456123', '2021-05-03', '15:08:58', '15:42:52', 'FSDFS');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
