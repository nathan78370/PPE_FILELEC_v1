Create database Automobile;
use Automobile;
-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 05 mai 2020 à 11:27
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `automobile`
--

-- --------------------------------------------------------

--
-- Structure de la table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `telephone` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `email`) VALUES
(1, 'test', '$2y$10$SfhYIDtn.iOuCW7zfoFLuuZHX6lja4lF4XA4JqNmpiH/.P3zB8JCa', 'test@test.com');

-- --------------------------------------------------------

--
-- Structure de la table `bonlivraison`
--

DROP TABLE IF EXISTS `bonlivraison`;
CREATE TABLE IF NOT EXISTS `bonlivraison` (
  `IdBonL` int(11) NOT NULL,
  `DateLivraison` date DEFAULT NULL,
  PRIMARY KEY (`IdBonL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `categorieprod`
--

DROP TABLE IF EXISTS `categorieprod`;
CREATE TABLE IF NOT EXISTS `categorieprod` (
  `IdCatProd` int(11) NOT NULL,
  `TypeProd` varchar(90) DEFAULT NULL,
  `MarqueProd` varchar(85) DEFAULT NULL,
  `IdProduit` int(11) NOT NULL,
  PRIMARY KEY (`IdCatProd`),
  KEY `IdProduit` (`IdProduit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `entrepot`
--

DROP TABLE IF EXISTS `entrepot`;
CREATE TABLE IF NOT EXISTS `entrepot` (
  `IdEntrepot` int(11) NOT NULL,
  `StockProduit` int(6) DEFAULT NULL,
  PRIMARY KEY (`IdEntrepot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `moyenpaiement`
--

DROP TABLE IF EXISTS `moyenpaiement`;
CREATE TABLE IF NOT EXISTS `moyenpaiement` (
  `IdPaiement` int(11) NOT NULL,
  `TypePaiement` varchar(20) DEFAULT NULL,
  `DatePaiement` date DEFAULT NULL,
  `IdCommande` int(11) NOT NULL,
  PRIMARY KEY (`IdPaiement`),
  KEY `IdCommande` (`IdCommande`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

DROP TABLE IF EXISTS `panier`;
CREATE TABLE IF NOT EXISTS `panier` (
  `IdPanier` int(11) NOT NULL,
  `NbArticle` int(2) DEFAULT NULL,
  `PrixTotal` int(4) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `IdCommande` int(11) NOT NULL,
  PRIMARY KEY (`IdPanier`),
  KEY `id` (`id`),
  KEY `IdCommande` (`IdCommande`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `photoprod`
--

DROP TABLE IF EXISTS `photoprod`;
CREATE TABLE IF NOT EXISTS `photoprod` (
  `IdPhoto` int(11) NOT NULL,
  `CheminPhoto` varchar(120) DEFAULT NULL,
  `IdProduit` int(11) NOT NULL,
  PRIMARY KEY (`IdPhoto`),
  KEY `IdProduit` (`IdProduit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `rrp` decimal(7,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'GO CAMPER SAT NAV', '<p>Unique watch made with stainless steel, ideal for those that prefer interative watches.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Powered by Android with built-in apps.</li>\r\n<li>Adjustable to fit most.</li>\r\n<li>Long battery life, continuous wear for up to 2 days.</li>\r\n<li>Lightweight design, comfort on your wrist.</li>\r\n</ul>', '399.00', '0.00', 10, 'gps.jpg', '2019-03-13 17:55:22'),
(2, 'Autoradio PIONEER MVH-S410BT', 'Les points forts de ce produit :\r\n\r\n- Bluetooth.\r\n- Compatible SPOTIFY.\r\n- Kit mains-libres.\r\n- Amplificateur MOSFET intégré.\r\n', '59.95', '109.95', 34, 'AUTORAD.jpg', '2019-03-13 18:52:49'),
(3, 'Rétroviseur droit électrique CITROËN C4 GRAND PICASSO I, 2006-2010', 'Rétroviseur extérieur droit électrique CITROËN GRAND C4 PICASSO I phase 1 du 09/2006 au 09/2010, chauffant, feu clignotant/répétiteur, feu de courtoisie (éclairage du sol), sonde de température, Neuf\r\nVendu complet : Coque à peindre avec apprêt, clignotant et miroir\r\nCôté droit passager\r\nCode OEM: 8153G9\r\n\r\nPièce Auto Carrosserie neuve pour CITROËN C4 GRAND PICASSO I (UA_) : Rétroviseur électrique extérieur droit dégivrant, pièce équivalente et compatible à l\'article d\'origine, conforme à la législation européenne en vigueur.\r\n\r\nRetrouvez toutes les pièces de carrosserie pour CITROËN GRAND C4 PICASSO I phase 1', '79.00', '0.00', 23, 'RETRO.jpg', '2019-03-13 18:47:56'),
(4, 'Dashcam NEXTBASE 522GW', 'Les points forts de ce produit :\r\n\r\n- Ecran 3 pouces HD LED tactile.\r\n- Support Click&Go PRO alimenté.\r\n- Fonction SOS Urgences.\r\n- Wi-Fi, Bluetooth 4.2 et GPS.\r\n- Compatible Alexa.\r\n', '229.95', '0.00', 7, 'CAM.jpg', '2019-03-13 17:42:04'),
(5, 'Récepteur Bluetooth avec connexion par jack NORAUTO', 'Les points forts de ce produit :\r\n\r\n- Connexion via Bluetooth.\r\n- Autonomie de 6 heures en communication.\r\n- Se recharge en 2 heures.\r\n- Connexion jusqu\'à 2 téléphones.\r\n', '16.95', '0.00', 12, 'BLUE.jpg', '2020-04-27 16:36:14'),
(7, 'Assistant d aide Ã  la conduite COYOTE Mini', 'Les points forts de ce produit :  - 100% lÃ©gal - Commande vocale - Indique les limites de vitesses prÃ©conisÃ©es', '159.95', '0.00', 6, 'AIDE.jpg', '2020-04-27 15:32:32');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
