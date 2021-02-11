-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 11 fév. 2021 à 06:16
-- Version du serveur :  5.7.32
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données : `mediascreen`
--

-- --------------------------------------------------------

--
-- Structure de la table `ecrans`
--

CREATE TABLE `ecrans` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `temps` int(11) NOT NULL,
  `id_sequence` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `auteur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ecrans`
--

INSERT INTO `ecrans` (`id`, `nom`, `contenu`, `temps`, `id_sequence`, `id_type`, `auteur`) VALUES
(1, 'SNCF-1', 'Showdown is a Javascript Markdown to HTML converter, based on the original works by John Gruber. It can be used client side (in the browser) or server side (with Node or io). \r\n\r\n\r\n# Installation\r\n\r\n## Download tarball\r\n\r\nYou can download the latest release tarball directly from [releases][releases]\r\n\r\n## Bower\r\n\r\n    bower install showdown\r\n\r\n## npm (server-side)\r\n\r\n    npm install showdown\r\n\r\n## CDN\r\n\r\nYou can also use one of several CDNs available: \r\n\r\n* rawgit CDN\r\n\r\n        https://cdn.rawgit.com/showdownjs/showdown/<version tag>/dist/showdown.min.js\r\n\r\n* cdnjs\r\n\r\n        https://cdnjs.cloudflare.com/ajax/libs/showdown/<version tag>/showdown.min.js\r\n', 5000, 1, 1, 'EvannG1'),
(2, 'SNCF-2', '## LP CIASIE - TD Micro ORM\r\n\r\nGroupe :\r\n\r\n ~~- GEHIN Evann\r\n - KLOPFENSTEIN Vivien~~\r\n\r\n\r\nLes fichiers **main.php** et **secondary.php** sont des fichiers de t[ests qui nous pe](#)rmettaient de tester les différentes classes.\r\n\r\nLes cla*sses se trouvent dans le répertoire **src**.\r\nLe fichier de configuration à la base de données se* trouve dans le répertoire **conf**.', 5000, 1, 1, 'Lucas'),
(3, 'SNCF-3', 'Ecran génial n°3', 5000, 1, 1, 'Vivien'),
(4, 'SNCF-4', 'Superbe écran de la SNCF n°4', 7000, 1, 2, 'Ozan'),
(5, 'Ecran de test', 'Superbe écran de test', 2000, 2, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sequences`
--

CREATE TABLE `sequences` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `auteur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sequences`
--

INSERT INTO `sequences` (`id`, `nom`, `auteur`) VALUES
(1, 'SNCF', 'EvannG1'),
(2, 'OUIGo', 'Lucas'),
(5, 'test', 'Vivien');

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ecrans`
--
ALTER TABLE `ecrans`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sequences`
--
ALTER TABLE `sequences`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ecrans`
--
ALTER TABLE `ecrans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `sequences`
--
ALTER TABLE `sequences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
