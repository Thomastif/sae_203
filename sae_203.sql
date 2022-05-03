-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 29 avr. 2022 à 13:46
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sae_203`
--

-- --------------------------------------------------------

--
-- Structure de la table `album`
--

CREATE TABLE `album` (
  `id_album` bigint(20) UNSIGNED NOT NULL,
  `album_titre` varchar(255) NOT NULL,
  `album_description` varchar(255) NOT NULL,
  `album_pochette` varchar(255) NOT NULL,
  `id_artiste` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `album`
--

INSERT INTO `album` (`id_album`, `album_titre`, `album_description`, `album_pochette`, `id_artiste`) VALUES
(1, 'Brol', 'Brol est le premier album studio de la chanteuse belge Angèle, sorti le 5 octobre 2018. L\'album reçoit la Victoire de l\'album révélation de l\'année lors des Victoires de la musique 2019.', 'img/brol.jpg', 1),
(2, 'Nonante-Cinq', 'Nonante-Cinq est le second album studio de la chanteuse belge Angèle, sorti le 3 décembre 2021.', 'img/nonante.jpg', 1),
(3, 'QALF infinity', 'Fin 2020, Damso sortait son quatrième album intitulé ‘Qalf puis au printemps 2021, l\'artiste revenait pour nous présenter 11 nouveaux titres pour former \'QALF infinity\'', 'img/qalf.jpg', 2),
(4, 'Lithopédion', 'Lithopédion est le troisième album studio du rappeur belge Damso, sorti le 15 juin 2018 sous les labels 92i, Capitol, Universal.', 'img/lithopedion.jpg', 2),
(5, 'Ipséité', 'Ipséité est le deuxième album studio du rappeur belge Damso, sorti le 28 avril 2017 sous les labels 92i, Capitol et Universal.', 'img/ipseite.jpg', 2),
(6, 'Enna', 'Enna est le deuxième album solo de PLK et est composé de dix-huit morceaux. Comptant des featurings avec des rappeurs comme Niska, Heuss L\'Enfoiré, Rim\'K et Hamza, l\'album avait été certifié disque de platine en octobre 2020, en seulement 52 jours.', 'img/enna.jpg', 3),
(7, 'Mental', 'Sortie le 13 septembre 2019, Mental est une mixtape de PLK.\r\nPorté par le single de platine “Problèmes” paru durant l\'été 2019, ce projet permet de clore la trilogie de mixtapes avec Ténébreux et Platinum sortis respectivement en septembre 2017 et mars 20', 'img/mental.jpg', 3),
(8, 'Polak', 'Le 05 octobre prochain, il sortira son 1er album «Polak», 15 titres inédits incluant des featurings de Nekfeu et SCH. Une première commercialisation physique, sous forme de CD cristal, d’un vinyle et d’un coffret en édition limitée regroupant les 3 projet', 'img/polak.jpg', 3),
(9, 'Platinum', 'Avec Platinum PLK sort un projet dense, rempli de tubes potentiels, comme en produit finalement assez peu la nouvelle scène rap français. La détermination et rage de réussir du jeune rappeur parisien est palpable et donnera de la force à tous ceux qui com', 'img/platinum.jpg', 3),
(10, 'Ayna', 'Ayna, le deuxième album de TSEW THE KID. 18 titres inédits inclus des feat. avec PLK et LEFA.', 'img/ayna.jpg', 4),
(11, 'Diavolana', 'Une première mixtape baptisée Diavolana (rayon de lune en malgache) déjà disponible en digital et cumulant plus de 20 millions de streams.', 'img/diavolana.jpg', 4),
(12, 'Nous', '', 'img/nous.jpg', 4),
(13, 'LOFI', '', 'img/lofi.jpg', 4);

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

CREATE TABLE `artiste` (
  `id_artiste` bigint(20) UNSIGNED NOT NULL,
  `artiste_nom` varchar(255) NOT NULL,
  `artiste_photo` varchar(255) NOT NULL,
  `artiste_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `artiste`
--

INSERT INTO `artiste` (`id_artiste`, `artiste_nom`, `artiste_photo`, `artiste_description`) VALUES
(1, 'Angèle', 'img/angele.jpg', 'Angèle Van Laeken, dite Angèle, née le 3 décembre 1995 à Uccle, est une auteure-compositrice-interprète, musicienne, productrice, actrice et mannequin belge.'),
(2, 'Damso', 'img/damso.jpg', 'Damso, de son vrai nom William Kalubi Mwamba, né le 10 mai 1992 à Kinshasa, est un rappeur et auteur-compositeur-interprète belgo-congolais. Actif dans le monde du rap depuis 2006, Damso débute dans la publication de projets avec sa première mixtape Salle'),
(3, 'PLK', 'img/plk.jpg', 'PLK, né le 15 avril 1997, est un rappeur français. Il est membre du groupe Panama Bende et du trio La Confrérie, ce dernier étant composé de trois membres de Paname Bende. En 2015 et 2016, il sort ses premiers EP, Peur de me tromper et Dedans.'),
(4, 'Tsew The Kid\r\n', 'img/tsew.jpg', 'Tsew The Kid né le 3 décembre 1996 dans le 15ème arrondissement de Paris.\r\nIl grandit dans la ville d’Antananarivo, la capitale de Madagascar, avec son père, sa mère et sa grande sœur. La famille reviendra en France en 2001 pour s\'installer à Savigny-sur-');

-- --------------------------------------------------------

--
-- Structure de la table `musique`
--

CREATE TABLE `musique` (
  `id_musique` bigint(20) UNSIGNED NOT NULL,
  `musique_nom` varchar(255) NOT NULL,
  `musique_duree` varchar(255) NOT NULL,
  `id_album` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `musique`
--

INSERT INTO `musique` (`id_musique`, `musique_nom`, `musique_duree`, `id_album`) VALUES
(1, 'La thune', '3:21', 1),
(2, 'Balance ton quoi', '3:09', 1),
(3, 'Jalousie', '3:45', 1),
(4, 'Tout oublier', '3:22', 1),
(5, 'La loi de Murphy', '3:15', 1),
(6, 'Nombreux', '3:12', 1),
(7, 'Victime des réseaux', '3:22', 1),
(8, 'Les matins', '2:55', 1),
(9, 'Je veux tes yeux', '3:25', 1),
(10, 'Ta reine', '3:33', 1),
(11, 'Flemme', '4:16', 1),
(12, 'Flou', '3:16', 1),
(13, 'Bruxelles je t\'aime', '3:48', 2),
(14, 'Libre', '2:44', 2),
(15, 'On s\'habitue', '2:38', 2),
(16, 'Solo', '3:40', 2),
(17, 'Pensées positives', '3:31', 2),
(18, 'Taxi', '4:18', 2),
(19, 'Demon', '4:11', 2),
(20, 'Plus de sens', '3:29', 2),
(21, 'Tempête', '3:40', 2),
(22, 'Profite', '4:09', 2),
(23, 'Mots justes ', '3:10', 2),
(24, 'Mauvais rêves', '3:55', 2),
(25, 'OG', '1:40', 3),
(26, 'VANTABLACK', '2:33', 3),
(27, 'DOSE', '3:10', 3),
(28, 'MOROSE', '4:23', 3),
(29, 'CHIALER', '3:48', 3),
(30, '2 DIAMANTS', '3:17', 3),
(31, 'THEVIE RADIO', '3:54', 3),
(32, 'ZWAAR', '3:21', 3),
(33, 'PASSION', '4:37', 3),
(34, 'VIVRE UN PEU', '3:55', 3),
(35, 'YOUVOI', '2:51', 3),
(36, 'MEVTR', '2:45', 3),
(37, 'LIFE LIFE', '2:40', 3),
(38, 'DEUX TOILES DE MER', '5:15', 3),
(39, 'SENTIMENTAL', '3:26', 3),
(40, 'THEVIE RADIO (interlude)', '1:00', 3),
(41, 'BXL ZOO', '3:21', 3),
(42, 'COEUR EN MIETTES', '3:28', 3),
(43, 'POUR L\'ARGENT', '2:18', 3),
(44, 'BPM', '3:02', 3),
(45, 'D\'JA ROULÉ', '3:03', 3),
(46, '911', '2:52', 3),
(47, 'FAIS ÇA BIEN', '3:22', 3),
(48, 'ROSE MARTHE\'S LOVE', '3:11', 3),
(49, 'INTRO', '5:16', 3),
(50, 'Introduction', '1:50', 4),
(51, 'Festival de rêves', '3:25', 4),
(52, 'Baltringue', '4:48', 4),
(53, 'Julien', '3:22', 4),
(54, 'Silence', '2:07', 4),
(55, 'Feu de bois', '3:03', 4),
(56, 'Même issue', '3:16', 4),
(57, 'Smog', '2:48', 4),
(58, '60 années', '2:58', 4),
(59, 'Au paradis', '2:48', 4),
(60, 'Dix leurres', '3:25', 4),
(61, 'NMI', '2:37', 4),
(62, 'Perplexe', '3:40', 4),
(63, 'Tard la night', '2:36', 4),
(64, 'Noir meilleur', '3:24', 4),
(65, 'William', '1:35', 4),
(66, 'Ipséité', '3:28', 4),
(67, 'Humain', '3:54', 4),
(68, 'Nwaar Is The New Black', '2:03', 5),
(69, '#QuedusaalVIe', '4:04', 5),
(70, 'Mosaïque solitaire', '5:05', 5),
(71, 'Dieu ne ment jamais', '3:19', 5),
(72, 'Signaler', '3:21', 5),
(73, 'Kietu', '3:52', 5),
(74, 'Gova', '3:17', 5),
(75, 'Macarena', '3:26', 5),
(76, 'Peur d\'être père', '3:24', 5),
(77, 'Kin la belle', '3:20', 5),
(78, 'Lové', '3:29', 5),
(79, 'Noob Saibot', '3:22', 5),
(80, 'J Respect R', '3:37', 5),
(81, 'Une âme pour deux', '4:00', 5),
(82, 'Bénef', '3:10', 6),
(83, 'On sait jamais', '3:14', 6),
(84, 'Les comptes', '2:52', 6),
(85, 'Billet d\'20', '3:22', 6),
(86, 'Dégaine de bandit', '2:50', 6),
(87, 'Dans les clips', '3:08', 6),
(88, 'C\'est mort', '3:18', 6),
(89, 'Pourtant', '3:11', 6),
(90, 'Mamie', '3:36', 6),
(91, 'Alleluia', '3:19', 6),
(92, 'Chandon et Moët', '3:55', 6),
(93, 'Calme', '2:34', 6),
(94, 'La vie c\'est marrant', '2:15', 6),
(95, '3 en 1', '3:34', 6),
(96, 'Toutes générations', '2:59', 6),
(97, 'Au fond d\'ma tête', '2:44', 6),
(98, 'Pilote', '3:07', 6),
(99, 'Terrible', '2:41', 6),
(100, 'Intr100000', '3:40', 7),
(101, 'Un peu de haine', '2:47', 7),
(102, 'Arai', '3:15', 7),
(103, 'Toute l\'année', '3:18', 7),
(104, 'Hola', '2:46', 7),
(105, 'Travailler', '2:55', 7),
(106, 'Nana', '2:40', 7),
(107, 'Meilleur cauchemar', '3:19', 7),
(108, 'Tout recommencer', '3:47', 7),
(109, 'V2V', '3:24', 7),
(110, 'Corazon', '3:15', 7),
(111, 'Le P', '3:12', 7),
(112, 'Ma génération', '3:20', 7),
(113, 'Mental', '2:57', 7),
(114, 'Problèmes', '3:09', 7),
(115, 'Cartelo', '2:41', 7),
(116, 'RS3', '2:29', 7),
(117, 'TT', '3:23', 7),
(118, 'Temps perdu', '3:05', 7),
(119, 'Intro', '2:36', 8),
(120, 'Le sel', '2:52', 8),
(121, 'Woaw', '3:14', 8),
(122, 'Séparer', '3:01', 8),
(123, '250', '2:46', 8),
(124, 'Idiote', '3:20', 8),
(125, 'Polak', '2:53', 8),
(126, 'Gozie', '3:08', 8),
(127, 'Bunkoeur', '3:32', 8),
(128, 'Monégasque', '3:23', 8),
(129, 'Hier', '3:40', 8),
(130, 'Ils nous comprennent pas', '3:02', 8),
(131, 'Olcho Gvng', '3:24', 8),
(132, 'Weed', '3:15', 8),
(133, 'Enfant du hall', '3:41', 8),
(134, 'Dingue', '2:57', 8),
(135, 'Sans suite', '3:32', 8),
(136, 'Émotif', '2:41', 8),
(137, 'Pas besoin', '2:56', 9),
(138, 'Mentalité', '2:53', 9),
(139, 'Izé', '3:57', 9),
(140, 'A A A', '3:18', 9),
(141, 'La rue', '3:36', 9),
(142, 'Pas les mêmes', '3:23', 9),
(143, 'Homies', '3:32', 9),
(144, 'Colis piégés', '3:01', 9),
(145, 'Platinum', '2:25', 9),
(146, '260', '2:38', 9),
(147, 'Copine', '3:19', 9),
(148, 'High', '3:18', 9),
(149, 'Niveau', '3:38', 9),
(150, 'Dis-moi oui', '3:08', 9),
(151, 'Go', '3:13', 9),
(152, 'C\'est grave', '3:26', 9),
(153, 'Flamenco', '3:00', 9),
(154, 'Maman m\'a dit', '3:21', 10),
(155, 'Plus rien', '2:40', 10),
(156, 'Ailleurs', '3:11', 10),
(157, 'La musique ne m\'a jamais déçu', '2:11', 10),
(158, 'Maladroit', '2:24', 10),
(159, 'Dis-moi', '3:31', 10),
(160, 'Fa Manina', '2:57', 10),
(161, 'On s\'en fout des autres', '2:39', 10),
(162, 'Sales idées', '2:54', 10),
(163, 'Nos âmes se mélangent', '3:24', 10),
(164, 'Solitude', '5:14', 10),
(165, 'Saoulé', '2:03', 10),
(166, 'Un temps pour', '2:18', 10),
(167, 'Fitia', '2:29', 10),
(168, 'Sorry', '2:46', 10),
(169, 'Plus d\'amour à te donner', '2:53', 10),
(170, 'Me laissez pas tomber', '3:17', 10),
(171, 'Outro', '2:19', 10),
(172, 'Sur ton corps', '3:08', 11),
(173, 'Mon cœur danse', '2:50', 11),
(174, 'Besoin de personne', '3:29', 11),
(175, 'Maussade', '3:09', 11),
(176, '5, 4, 3, 2, 1', '2:52', 11),
(177, 'Viens avec moi', '2:42', 11),
(178, 'Foutu', '2:40', 11),
(179, 'Wouna', '3:11', 11),
(180, 'Peur de sombrer', '3:15', 11),
(181, 'Insomnie', '2:18', 11),
(182, 'Ôter', '2:32', 11),
(183, 'Nah nah', '3:32', 11),
(184, 'Lendemain', '3:20', 11),
(185, 'Fasciné', '2:44', 11),
(186, 'Loin de moi', '3:06', 11),
(187, 'J\'veux que tu me remarques', '3:34', 11),
(188, 'Ma parisienne', '2:52', 11),
(189, 'Partir loin', '3:01', 11),
(190, 'Fin de soirée', '3:21', 11),
(191, 'Loca', '3:08', 11),
(192, 'Reste', '3:39', 11),
(193, 'Rockstar', '2:49', 12),
(194, 'Toxic boy', '2:40', 12),
(195, 'L\'Orage', '3:12', 12),
(196, 'Sur le cœur', '3:08', 12),
(197, 'Une ombre', '3:18', 12),
(198, 'SOS', '2:16', 12),
(199, 'Évadé', '3:31', 13),
(200, 'Lofi Ride', '2:26', 13),
(201, 'Si je pars ce soir', '2:42', 13),
(202, 'Garçon préféré', '2:13', 13),
(203, 'Évadé (instrumentale)', '2:54', 13),
(204, 'Lofi Ride (istrumentale)', '2:26', 13),
(205, 'Si je pars ce soir (instrumentale)', '2:43', 13),
(206, 'Garçon préféré (instrumentale)', '1:40', 13);

-- --------------------------------------------------------

--
-- Structure de la table `musique_artiste`
--

CREATE TABLE `musique_artiste` (
  `id_musique` bigint(20) UNSIGNED NOT NULL,
  `id_artiste` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `musique_artiste`
--

INSERT INTO `musique_artiste` (`id_musique`, `id_artiste`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(19, 2),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 1),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 3),
(83, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(91, 3),
(92, 3),
(93, 3),
(94, 3),
(95, 3),
(96, 3),
(97, 3),
(98, 3),
(99, 3),
(100, 3),
(101, 3),
(102, 3),
(103, 3),
(104, 3),
(105, 3),
(106, 3),
(107, 3),
(108, 3),
(109, 3),
(110, 3),
(111, 3),
(112, 3),
(113, 3),
(114, 3),
(115, 3),
(116, 3),
(117, 3),
(118, 3),
(119, 3),
(120, 3),
(121, 3),
(122, 3),
(123, 3),
(124, 3),
(125, 3),
(126, 3),
(127, 3),
(128, 3),
(129, 3),
(130, 3),
(131, 3),
(132, 3),
(133, 3),
(134, 3),
(135, 3),
(136, 3),
(137, 3),
(138, 3),
(139, 3),
(140, 3),
(141, 3),
(142, 3),
(143, 3),
(144, 3),
(145, 3),
(146, 3),
(147, 3),
(148, 3),
(149, 3),
(150, 3),
(151, 3),
(152, 3),
(153, 3),
(154, 4),
(155, 4),
(156, 4),
(157, 4),
(158, 4),
(159, 4),
(160, 4),
(161, 4),
(162, 4),
(163, 4),
(164, 4),
(165, 4),
(166, 4),
(167, 4),
(168, 2),
(168, 4),
(169, 4),
(170, 4),
(171, 4),
(172, 4),
(173, 4),
(174, 4),
(175, 4),
(176, 4),
(177, 4),
(178, 4),
(179, 4),
(180, 4),
(181, 4),
(182, 4),
(183, 4),
(184, 4),
(185, 4),
(186, 4),
(187, 4),
(188, 4),
(189, 4),
(190, 4),
(191, 4),
(192, 4),
(193, 4),
(194, 4),
(195, 4),
(196, 4),
(197, 4),
(198, 4),
(199, 4),
(200, 4),
(201, 4),
(202, 4),
(203, 4),
(204, 4),
(205, 4),
(206, 4);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id_type` bigint(20) UNSIGNED NOT NULL,
  `type_nom` varchar(255) NOT NULL,
  `type_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`id_type`, `type_nom`, `type_description`) VALUES
(1, 'Rap', 'Le rap est un mouvement culturel et musical (musique populaire) qui tire ses origines du hip-hop. Apparu au début des années 1970 dans les ghettos américains, le rap se caractérise par une diction très rythmée et l’usage de la rime.'),
(2, 'Pop', 'La musique pop (ou simplement la pop) est un genre musical apparu dans les années 1960 au Royaume-Uni et aux États-Unis. Les chansons pop parlent en général de l\'amour ou des relations amoureuses.Cette musique met l\'accent sur la chanson individuelle plut'),
(3, 'Hip-Hop', 'Le hip-hop est un genre musical de musique populaire caractérisé par un rythme accompagné par son expression musicale le rap et de la culture artistique l\'entourant créé à New York dans le South Bronx au début des années 1970.');

-- --------------------------------------------------------

--
-- Structure de la table `type_album`
--

CREATE TABLE `type_album` (
  `id_album` bigint(20) UNSIGNED NOT NULL,
  `id_type` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type_album`
--

INSERT INTO `type_album` (`id_album`, `id_type`) VALUES
(1, 2),
(2, 2),
(3, 1),
(3, 3),
(4, 1),
(5, 1),
(5, 2),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 2),
(11, 2),
(12, 2),
(13, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`),
  ADD UNIQUE KEY `id_album` (`id_album`),
  ADD KEY `FK_Album_Artiste` (`id_artiste`);

--
-- Index pour la table `artiste`
--
ALTER TABLE `artiste`
  ADD PRIMARY KEY (`id_artiste`),
  ADD UNIQUE KEY `id_artiste` (`id_artiste`);

--
-- Index pour la table `musique`
--
ALTER TABLE `musique`
  ADD PRIMARY KEY (`id_musique`),
  ADD UNIQUE KEY `id_musique` (`id_musique`),
  ADD KEY `Fk_Musique_Album` (`id_album`);

--
-- Index pour la table `musique_artiste`
--
ALTER TABLE `musique_artiste`
  ADD PRIMARY KEY (`id_musique`,`id_artiste`),
  ADD KEY `FK_Musique_Artiste_Artiste` (`id_artiste`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`),
  ADD UNIQUE KEY `id_type` (`id_type`);

--
-- Index pour la table `type_album`
--
ALTER TABLE `type_album`
  ADD PRIMARY KEY (`id_album`,`id_type`),
  ADD KEY `FK_Type_Album_Type` (`id_type`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `artiste`
--
ALTER TABLE `artiste`
  MODIFY `id_artiste` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `musique`
--
ALTER TABLE `musique`
  MODIFY `id_musique` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `id_type` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `FK_Album_Artiste` FOREIGN KEY (`id_artiste`) REFERENCES `artiste` (`id_artiste`);

--
-- Contraintes pour la table `musique`
--
ALTER TABLE `musique`
  ADD CONSTRAINT `Fk_Musique_Album` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`);

--
-- Contraintes pour la table `musique_artiste`
--
ALTER TABLE `musique_artiste`
  ADD CONSTRAINT `FK_Musique_Artiste_Artiste` FOREIGN KEY (`id_artiste`) REFERENCES `artiste` (`id_artiste`),
  ADD CONSTRAINT `FK_Musique_Artiste_Musique` FOREIGN KEY (`id_musique`) REFERENCES `musique` (`id_musique`);

--
-- Contraintes pour la table `type_album`
--
ALTER TABLE `type_album`
  ADD CONSTRAINT `FK_Type_Album_Album` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Type_Album_Type` FOREIGN KEY (`id_type`) REFERENCES `type` (`id_type`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
