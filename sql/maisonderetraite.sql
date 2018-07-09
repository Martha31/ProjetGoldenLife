-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 05 juil. 2018 à 19:04
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `maisonderetraite`
--
CREATE DATABASE IF NOT EXISTS `maisonderetraite` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `maisonderetraite`;

-- --------------------------------------------------------

--
-- Structure de la table `accompagnant`
--

DROP TABLE IF EXISTS `accompagnant`;
CREATE TABLE IF NOT EXISTS `accompagnant` (
  `accompagnantId` int(11) NOT NULL AUTO_INCREMENT,
  `emailId` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  KEY `accompagnantId` (`accompagnantId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `accompagnant`
--

INSERT INTO `accompagnant` (`accompagnantId`, `emailId`, `nom`, `prenom`) VALUES
(4, 'cpierre@goldenlife.com', 'Charles', 'Pierre'),
(5, 'cmopli@goldenlife.com', 'Molpi', 'Carina');

-- --------------------------------------------------------

--
-- Structure de la table `resident`
--

DROP TABLE IF EXISTS `resident`;
CREATE TABLE IF NOT EXISTS `resident` (
  `accompagnantId` int(11) NOT NULL,
  `matricule` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  PRIMARY KEY (`matricule`),
  KEY `matricule` (`accompagnantId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `resident`
--

INSERT INTO `resident` (`accompagnantId`, `matricule`, `nom`, `prenom`, `age`) VALUES
(4, 1, 'Poireau', 'Henri', 89),
(5, 2, 'Tunni', 'Charlette', 96),
(4, 3, 'Rado', 'Patricia', 79),
(4, 4, 'Vachet', 'Patrick', 85),
(4, 5, 'Robert', 'Michel', 77),
(4, 6, 'Hamza', 'Fatima', 82),
(4, 7, 'Slimani', 'Wahid', 90),
(4, 8, 'Florie', 'Jeannet', 91),
(4, 9, 'Nino', 'Jean-Pierre', 78),
(5, 10, 'Fratour', 'Bernadette', 96),
(5, 11, 'Vilma', 'Georgia', 74);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `resident`
--
ALTER TABLE `resident`
  ADD CONSTRAINT `accompagnant_resident` FOREIGN KEY (`accompagnantId`) REFERENCES `accompagnant` (`accompagnantId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
