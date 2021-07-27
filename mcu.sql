-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mar. 27 juil. 2021 à 12:56
-- Version du serveur :  5.7.32
-- Version de PHP : 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mcu`
--

-- --------------------------------------------------------

--
-- Structure de la table `actors`
--

CREATE TABLE `actors` (
  `id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `dateOfBirthday` date NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `actors`
--

INSERT INTO `actors` (`id`, `lastname`, `firstname`, `dateOfBirthday`, `creationDate`, `updateDate`) VALUES
(1, 'Downey Jr.', 'Robert', '1965-04-04', '2021-07-26 09:13:42', '2021-07-26 09:13:42'),
(2, 'Evans', 'Chris', '1981-06-13', '2021-07-26 09:20:16', '2021-07-26 09:20:16'),
(3, 'Hemsworth', 'Chris', '1983-08-11', '2021-07-26 09:21:31', '2021-07-26 09:21:31'),
(4, 'L. Jackson', 'Samuel', '1948-12-21', '2021-07-26 09:22:49', '2021-07-26 09:22:49'),
(5, 'Ruffalo', 'Mark', '1967-11-22', '2021-07-26 09:24:22', '2021-07-27 12:55:05');

-- --------------------------------------------------------

--
-- Structure de la table `linked`
--

CREATE TABLE `linked` (
  `idMovies` int(11) NOT NULL,
  `idActor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `linked`
--

INSERT INTO `linked` (`idMovies`, `idActor`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(3, 1),
(3, 4),
(4, 1),
(5, 3);

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `releaseDate` year(4) NOT NULL,
  `duration` time NOT NULL,
  `director` varchar(50) NOT NULL,
  `creationDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`id`, `title`, `releaseDate`, `duration`, `director`, `creationDate`, `updateDate`) VALUES
(1, 'Avengers', 2012, '02:22:00', 'Joss Whedon', '2021-07-26 11:06:42', '2021-07-26 09:06:42'),
(2, 'Iron Man', 2008, '02:10:00', 'Jon Favreau', '2021-07-26 11:03:15', '2021-07-26 09:03:15'),
(3, 'Iron Man 2', 2010, '02:04:00', 'Jon Favreau', '2021-07-26 11:00:09', '2021-07-26 09:01:23'),
(4, 'Iron Man 3', 2013, '02:10:00', 'Shane Black', '2021-07-26 11:07:28', '2021-07-26 09:07:28'),
(5, 'Thor', 2011, '01:54:00', 'Kenneth Branagh', '2021-07-26 11:05:35', '2021-07-26 09:05:35');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `linked`
--
ALTER TABLE `linked`
  ADD KEY `FOREIGN` (`idMovies`,`idActor`),
  ADD KEY `linked_ibfk_2` (`idActor`);

--
-- Index pour la table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `linked`
--
ALTER TABLE `linked`
  ADD CONSTRAINT `linked_ibfk_1` FOREIGN KEY (`idMovies`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `linked_ibfk_2` FOREIGN KEY (`idActor`) REFERENCES `actors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
