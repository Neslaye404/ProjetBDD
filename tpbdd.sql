-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 20 jan. 2026 à 07:35
-- Version du serveur : 8.4.7
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tpbdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `citations`
--

DROP TABLE IF EXISTS `citations`;
CREATE TABLE IF NOT EXISTS `citations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `citations`
--

INSERT INTO `citations` (`id`, `content`, `author`, `created_at`) VALUES
(1, 'Fais attention à la roue qui tourne car elle tournera pas toujours dans le bon sens -Gabin', 'admin', '2026-01-19 12:52:15'),
(2, 'J\'ai les mains faites pour l\'or, mais elles sont dans le diamant. -Werenoi', 'admin', '2026-01-19 12:54:14'),
(11, 'Peu importe la montre, quand c\'est l\'heure c\'est l\'heure #Gamberge', 'joan', '2026-01-19 14:28:10'),
(4, 'Le coeur a ses raisons  que la raison ignore -Blaise', 'admin', '2026-01-19 12:58:15'),
(12, 'Des bons chevaux pour une bonne marque.', 'ralph', '2026-01-19 15:52:34');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '$2y$10$WqM.s2xzHtqEOyc5XZ7cVOvVY6Kqeyu2JuHBcBMlBiyRjKWH0eCQK', 'admin'),
(2, 'joan', '$2y$10$kF5POWzUExkwt9dkCRDB..Gq931m6IBg8S1zTxXEy7Luz561Au8..', 'user'),
(3, 'gabriel', '$2y$10$WQ.v4ptWR2Vg3nsTjNVDLep3xFvm0JMKeEW0g/N02wNAG4HmLHx2q', 'user'),
(4, 'user', '$2y$10$O/kRpEH/QHVwc3NveRFYn.SzT/FEZSi5mz9IEA87C6kY51nJfXsbC', 'user'),
(5, 'ralph', '$2y$10$HiVUuUPDAXwx9O9pXwYlVeYJ.vLFjD79AFuxAC951FnnerOTfC13C', 'user');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
