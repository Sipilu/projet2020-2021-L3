-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 31 mai 2021 à 19:11
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bddoutilcoach`
--

-- --------------------------------------------------------

--
-- Structure de la table `coach`
--

DROP TABLE IF EXISTS `coach`;
CREATE TABLE IF NOT EXISTS `coach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(128) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `date_inscription` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1 COMMENT='table de coach seul utilisateur de l''application';

--
-- Déchargement des données de la table `coach`
--

INSERT INTO `coach` (`id`, `pseudo`, `email`, `password`, `date_inscription`) VALUES
(26, 'Sipilu', 'bachelet.simon-pierre@orange.fr', '$2y$10$VFTwcDb9sojpn3PcRUkoveTShA9YpteHOZnn4kjb7xtU9240xQxU2', '2021-03-06'),
(31, 'ledgyon', 'simon.rudent@wanadoo.fr', '$2y$10$.9myhuAZQsyhWBZp1lNszOF3bydRw5W9FPIoYhgbwEhvUDXyx.sXq', '2021-05-24');

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

DROP TABLE IF EXISTS `joueur`;
CREATE TABLE IF NOT EXISTS `joueur` (
  `coach` varchar(128) NOT NULL,
  `nom` varchar(24) NOT NULL,
  `prenom` varchar(24) NOT NULL,
  `age` int(11) NOT NULL,
  `taille` float NOT NULL,
  `poids` float NOT NULL,
  `vma` float DEFAULT NULL,
  `email` text,
  `nbMatch` int(11) DEFAULT '0',
  `tirs` int(11) DEFAULT '0',
  `points` int(11) DEFAULT '0',
  `passes` int(11) DEFAULT '0',
  `passesValide` int(11) DEFAULT '0',
  `interceptions` int(11) DEFAULT '0',
  `fautes` int(11) DEFAULT '0',
  PRIMARY KEY (`nom`,`prenom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `joueur`
--

INSERT INTO `joueur` (`coach`, `nom`, `prenom`, `age`, `taille`, `poids`, `vma`, `email`, `nbMatch`, `tirs`, `points`, `passes`, `passesValide`, `interceptions`, `fautes`) VALUES
('Sipilu', 'Aubin', 'Sardou', 68, 1.65, 40, 5, 'aubin.sardou@outlook.com', 28, 102, 100, 526, 200, 56, 2),
('ledgyon', 'Coquelicot', 'Sud', 23, 1.62, 50, 9, 'coquelicot.sud@plante.greenpeace', 24, 24, 24, 24, 24, 24, 24),
('Sipilu', 'Ghislain', 'Dumont', 15, 1.22, 50, 15, 'ghislain.dumont@gmail.com', 207, 326, 52, 10, 10, 221, 18),
('Sipilu', 'Jacob', 'Modrick', 29, 1.82, 95, 11, 'jacob.modrick@gmail.com', 392, 51, 12, 671, 498, 527, 3),
('ledgyon', 'Leonardo', 'DiCaprio', 50, 1.8, 90, 12, 'leonardo.dicaprio@wanadoo.fr', 39, 94, 71, 140, 112, 27, 3),
('ledgyon', 'Olivier', 'Namala', 50, 1.5, 40, 16, 'olivier.namala@outlook.com', 5, 2, 0, 63, 48, 75, 1),
('ledgyon', 'Rudent', 'Simon', 20, 1.8, 75, 13, 'simon.rudent@gmail.com', 2, 10, 9, 8, 13, 17, 17),
('Sipilu', 'Segolene', 'Badeaux', 26, 1.72, 70, 16, 'segolene.badeaux@outlook.fr', 74, 455, 8, 455, 452, 134, 1),
('ledgyon', 'Theodore', 'Roosevelt', 200, 1.8, 15, 8, 'theodore.roosevelt@gmail.com', 1, 14, 13, 3, 3, 7, 9),
('ledgyon', 'Thomas', 'Pesquet', 40, 1.8, 80, 18, 'thomas.pesquet@wanadoo.fr', 3, 37, 34, 1, 0, 5, 4),
('Sipilu', 'Victoria', 'De Villiers', 33, 1.67, 70, 15, 'victoria.devilliers@wanadoo.fr', 1, 8, 5, 15, 14, 7, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
