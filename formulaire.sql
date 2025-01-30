-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 30 jan. 2025 à 20:18
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
-- Base de données : `formulaire`
--

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(0, 'Kapé', 'Kape95@gmail.com', '$2y$10$7rphWdt/RmmJClUU639KA.ohEh71JCEDb9crYORhjkEssZQLLWLai'),
(0, 'Kapé', 'Kape95@gmail.com', '$2y$10$Uh1qVPyfSuWfMpVnrceDOuGKdCpGMCTym8ImoOOSK8C7Jo8iSv0dS'),
(0, 'Kap95', 'Kape95@gmail.com', '$2y$10$VCeQ5GStppl3.YdQow0iaeAjSxuhVG9K8LTNi8z6.JluHDhlJXHwS'),
(0, 'Kapé', 'Kape95@gmail.com', '$2y$10$vUYn8QG3MQ2apmeAzJCJheYSj81VdGse0hpE8J2s2D3DxGKF0l56q');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
