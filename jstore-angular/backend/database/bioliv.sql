-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 29 déc. 2020 à 07:05
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` smallint(6) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `category`, `icon`) VALUES
(1, 'Légumes', 'hashtag'),
(2, 'Fruits', 'plus-circle');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `sexe` int(11) DEFAULT NULL,
  `pseudo` varchar(255) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `dateBirth` datetime NOT NULL DEFAULT current_timestamp(),
  `adresse_facturation` varchar(255) NOT NULL,
  `adresse_livraison` varchar(255) NOT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`id`, `sexe`, `pseudo`, `firstname`, `lastname`, `description`, `dateBirth`, `adresse_facturation`, `adresse_livraison`, `tel`, `email`, `password`) VALUES
(1, 1, 'pseudo1', 'DUPONT 0', 'Jeanne  0', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne0@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(2, 1, 'pseudo1', 'DUPONT 1', 'Jeanne  1', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne1@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(3, 1, 'pseudo1', 'DUPONT 2', 'Jeanne  2', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne2@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(4, 2, 'pseudo1', 'DUPONT 3', 'Jeanne  3', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne3@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(5, 2, 'pseudo1', 'DUPONT 4', 'Jeanne  4', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne4@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(6, 1, 'pseudo1', 'DUPONT 5', 'Jeanne  5', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne5@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(7, 2, 'pseudo1', 'DUPONT 6', 'Jeanne  6', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne6@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(8, 1, 'pseudo1', 'DUPONT 7', 'Jeanne  7', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne7@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(9, 1, 'pseudo1', 'DUPONT 8', 'Jeanne  8', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne8@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(10, 2, 'pseudo1', 'DUPONT 9', 'Jeanne  9', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne9@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(11, 2, 'pseudo1', 'DUPONT 10', 'Jeanne  10', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne10@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(12, 2, 'pseudo1', 'DUPONT 11', 'Jeanne  11', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne11@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(13, 2, 'pseudo1', 'DUPONT 12', 'Jeanne  12', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne12@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(14, 2, 'pseudo1', 'DUPONT 13', 'Jeanne  13', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne13@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(15, 1, 'pseudo1', 'DUPONT 14', 'Jeanne  14', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne14@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(16, 2, 'pseudo1', 'DUPONT 15', 'Jeanne  15', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne15@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(17, 2, 'pseudo1', 'DUPONT 16', 'Jeanne  16', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne16@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(18, 2, 'pseudo1', 'DUPONT 17', 'Jeanne  17', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne17@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(19, 1, 'pseudo1', 'DUPONT 18', 'Jeanne  18', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne18@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(20, 1, 'pseudo1', 'DUPONT 19', 'Jeanne  19', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne19@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_customers` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `createdat` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `id_customers`, `id_product`, `quantity`, `price`, `createdat`) VALUES
(1, 11, 7, 1, 56.99, '2020-04-24 21:38:30'),
(2, 11, 9, 1, 29.99, '2020-04-24 21:38:30'),
(3, 11, 5, 1, 23.89, '2020-04-24 21:41:33'),
(4, 11, 11, 1, 788.99, '2020-04-24 21:41:33'),
(5, 11, 1, 1, 78.98, '2020-04-24 22:27:11'),
(6, 11, 1, 1, 78.98, '2020-04-24 22:27:12'),
(7, 24, 2, 1, 78.98, '2020-04-25 12:17:07'),
(8, 24, 5, 1, 666.99, '2020-04-25 12:18:04'),
(9, 11, 4, 1, 23.98, '2020-05-25 03:24:44'),
(10, 11, 4, 1, 23.98, '2020-05-25 03:24:44'),
(14, 1, 2, 3, 20, '2020-10-10 23:05:32'),
(15, 11, 10, 5, 269.36, '2020-10-27 09:23:06');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `createdat` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `stock`, `category`, `image`, `createdat`) VALUES
(1, 'Carotte', 'Carotte', 2.99, 227, 1, 'carotte.jpg', '2020-04-20 00:00:00'),
(2, 'Kiwi', 'Kiwi', 8.99, 456, 2, 'kiwi.jpg', '2020-04-20 00:00:00'),
(3, 'Poivron jaune', 'Poivron jaune', 2.99, 352, 1, 'poivron_jaune.jpg', '2020-04-20 00:00:00'),
(4, 'Poivron vert', 'Poivron vert', 2.99, 112, 1, 'poivron_vert.jpg', '2020-04-20 00:00:00'),
(5, 'Poivron rouge', 'Poivron rouge', 2.99, 26, 1, 'poivron_rouge.jpg', '2020-04-20 00:00:00'),
(6, 'Pomme', 'Pomme', 2.99, 227, 2, 'pomme.jpg', '2020-04-20 00:00:00'),
(7, 'Betterave', 'Betterave', 4.99, 400, 1, 'betterave.jpg', '2020-04-20 00:00:00'),
(8, 'Brocolis', 'Betterave', 5.99, 500, 1, 'brocolis.jpg', '2020-04-20 00:00:00'),
(9, 'Champignon', 'Champignon', 6.99, 600, 1, 'champignon.jpg', '2020-04-20 00:00:00'),
(10, 'Navet', 'Navet', 7.99, 200, 1, 'navet.jpg', '2020-04-20 00:00:00'),
(11, 'Prune', 'Prune', 11.99, 100, 2, 'prune.jpg', '2020-04-20 00:00:00'),
(12, 'Cerise', 'Cerise', 8.99, 500, 2, 'cerise.jpg', '2020-04-20 00:00:00'),
(13, 'Fraise', 'Fraise', 14.99, 400, 2, 'fraise.jpg', '2020-04-20 00:00:00'),
(14, 'Poire', 'Poire', 12.99, 250, 2, 'poire.jpg', '2020-04-20 00:00:00'),
(15, 'Artichaud', 'Artichaud', 3.99, 350, 1, 'artichaud.jpg', '2020-04-20 00:00:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_customers_index` (`id_customers`),
  ADD KEY `id_product_index` (`id_product`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_index` (`category`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
