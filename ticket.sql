-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 23 sep. 2024 à 11:42
-- Version du serveur : 10.11.6-MariaDB-0+deb12u1
-- Version de PHP : 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mesco2327134`
--
CREATE DATABASE IF NOT EXISTS `mesco2327134` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mesco2327134`;

-- --------------------------------------------------------

--
-- Structure de la table `form_visite`
--

CREATE TABLE `form_visite` (
  `id_form` int(11) NOT NULL,
  `dateJ` date NOT NULL,
  `praticien` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `motif` varchar(255) NOT NULL,
  `bilan` text NOT NULL,
  `medicament` varchar(255) NOT NULL,
  `avis_visiteur` longtext NOT NULL,
  `id_User` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `form_visite`
--

INSERT INTO `form_visite` (`id_form`, `dateJ`, `praticien`, `date`, `motif`, `bilan`, `medicament`, `avis_visiteur`, `id_User`) VALUES
(86, '2024-06-13', '', '2022-12-05', 'PRD', 'test', '', 'trop bien aimer ', 26),
(87, '2024-04-02', 'tom', '2022-12-05', 'SOL', 'azer', 'Lamictal', 'azer', 28),
(88, '2024-05-03', 'Liam', '0000-00-00', 'Mal de tete', '', 'Doliprane', 'RAs\n', 27),
(89, '2024-06-13', '', '2022-12-05', 'PRD', 'dddd', 'Spasfon', 'TOUT va bien', 26);

-- --------------------------------------------------------

--
-- Structure de la table `medicament`
--

CREATE TABLE `medicament` (
  `num_medicament` int(11) NOT NULL,
  `nom_commercial` varchar(255) NOT NULL,
  `famille_medicament` varchar(255) NOT NULL,
  `composition` varchar(255) NOT NULL,
  `effet_indesirable` varchar(255) NOT NULL,
  `contre_indication` varchar(255) NOT NULL,
  `prix_echantillon` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `medicament`
--

INSERT INTO `medicament` (`num_medicament`, `nom_commercial`, `famille_medicament`, `composition`, `effet_indesirable`, `contre_indication`, `prix_echantillon`) VALUES
(3, 'Smecta', 'ADSORBANTS INTESTINAUX', 'Maltodextrine, saccharose, triacétate de glycéryle (E1518), dioxyde de silicium (E551), alcool éthylique, lécithine de soja (E322), parfum vanille', 'Aucun', 'Si patients présentant une intolérance au fructose, un syndrome de malabsorption du glucose et du galactose ou un déficit en sucrase/isomaltase', '4,59 euro'),
(2, 'Doliprane 1000', 'paracétamol', 'sodium (409 mg/cp). Excipients : povidone, amidon prégélatinisé, carboxyméthylamidon sodique (type A), talc, stéarate de magnésium, hydroxypropylcellulose, hypromellose, macrogol 6000', 'diminution globule blanc', 'allergie au paracétamol ou à l\'un des autres composants contenus dans ce médicament', '2,00 euro'),
(4, 'Spasfon', 'Antispasmodiques musculotropes', 'Phloroglucinol hydraté,Triméthylphloroglucinol', 'Aucun', ' si vous êtes allergique au phloroglucinol, au triméthylphloroglucinol ou à l\'un des autres composants contenus dans ce médicament', '3,17 euro'),
(5, 'Lamictal', ' anti-épileptiques', 'Lamotrigine', 'Maux de tête, troubles de la vision, tremblements, somnolence, agitation, fatigue, vertiges, troubles digestifs, augmentation paradoxale de la fréquence des crises d\'épilepsie', 'Ne jamais donné à des personnes de moins de 18 ans pour traiter des troubles bipolaire', '4,73 euro'),
(6, 'sam', 'schoepfer', 'ss', 'cancer', 'femme', '12'),
(7, 'laimdzf', 'qfssqf', 'qsfsqf', 'sfqsf', 'sfqsf', '65'),
(8, 'azer', 'azer', 'azer', 'azer', 'azer', 'azer'),
(9, 'tes', 'tes', 'tes', 'tes', 'tes', 'tse'),
(10, 'zery', 'zert', 'zert', 'zert', 'zert', 'zert');

-- --------------------------------------------------------

--
-- Structure de la table `practiciens`
--

CREATE TABLE `practiciens` (
  `Numero_praticiens` int(11) NOT NULL,
  `Nom_praticiens` varchar(255) DEFAULT NULL,
  `Prenom_praticiens` varchar(255) NOT NULL,
  `Adresse_praticiens` varchar(255) NOT NULL,
  `Ville_praticiens` varchar(255) NOT NULL,
  `region_practiciens` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `practiciens`
--

INSERT INTO `practiciens` (`Numero_praticiens`, `Nom_praticiens`, `Prenom_praticiens`, `Adresse_praticiens`, `Ville_praticiens`, `region_practiciens`) VALUES
(16, 'schoepfer', 'thi', '115 rue du dauphine', 'lyon', 'Auvergne-Rhône-Alpes'),
(15, 'tom', 'tom', '234 avenue félix faure ', 'lyon', 'Auvergne-Rhône-Alpes'),
(17, 'Mr Smaniotto', 'Liam', '37 Rue Saint-Nestor', 'Lyon', 'Auvergne-Rhône-Alpes');

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `id_dep` int(11) NOT NULL,
  `departement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`id_dep`, `departement`) VALUES
(1, 'Auvergne-Rhône-Alpes'),
(2, 'Bourgogne-Franche-Comté'),
(3, 'Bretagne'),
(4, 'Centre-Val de Loire'),
(5, 'Corse'),
(6, 'Grand Est'),
(7, 'Hauts-de-France'),
(8, 'Île-de-France'),
(9, 'Normandie'),
(10, 'Nouvelle-Aquitaine'),
(11, 'Occitanie'),
(12, 'Pays de la Loire'),
(13, 'Provence-Alpes-Côte d\'Azur');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_User` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `departement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_User`, `username`, `type`, `password`, `nom`, `prenom`, `departement`) VALUES
(26, 'sam', 'visiteur', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'schoepfer', 'sam', 1),
(27, 'liam', 'responsable', '35a9e381b1a27567549b5f8a6f783c167ebf809f1c4d6a9e367240484d8ce281', 'liam', 'liam', 0),
(28, 'abdennour', 'delegue', 'b3a8e0e1f9ab1bfe3a36f231f676f78bb30a519d2b21e6c530c0eee8ebb4a5d0', 'abdennour', 'abdennour', 1),
(29, 'samsam', 'visiteur', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'schoepfer', 'sam', 0),
(30, 'sam@gmail.com', 'visiteur', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'Schoepfer', 'Sam', 0),
(31, 'abdennour@gmail.com', 'delegue', 'b3a8e0e1f9ab1bfe3a36f231f676f78bb30a519d2b21e6c530c0eee8ebb4a5d0', 'Belhaddad', 'Abdennour', 0),
(32, 'liam@gmail.com', 'responsable', '35a9e381b1a27567549b5f8a6f783c167ebf809f1c4d6a9e367240484d8ce281', 'Smaniotto', 'Liam', 0),
(33, 'Lisma', 'responsable', 'a05198938c6ca8cd56289c6dba6bb8aaa68dfe8e0d7a37df2fb76e48eeba4244', 'Smaniottoo', 'Liamm', 0);

-- --------------------------------------------------------

--
-- Structure de la table `Visiteurs`
--

CREATE TABLE `Visiteurs` (
  `id_visites` int(11) NOT NULL,
  `nom` int(11) NOT NULL,
  `prénom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `form_visite`
--
ALTER TABLE `form_visite`
  ADD PRIMARY KEY (`id_form`),
  ADD KEY `id_User` (`id_User`);

--
-- Index pour la table `medicament`
--
ALTER TABLE `medicament`
  ADD PRIMARY KEY (`num_medicament`);

--
-- Index pour la table `practiciens`
--
ALTER TABLE `practiciens`
  ADD PRIMARY KEY (`Numero_praticiens`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id_dep`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_User`),
  ADD KEY `departement` (`departement`);

--
-- Index pour la table `Visiteurs`
--
ALTER TABLE `Visiteurs`
  ADD PRIMARY KEY (`id_visites`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `form_visite`
--
ALTER TABLE `form_visite`
  MODIFY `id_form` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT pour la table `medicament`
--
ALTER TABLE `medicament`
  MODIFY `num_medicament` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `practiciens`
--
ALTER TABLE `practiciens`
  MODIFY `Numero_praticiens` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `region`
--
ALTER TABLE `region`
  MODIFY `id_dep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_User` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `form_visite`
--
ALTER TABLE `form_visite`
  ADD CONSTRAINT `form_visite_ibfk_1` FOREIGN KEY (`id_User`) REFERENCES `users` (`id_User`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
