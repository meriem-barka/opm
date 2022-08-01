-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 01 août 2022 à 08:01
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `igloo`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'modo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `token`, `role`) VALUES
(1, 'Administrateur', 'admin@localhost', '70ccd9007338d6d81dd3b6271621b9cf9a97ea00', 'FantZ2s6G4UXRRX9rvOl', 'admin'),
(4, 'mimi', 'mimi@mimi', '123456', '1', 'modo');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`, `post_id`, `date`, `seen`) VALUES
(4, 'fefe', 'meriem.barka@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec laoreet magna eget iaculis sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque mi nisi, aliquet non viverra eget, hendrerit eleifend enim. Praesent finibus tortor at scelerisque varius. Etiam malesuada eros lobortis neque ullamcorper, quis aliquet arcu ornare. Nam vulputate quam turpis, eget varius massa lacinia ut. Phasellus laoreet maximus consectetur. Nam pulvinar arcu massa, in aliquam diam tempus at. Ut ac quam cursus elit porttitor aliquam pharetra sed ligula. Nam eleifend eleifend erat, a congue nisi. Duis dapibus facilisis nulla, a gravida velit posuere vel. Suspendisse ac iaculis lacus. Integer ornare velit sapien, ac vulputate arcu ultricies nec. Suspendisse id felis sagittis, eleifend neque tempor,', 20, '2022-07-30 09:38:35', 1),
(7, 'lele', 'meriem.barka@gmail.com', 'sdGQTVK_-POIYP\r\n;', 110, '2022-07-31 20:30:07', 1),
(8, 'rrrrrrrrrrrrrrrrrrrrr', 'meriem.barka@gmail.com', 'rqebqtrjsk', 113, '2022-07-31 21:34:51', 0);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `writer` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'post.png',
  `date` datetime NOT NULL,
  `posted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `writer`, `image`, `date`, `posted`) VALUES
(110, 'Histoire DFDGDShSFhFDHD WRJWHHHHHHHHFXBFD RYRY', 'Contrairement à une opinion répandue, le Lorem Ipsum n&#039;est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre \r\nde la littérature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie,\r\n s&#039;est intéressé à un des mots latins les plus obscurs, consectetur, extrait d&#039;un passage du Lorem Ipsum, et en étudiant tous les usages de \r\nce mot dans la littérature classique, découvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.\r\n10.33 du &quot;De Finibus Bonorum et Malorum&quot; (Des Suprêmes Biens et des Suprêmes Maux) de Cicéron. Cet ouvrage, très populaire pendant la Re\r\nnaissance, est un traité sur la théorie de l&#039;éthique. Les premières lignes du Lorem Ipsum, &quot;Lorem ipsum dolor sit amet...&quot;, \r\nL&#039;extrait standard de Lorem Ipsum utilisé depuis le XVIè siècle est reproduit ci-dessous pour les curieux. \r\nLes sections 1.10.32 et 1.10.33 du &quot;De Finibus Bonorum et Malorum&quot; de Cicéron sont aussi reproduites\r\n dans leur version originale, accompagnée de la traduction anglaise de H. Rackham (1914).\r\nLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. \r\nLe Lorem Ipsum est le faux texte standard de l&#039;imprimerie depuis les années 1500, quand un imprimeur anonyme \r\nassembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n&#039;a pas fait que\r\n survivre cinq siècles, mais s&#039;est aussi adapté à la bureautique informatique, sans que son contenu n&#039;en soit modifié. \r\nIl a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem \r\nIpsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'admin@localhost', '110.jpg', '2022-07-31 07:45:06', 1),
(111, 'Les sorties', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux\r\n texte standard de l&#039;imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser \r\nun livre spécimen de polices de texte. Il n&#039;a pas fait que survivre cinq siècles, mais s&#039;est aussi adapté à la bureautique informatique, sans que \r\nson contenu n&#039;en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem I\r\npsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.Pourquoi l&#039;utiliser?\r\nOn sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur \r\nla mise en page elle-même. L&#039;avantage du Lorem Ipsum sur un texte générique comme &#039;Du texte. Du texte. Du texte.&#039; est qu&#039;il possède une \r\ndistribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de\r\n mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour &#039;Lorem Ipsum&#039; vous conduira \r\nvers de nombreux sites qui n&#039;en sont encore qu&#039;à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, \r\nsouvent intentionnellement (histoire d&#039;y rajouter de petits clins d&#039;oeil, voire des phrases embarassantes).', 'admin@localhost', '111.jpg', '2022-07-31 07:47:21', 1),
(112, 'hello', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\r\nPourquoi l\'utiliser?\r\n\r\nOn sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte. Du texte. Du texte.\' est qu\'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).\r\n', '', 'post.png', '2022-07-31 07:49:23', 1),
(113, 'Hello', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux \r\ntexte standard de l&#039;imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser \r\nun livre spécimen de polices de texte. Il n&#039;a pas fait que survivre cinq siècles, mais s&#039;est aussi adapté à la bureautique informatique, sans que son \r\ncontenu n&#039;en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum,\r\n et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.Pourquoi l&#039;utiliser?\r\nOn sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur \r\nla mise en page elle-même. L&#039;avantage du Lorem Ipsum sur un texte générique comme &#039;Du texte. Du texte. Du texte.&#039; est qu&#039;il possède une distribution \r\nde lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou \r\néditeurs de sites Web ...', 'admin@localhost', '113.jpg', '2022-07-31 07:56:07', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
