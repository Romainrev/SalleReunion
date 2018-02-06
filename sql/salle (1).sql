-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 06 fév. 2018 à 17:13
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `salle`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_reservation`
--

CREATE TABLE `t_reservation` (
  `id_RESERVATION` int(11) NOT NULL,
  `DATE` datetime NOT NULL,
  `T_SALLE_id_SALLE` int(11) NOT NULL,
  `Duree` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_reservation`
--

INSERT INTO `t_reservation` (`id_RESERVATION`, `DATE`, `T_SALLE_id_SALLE`, `Duree`) VALUES
(1, '2018-03-30 21:00:00', 3, '4'),
(2, '2019-12-28 20:00:00', 1, '4');

-- --------------------------------------------------------

--
-- Structure de la table `t_salle`
--

CREATE TABLE `t_salle` (
  `id_SALLE` int(11) NOT NULL,
  `T_NomSalle` varchar(255) NOT NULL,
  `NbrPlace` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_salle`
--

INSERT INTO `t_salle` (`id_SALLE`, `T_NomSalle`, `NbrPlace`) VALUES
(1, 'Gilbert Montagné', 20),
(2, 'Claude François', 12),
(3, 'Patrick Sebastien', 35),
(4, 'Jul', 68);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_reservation`
--
ALTER TABLE `t_reservation`
  ADD PRIMARY KEY (`id_RESERVATION`,`T_SALLE_id_SALLE`),
  ADD KEY `fk_T_RESERVATION_T_SALLE_idx` (`T_SALLE_id_SALLE`);

--
-- Index pour la table `t_salle`
--
ALTER TABLE `t_salle`
  ADD PRIMARY KEY (`id_SALLE`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_reservation`
--
ALTER TABLE `t_reservation`
  MODIFY `id_RESERVATION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `t_salle`
--
ALTER TABLE `t_salle`
  MODIFY `id_SALLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_reservation`
--
ALTER TABLE `t_reservation`
  ADD CONSTRAINT `fk_T_RESERVATION_T_SALLE` FOREIGN KEY (`T_SALLE_id_SALLE`) REFERENCES `t_salle` (`id_SALLE`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
