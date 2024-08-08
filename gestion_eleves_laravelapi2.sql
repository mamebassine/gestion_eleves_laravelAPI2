-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 08 août 2024 à 16:13
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_eleves_laravelapi2`
--

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `matricule` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `date_naissance` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `prenom`, `nom`, `adresse`, `telephone`, `matricule`, `email`, `mot_de_passe`, `photo`, `date_naissance`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bassine', 'lollooo', '413 Connelly Walk\nLake Lesley, DE 90687-3913', '+1-667-421-6723', 'MATR-39924', 'manuela.murray@example.org', '$2y$12$hrOJj7txB.YMjIzJxWrmsugS1jWVNluxwRyTPz2UfgKP.cD0QCI7i', 'https://via.placeholder.com/200x200.png/007733?text=ut', '2000-01-17', '2024-08-07 00:42:52', '2024-08-07 12:24:56', NULL),
(2, 'Paris', 'Morissette', '80785 McCullough Islands\nNew Anselview, MN 68705-5966', '+1.878.710.7942', 'MATR-49961', 'nelle19@example.com', '$2y$12$EO6c87XAanH6J34PRsj/iuj4qqjcpeSYWAwPGwfYWGjz2K7/ic1Km', 'https://via.placeholder.com/200x200.png/0077ee?text=quam', '1996-02-22', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(3, 'Taurean', 'Marvin', '19944 Goodwin Walk Suite 169\nEast Paolomouth, CO 76938-7026', '+1-571-361-3803', 'MATR-24840', 'tkunze@example.com', '$2y$12$03hSUxS8Vlv7irhJSqZHvueECbMEd8DLRanE2It/XNV8PKhM7eQ/.', 'https://via.placeholder.com/200x200.png/002211?text=nobis', '2011-04-18', '2024-08-07 00:42:52', '2024-08-07 10:06:13', '2024-08-07 10:06:13'),
(4, 'Damien', 'Emard', '450 Kuvalis Port\nPort Kallieland, WI 66542', '+1.361.507.8978', 'MATR-25648', 'romaguera.benjamin@example.com', '$2y$12$J.gXvTrYUHE2T/MxlDmAkelKrFhnvTtcCw5.JCP8/ZjhTMpBBAWQ2', 'https://via.placeholder.com/200x200.png/00bb88?text=voluptatem', '2001-12-29', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(5, 'Victor', 'Bode', '2142 Bernhard Green Apt. 699\nWest Patsy, RI 17586-3193', '541-646-7268', 'MATR-23295', 'flavie79@example.com', '$2y$12$oaW2uY.WwS0ga1Dn7cjp9Of0agW8eLIDjYqfw.bbF9DO6deB5dKz.', 'https://via.placeholder.com/200x200.png/0066dd?text=quasi', '2005-07-20', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(6, 'Frederick', 'Reichert', '322 Pattie Parks Suite 318\nSouth Clemensmouth, IA 54572', '+1.240.576.9796', 'MATR-62086', 'qdooley@example.org', '$2y$12$TEoKLhA8G8f8QSHUzRoxeObmTjRt.R2NoDwDgNgxevncVZwIL1Mky', 'https://via.placeholder.com/200x200.png/002244?text=velit', '1971-05-21', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(7, 'Lorenzo', 'Lebsack', '5291 Elenor Highway\nNew Dameonfort, FL 92738', '+1-617-749-4816', 'MATR-87636', 'jared73@example.net', '$2y$12$YlnfJFbvQ9jIO4zmALed3eKnn2twtoVE5eYpFzj5s.xuxg4.rOdg2', 'https://via.placeholder.com/200x200.png/00eecc?text=ea', '2006-09-03', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(8, 'Aileen', 'Mayert', '3884 Rath Center\nWest Javontefort, SC 91337-4625', '+1-934-879-3925', 'MATR-02131', 'rosalind01@example.org', '$2y$12$saxDwMBG9/PuG7Oz.M0ah.ByaK9e/1xF0796gvKtfitv4MG9qruBS', 'https://via.placeholder.com/200x200.png/00ff44?text=odio', '1972-02-09', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(9, 'Cordia', 'Ondricka', '91021 Estefania Stream\nLake Chesley, KS 63904-0131', '540.814.1674', 'MATR-11793', 'vbednar@example.com', '$2y$12$WWsnaVGhcvyiFrZ7rDMxwuMmFpDIgGMi4BfrPUkE6s2ZJr5wFAYWq', 'https://via.placeholder.com/200x200.png/00cc11?text=nesciunt', '2017-01-11', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(10, 'Eryn', 'Brekke', '6015 Millie Pine Suite 578\nEast Cortneyfurt, MN 07635-3035', '1-319-230-3286', 'MATR-25001', 'alexandrine.robel@example.com', '$2y$12$zjM1lCr3LNNaythX4ZOnquAS9k5gxESIXwNn.4B44.anuLK6ODqWy', 'https://via.placeholder.com/200x200.png/00aacc?text=numquam', '2011-12-07', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(11, 'Alexis', 'Grady', '3101 Lorenzo Harbors Apt. 156\nDaronbury, FL 20654-9661', '743.705.7253', 'MATR-72014', 'wtorp@example.net', '$2y$12$ZaxPl4YOdEPRnmUcVTqPsOoZq8IEfw/AwiMzC2BUO4G.9l4b/YczC', 'https://via.placeholder.com/200x200.png/00bb66?text=sunt', '2003-03-06', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(12, 'Marty', 'Wisoky', '6123 Sporer Vista Suite 160\nNorth Katarina, AR 31692-8481', '1-629-429-2836', 'MATR-42129', 'hodkiewicz.maxie@example.org', '$2y$12$gVzr931wlEMPaFoOw3w9vurIEIsPoZUwSxOFKIhoXKoX/lX/vxGvK', 'https://via.placeholder.com/200x200.png/0077ff?text=repudiandae', '1977-09-10', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(13, 'Natalie', 'Thiel', '238 Laverna Harbors Apt. 367\nWatsicaville, MN 08815-6757', '+1-626-256-3369', 'MATR-22409', 'angie97@example.org', '$2y$12$3YQCv8Tnn7TdNH7rySpk9uHsqajfc5pdzNk1jglFn/Ja.GkiSamN.', 'https://via.placeholder.com/200x200.png/0011ff?text=nostrum', '2002-04-24', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(14, 'Heather', 'Funk', '943 Newell Stream Apt. 637\nPort Sadie, MN 69713', '305.290.3929', 'MATR-93106', 'kuhlman.wilma@example.org', '$2y$12$en7XLN.4K.d6J4TZzOlCIe1ldD0TnVTHFR2837fhmnnw1/y4Wray6', 'https://via.placeholder.com/200x200.png/005533?text=excepturi', '2012-10-28', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(15, 'Eino', 'Collier', '4911 Beahan Vista\nNorth Brantbury, KS 59230-4248', '1-651-213-7347', 'MATR-78910', 'xorn@example.org', '$2y$12$u2Cg8EH2quhWVbNz1mVj7um415SeKttJhvIx1lhd0q3FtxSASUWi2', 'https://via.placeholder.com/200x200.png/00ffcc?text=optio', '1985-06-21', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(16, 'Nayeli', 'D\'Amore', '14138 Nikko Burg Apt. 728\nNew Avery, UT 17004-4022', '651-480-7191', 'MATR-44752', 'hannah.muller@example.com', '$2y$12$Ql5w7FQaG9rLky8sepDnl.UAb1hu.I2ag91V5QHTZ6J3ANU5xQ6.e', 'https://via.placeholder.com/200x200.png/00cccc?text=ut', '1987-05-12', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(17, 'Winnifred', 'Hermann', '99206 Samantha Key Apt. 925\nOkunevatown, CO 92442', '1-925-572-0825', 'MATR-42844', 'imelda.oberbrunner@example.net', '$2y$12$aMyVbGevz1s0Xy9IAK85S.LFBkJt/rA9VKneaspq2Wn8zFlydOtzC', 'https://via.placeholder.com/200x200.png/002200?text=facere', '1985-04-08', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(18, 'Trevor', 'Jacobi', '235 Geovany Skyway Apt. 644\nBernadineberg, FL 26679-4452', '1-757-260-6022', 'MATR-63272', 'carlos.rowe@example.com', '$2y$12$V0nslWDOaM8KVtlUB496PeRiYo0DHQxqy8LzZCf8HZvq06jwy3Efi', 'https://via.placeholder.com/200x200.png/003366?text=est', '2019-03-17', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(19, 'Gaston', 'DuBuque', '226 Aiyana Motorway Suite 189\nEast Peggiehaven, ND 03853-3459', '878-556-4714', 'MATR-84511', 'ezra03@example.net', '$2y$12$Kq3aKaZPVeykdj7Nx5Omh.kQ5py0e9SKOZcN5KJ2vRwv2EEdbscyq', 'https://via.placeholder.com/200x200.png/009977?text=aut', '2016-07-06', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(20, 'Rafael', 'Auer', '8531 Gail Trail\nNew Willis, PA 91481', '1-863-860-0012', 'MATR-53594', 'nikki.ryan@example.com', '$2y$12$SDQnfN.Yoympzd.fiXvIxOwyjzuxW.2BdaREy6QqDmWvW0JjXvkam', 'https://via.placeholder.com/200x200.png/00bb77?text=facere', '2013-06-26', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(21, 'Eduardo', 'Lockman', '9650 Emie Drive Suite 473\nSophiamouth, PA 42075', '1-747-785-6705', 'MATR-12853', 'heidenreich.antonietta@example.net', '$2y$12$ezsa8u.2E6lCs7nH2i2G7.AanpF32Kivkpa/zUNQ0pLNa1kzIHd3S', 'https://via.placeholder.com/200x200.png/0022bb?text=quod', '1987-05-24', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(22, 'Mario', 'Breitenberg', '2675 Skye Skyway\nWest Stanton, VA 84875-5565', '(239) 538-7706', 'MATR-95493', 'jaylen.dooley@example.net', '$2y$12$nxRY54fUTZa2J8QBJgXuze70Ikccfe416aopRb8hJE6Vu4/o/s..y', 'https://via.placeholder.com/200x200.png/0077dd?text=consequatur', '1992-06-13', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(23, 'Walker', 'Baumbach', '39043 Runolfsdottir Island\nAlvenafurt, NC 10174', '+1.484.812.5582', 'MATR-21587', 'ethel45@example.org', '$2y$12$d/7zoO8xXWkKRzKcjekemOr1GfKS4Bj7Fojn52ryKiReZFjcTTosu', 'https://via.placeholder.com/200x200.png/002277?text=sit', '1990-07-14', '2024-08-07 00:42:52', '2024-08-07 12:25:39', '2024-08-07 12:25:39'),
(24, 'Jon', 'Russel', '24562 West Island\nMurazikburgh, GA 45412-8018', '567-379-4696', 'MATR-47556', 'alisa.gutkowski@example.com', '$2y$12$wQJlv/4ryATAKPqTZ4OvX.x.8Uk4hniIimAuxgnliaWdajvwVGcNK', 'https://via.placeholder.com/200x200.png/0033ff?text=commodi', '1989-12-26', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(25, 'Yoshiko', 'Nienow', '724 Windler Rest\nSatterfieldside, NE 22834', '+13163561698', 'MATR-55727', 'oscar.bartell@example.net', '$2y$12$udeEcJXjFZTvawm87NKQz.RnUniFVgl2zW5/.JRcYH2Hmkoni0C0.', 'https://via.placeholder.com/200x200.png/000022?text=voluptatibus', '1995-07-06', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(26, 'Pierce', 'Becker', '45221 Ansley Heights Suite 154\nEast Jacquelyn, MO 82977-8418', '1-318-695-8267', 'MATR-46800', 'xpadberg@example.net', '$2y$12$tmmTgQcSmII7gXremmm4qeY2/gjNnebQ2q2DkxsVAdVP1rzWCZALe', 'https://via.placeholder.com/200x200.png/0044aa?text=sed', '1985-01-04', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(27, 'Ashley', 'Hermiston', '8874 Torrance Street\nAlberthaview, VT 31582', '(785) 491-8534', 'MATR-68233', 'jerde.loyal@example.net', '$2y$12$uA7p1jCHZMYxVbuMLTigvuPlrY6f0NmoUZRTaI.MNiAHubNj3uYBm', 'https://via.placeholder.com/200x200.png/009966?text=et', '2009-08-19', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(28, 'Yasmine', 'Franecki', '9036 Milo Manor\nNew Kennedi, TX 95438-4754', '407-404-9483', 'MATR-58911', 'marvin.janie@example.net', '$2y$12$urFygDKO99ouDXmSyi8TQu59FqhEFtsrQUGEaOyZ5oYUtR9UTRIE.', 'https://via.placeholder.com/200x200.png/0066aa?text=quis', '2005-02-09', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(29, 'Mertie', 'Tromp', '760 Durward Flat Suite 791\nPort Ruthe, IN 21670-7820', '1-786-459-4516', 'MATR-54272', 'mpfeffer@example.net', '$2y$12$e32phBEUFZZlOePOS.BDyeCQhyVnXMALVYUPatB0Nu2L1MmteZ.Ai', 'https://via.placeholder.com/200x200.png/0022aa?text=placeat', '2015-08-17', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(30, 'Samir', 'Boyle', '88143 Irwin Ramp Apt. 731\nEllsworthborough, SC 14116-6570', '+1 (858) 405-4485', 'MATR-04145', 'gerlach.stevie@example.net', '$2y$12$fM0oN5O2ljKmO5YE1uUMDOKXSHegHMmWVQRifxwvbZjVfp8gvOA32', 'https://via.placeholder.com/200x200.png/00aa77?text=fugiat', '2020-07-06', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(31, 'Janelle', 'Adams', '18957 Hintz Trafficway Apt. 062\nBergefort, WY 80373', '+1-336-633-5089', 'MATR-35369', 'nolan.seamus@example.org', '$2y$12$Jok9HH7jmFwIkfK79/0S7us9DxxKlGMBVDhKLzJ5yFEVHXtA5Ro7i', 'https://via.placeholder.com/200x200.png/0077bb?text=aut', '2002-04-24', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(32, 'Florian', 'Morar', '1761 Beatty Island\nNew Jaysonfurt, UT 37608', '1-463-301-4243', 'MATR-30760', 'philpert@example.org', '$2y$12$lXC0WeF2WPpqKq2G1ni.PeZGme0KwxVwec98IH9mlyKbCgTgi7Jcm', 'https://via.placeholder.com/200x200.png/009999?text=harum', '2008-01-06', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(33, 'Sylvan', 'Denesik', '43426 Pfeffer Brooks Suite 810\nJohnstonfurt, PA 78391', '215-305-2044', 'MATR-08440', 'haley.luna@example.com', '$2y$12$F1cLtN1cZBZed4ECv8UJ5Ozp48Iel4U19OKM7fqFiZrRV2sEPjvmi', 'https://via.placeholder.com/200x200.png/00bb88?text=consequatur', '2015-10-22', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(34, 'Carolyne', 'Bailey', '7288 Ardella Walk Suite 372\nAurelieland, CO 54289-5381', '1-678-725-9173', 'MATR-92769', 'alayna.upton@example.org', '$2y$12$wKD3QujGZGEYIApqMuIv6u3yw7UzROspS6TIr5WJ9iUHVooWS65sq', 'https://via.placeholder.com/200x200.png/00ffaa?text=eligendi', '2007-02-10', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(35, 'Tanya', 'Beatty', '7149 Dibbert Highway Suite 506\nTrishaburgh, VT 69269-0083', '+1-214-641-1475', 'MATR-58628', 'annamarie.braun@example.net', '$2y$12$M001t0WE4FZZWWV2nxZ1mOFFbuECB/6EyUrbhprsCOBz4XceqhLPm', 'https://via.placeholder.com/200x200.png/00bbdd?text=est', '1984-07-03', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(36, 'Julie', 'Moore', '17459 Caroline Underpass Apt. 124\nEast Esther, MN 18237-7319', '1-915-391-9346', 'MATR-27477', 'cristal86@example.org', '$2y$12$ThmeB718WRT.rDEU2xztOOB573rDdVgAvEDdPbxZuRAugGuMFln2q', 'https://via.placeholder.com/200x200.png/00bbdd?text=cumque', '1971-07-26', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(37, 'Kavon', 'Kozey', '487 Jalyn Lights\nWest Andreaneburgh, GA 09567-7990', '570-358-7232', 'MATR-53691', 'triston02@example.org', '$2y$12$gcTk8Sb8bJ/WhxC4FSVIDekfXVXWNGnsKZTDia6G37EH86JpKBpUK', 'https://via.placeholder.com/200x200.png/002244?text=voluptate', '1994-09-29', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(38, 'Tyshawn', 'McClure', '565 Hammes Bypass\nLake Mervintown, WA 29328', '580-649-3914', 'MATR-25178', 'turcotte.alisa@example.net', '$2y$12$UevfFv.A0rx60ltLI02c4uRpZIwMQ7VFCruAO5cyD6ET8QY3.oxnO', 'https://via.placeholder.com/200x200.png/0055aa?text=non', '1975-10-06', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(39, 'Alanis', 'Mitchell', '660 Glover Glen\nSouth Anikafort, UT 58834-1485', '520.413.0253', 'MATR-37900', 'donnelly.elenora@example.org', '$2y$12$OtP.T75Lyn5bjWhR0NtGFuSw1JLnBDF0w9fjBkviXsPcGIZd1dwkG', 'https://via.placeholder.com/200x200.png/004422?text=sunt', '1976-07-26', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(40, 'Bonnie', 'Lesch', '89829 Torey Heights Suite 812\nLake Merlshire, DC 51996-1424', '+18659294106', 'MATR-52918', 'noemie.pfannerstill@example.org', '$2y$12$DBp2tZMr209JmmIFAKO0OOf1NmpXvg6889OxmLgq2VCENJL/QHyem', 'https://via.placeholder.com/200x200.png/005533?text=doloribus', '2015-02-06', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(41, 'Elyssa', 'Farrell', '69993 Sofia Turnpike\nColumbuschester, WV 14830-3711', '(520) 315-7231', 'MATR-17972', 'zgibson@example.net', '$2y$12$eSaxn/mdevhnL7zpMl6Z4.XOsWuoclUWNmddPadBgAR9iAMv5LQEm', 'https://via.placeholder.com/200x200.png/00bbff?text=et', '1982-03-26', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(42, 'Adrienne', 'Kertzmann', '893 Alycia Harbors Apt. 679\nPort Marion, SC 32254', '+1-407-610-8492', 'MATR-49729', 'theresia.hansen@example.com', '$2y$12$oAX7onXhwcCyBcWdr22YyeUX/EcDTHoLhwpYTjfeslzop7mktOJgq', 'https://via.placeholder.com/200x200.png/00ff66?text=adipisci', '1999-08-19', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(43, 'Lazaro', 'Robel', '121 Terry Locks\nMarlonport, WY 34163-7994', '+1.534.720.4916', 'MATR-54699', 'lavon.oconner@example.net', '$2y$12$U1KPqvMmGg4kXPBstE1xhuQKzU65E2qyMvnKh2l50mWhTp.nfoTOu', 'https://via.placeholder.com/200x200.png/00dd44?text=ad', '1995-08-20', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(44, 'Leonor', 'Johnson', '6243 Adeline Ramp\nEinarmouth, AZ 65947-5606', '1-229-962-5925', 'MATR-91491', 'wilford25@example.org', '$2y$12$DpV7agglfHuv5V7uVB2MQOoGPSnVFgebgSl8.tkyVuMGOm2TS6XMi', 'https://via.placeholder.com/200x200.png/0055ee?text=aliquam', '1973-06-05', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(45, 'Tomasa', 'Kuphal', '622 Kristy Vista\nEast Rupertmouth, WI 98107', '+13129560510', 'MATR-66997', 'iluettgen@example.org', '$2y$12$xmzzZLo2DPcLCvmVaV9XLOtZKxADdx4mnI9rhrozq/4NoEPEGrl7a', 'https://via.placeholder.com/200x200.png/00dd00?text=at', '1979-09-13', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(46, 'Lupe', 'Maggio', '224 Schinner Corner\nFritschton, DE 57476-3830', '831.309.6155', 'MATR-56011', 'ines.jacobson@example.org', '$2y$12$/m1MmGJHs/IpV9I5boRxJOhRgtm60UJ7G/CroSHoWtmF6JAaY80qu', 'https://via.placeholder.com/200x200.png/00bbff?text=cupiditate', '2013-04-17', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(47, 'Nikko', 'Hamill', '731 Ondricka Viaduct Apt. 607\nMargareteville, GA 00207-4090', '+1 (610) 534-0464', 'MATR-75702', 'larkin.elsa@example.net', '$2y$12$revwgWN6Vpx4FMyu8GUFNeHnf6AvIaTkSzZfvBpnBQXUe2zPFG4Hi', 'https://via.placeholder.com/200x200.png/001111?text=enim', '1979-01-18', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(48, 'Alexandra', 'Crist', '157 Krajcik Knolls Suite 565\nSouth Rosalia, MI 97363', '+1-754-541-9544', 'MATR-30796', 'stacy.beahan@example.org', '$2y$12$AB0vhr5NpFpsypoIti34K.koiBPf3o2xmTBgdYYTzWLoX9Sp/9yju', 'https://via.placeholder.com/200x200.png/007788?text=aut', '2007-07-29', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(49, 'Sage', 'Dietrich', '17020 Kasey Motorway\nNorth Hildatown, GA 90361-8449', '1-283-873-3375', 'MATR-07178', 'hipolito.welch@example.org', '$2y$12$YA1XaIDhkaVdWEAe207QR.ZvusGZvnne2tfSoJFGLiDE3B04WGY2W', 'https://via.placeholder.com/200x200.png/00ff99?text=velit', '2015-06-20', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(50, 'Etha', 'Dooley', '25057 Ferry Circles Suite 467\nBraunton, MD 40136', '870-512-0323', 'MATR-34632', 'gleuschke@example.com', '$2y$12$UVL4u2SC9p9WOJLVXr7mmuVFUcFK8mnOU1yPl/oQSCTXPk8EeNfpC', 'https://via.placeholder.com/200x200.png/00bbbb?text=consequatur', '1998-11-27', '2024-08-07 00:42:52', '2024-08-07 00:42:52', NULL),
(51, 'Eduardo', 'Bogisich', '40517 Wintheiser Port Suite 448\nYundtburgh, ME 09713', '(380) 706-1301', 'MATR-43013', 'tsatterfield@example.net', '$2y$12$xfd6GliwK1sAAGQX9kJCd.lNz2/Ne.vgDya8NQ/VMvUoN/8bQevRi', 'https://via.placeholder.com/200x200.png/00ddee?text=consequuntur', '1978-06-22', '2024-08-07 00:42:53', '2024-08-07 00:42:53', NULL),
(52, 'Alvis', 'West', '23701 Aufderhar Branch Apt. 698\nLonnyview, KS 73273', '+1.303.702.5788', 'MATR-05061', 'tremblay.keira@example.org', '$2y$12$RWzr63w8HZtlnesBIu.v4u2zPvNy79dJFcwSsxERgov.SVKlgQMlm', 'https://via.placeholder.com/200x200.png/00bb44?text=aspernatur', '1976-10-02', '2024-08-07 00:42:53', '2024-08-07 00:42:53', NULL),
(53, 'London', 'Dach', '92931 Karl Meadow Suite 784\nLake Bernadinebury, NH 25850-8047', '+1-360-677-0766', 'MATR-16588', 'wiley22@example.org', '$2y$12$qVXWzkGSArzgsik3vb5L.uvZ.mCGX7R6zUwyrYNoeoKMq1PLnv0HC', 'https://via.placeholder.com/200x200.png/0044aa?text=provident', '1970-10-11', '2024-08-07 00:42:53', '2024-08-07 00:42:53', NULL),
(54, 'Jarrett', 'Walter', '5653 Sydnee Drive\nRubenburgh, NJ 34817-0617', '+1.304.935.1779', 'MATR-17604', 'bartoletti.dominic@example.org', '$2y$12$yyb6W3eyYRbr7annG.hlcuowllmDdqsntqMUThuyNTefInYnMW242', 'https://via.placeholder.com/200x200.png/009900?text=modi', '1971-11-12', '2024-08-07 00:42:54', '2024-08-07 00:42:54', NULL),
(55, 'Maverick', 'Luettgen', '656 Hintz Divide\nSouth Cristal, WV 09122-6692', '352.358.4114', 'MATR-18778', 'vstoltenberg@example.com', '$2y$12$Wmqqclhnc9i7KZunHZGrNupK/c6HQnrhxL2LO95vdm5rCAi3evQy6', 'https://via.placeholder.com/200x200.png/002222?text=aperiam', '1987-04-29', '2024-08-07 00:42:54', '2024-08-07 00:42:54', NULL),
(56, 'Theodora', 'Hudson', '81554 Flossie Street\nLake Electaborough, VA 29911', '(985) 957-5634', 'MATR-38481', 'czulauf@example.net', '$2y$12$I11Kpy/t8xOPUVk/65F7su50oEa9z2suwiP9.ZUedlu11z0v1Q6d.', 'https://via.placeholder.com/200x200.png/0077cc?text=atque', '1983-03-15', '2024-08-07 00:42:54', '2024-08-07 00:42:54', NULL),
(57, 'Isabel', 'Dibbert', '197 Ansley Forks Apt. 681\nMaxieport, LA 31213', '+18159600600', 'MATR-19720', 'oharvey@example.org', '$2y$12$W5EOO9ERzyQ918JvhFViUOg3roJm2B.wePoyKHgL6.FsqfdIGHSvm', 'https://via.placeholder.com/200x200.png/005544?text=aliquid', '1990-12-28', '2024-08-07 00:42:55', '2024-08-07 00:42:55', NULL),
(58, 'Nicola', 'Quitzon', '3836 Hamill Estates Suite 132\nNorth Eladiomouth, GA 31704', '+17162769412', 'MATR-07250', 'hardy46@example.com', '$2y$12$om9.D0qsXjfOFuxphurpTO9j0UuuS99HPznP5liC7bB2ffvK8CzwC', 'https://via.placeholder.com/200x200.png/00aa77?text=libero', '2004-12-17', '2024-08-07 00:42:55', '2024-08-07 00:42:55', NULL),
(59, 'Horacio', 'Beahan', '612 Haag Square Suite 965\nLake Dominique, GA 83390', '+1-812-280-7722', 'MATR-56281', 'emard.devyn@example.org', '$2y$12$44bIcWSvHwYmFjwixS7.le2kL9ERu2DPTL0PwyOE1Kt7e465n2TOi', 'https://via.placeholder.com/200x200.png/0044ff?text=beatae', '1975-12-09', '2024-08-07 00:42:55', '2024-08-07 00:42:55', NULL),
(60, 'Loren', 'Beatty', '52169 Norbert Grove Suite 191\nRobbiemouth, MI 54642-1569', '443.689.8938', 'MATR-93292', 'gschneider@example.net', '$2y$12$ru7oqu5m5xWY1YogtD0bgeWYbMC7joJQIQfxqL.79FI.GW1F/lMMu', 'https://via.placeholder.com/200x200.png/005544?text=id', '2011-04-14', '2024-08-07 00:42:56', '2024-08-07 00:42:56', NULL),
(61, 'Jean', 'Littel', '40730 Gutkowski Meadow Apt. 543\nKoelpinmouth, MN 68600-4565', '+1-540-664-9770', 'MATR-86786', 'jillian73@example.net', '$2y$12$Uck6InCjpfnus8X0dV5JluE2sGsQ1O6FaK5KTQ10MfniWj8a9D8b6', 'https://via.placeholder.com/200x200.png/007788?text=sit', '2009-02-20', '2024-08-07 00:42:56', '2024-08-07 00:42:56', NULL),
(62, 'Ilene', 'Fay', '1944 Verda Knolls Apt. 753\nLake Jadaborough, MN 11558', '+1-743-782-5630', 'MATR-46338', 'gutkowski.lucienne@example.net', '$2y$12$Z1ve9JDnD.n/xnwn2RFK5OvdYbDOnedOKgswer6Q.BxfF.W2vItVG', 'https://via.placeholder.com/200x200.png/00ff55?text=necessitatibus', '1997-12-09', '2024-08-07 00:42:56', '2024-08-07 00:42:56', NULL),
(63, 'Astrid', 'Gibson', '8471 Lockman Views Apt. 938\nEast Lila, ID 42311-9671', '+1 (336) 206-8803', 'MATR-14905', 'stephon.berge@example.com', '$2y$12$ZZaPviHIkGyQYvnC8rT4z.bBsM3jc5dUQnWSeIoIR3sLHHrfXteu6', 'https://via.placeholder.com/200x200.png/0066cc?text=quo', '1988-03-03', '2024-08-07 00:42:57', '2024-08-07 00:42:57', NULL),
(64, 'Carlo', 'Dicki', '817 Herzog Drive\nLake Colby, UT 62579-6355', '1-619-918-8537', 'MATR-84264', 'agreenfelder@example.net', '$2y$12$QlIZkdA73SaSnkUVNPKF3exFyqUJi7tOVOTQserOBXV1wUFAIP3Di', 'https://via.placeholder.com/200x200.png/0000ff?text=omnis', '2020-05-09', '2024-08-07 00:42:57', '2024-08-07 00:42:57', NULL),
(65, 'Jarrett', 'Quigley', '5089 Gutkowski Springs\nWest Trenton, OH 56265', '+17192959459', 'MATR-22328', 'parker.sydnee@example.org', '$2y$12$ub2An1osEK7CzQxfnK2u4.XNC7Fb148yXFqvkR9buJriLxXryO1FC', 'https://via.placeholder.com/200x200.png/006655?text=est', '1996-09-16', '2024-08-07 00:42:57', '2024-08-07 00:42:57', NULL),
(66, 'Linnea', 'Collins', '20982 Graham Roads Apt. 794\nWest Jed, NJ 52748-4079', '510.349.4597', 'MATR-80309', 'lebsack.jamaal@example.com', '$2y$12$sh5IAD/LTmP6XGAslJDzTeqmfooFv2.BIr4V47rZs7kJIyu3irqdS', 'https://via.placeholder.com/200x200.png/0022dd?text=quos', '2018-02-19', '2024-08-07 00:42:58', '2024-08-07 00:42:58', NULL),
(67, 'Maxie', 'Krajcik', '569 Runolfsson Rue\nSatterfieldville, PA 36072', '(458) 623-4811', 'MATR-05629', 'derrick70@example.net', '$2y$12$9sZYiJ/Mu7zD0zgUEQLsWe1KFKpmVMwDP..W7pkpIZMEpDfQWffU.', 'https://via.placeholder.com/200x200.png/00ff55?text=quasi', '1990-04-07', '2024-08-07 00:42:58', '2024-08-07 00:42:58', NULL),
(68, 'Violette', 'Torp', '546 Weber Dale\nMollyville, WA 33050-0822', '+1-985-706-9075', 'MATR-85117', 'mherzog@example.org', '$2y$12$hxY1QiqJx05HHZ2t7NwuPucN47hLwlvYqlqedhfIqhoW2IIa1cqiu', 'https://via.placeholder.com/200x200.png/00bb33?text=et', '1973-12-04', '2024-08-07 00:42:58', '2024-08-07 00:42:58', NULL),
(69, 'Adele', 'Feil', '1999 Hansen Brook\nStehrside, OH 39198', '+12526216124', 'MATR-44158', 'hromaguera@example.org', '$2y$12$87Ynfjvv773k4upuYP0.uuMRVgCjV54XtP/B.ZTJDqs2CYnswGR3i', 'https://via.placeholder.com/200x200.png/006655?text=quos', '1993-08-01', '2024-08-07 00:42:58', '2024-08-07 00:42:58', NULL),
(70, 'Gladyce', 'Rodriguez', '89693 Branson Coves\nLake Sammymouth, NH 76396', '949-354-0293', 'MATR-97734', 'emard.devonte@example.com', '$2y$12$X.oqROQGo/ALM7/C8TLXcesFrV9b.0W7X3M/LGNcMbqydljpLD0dK', 'https://via.placeholder.com/200x200.png/009955?text=qui', '1987-08-12', '2024-08-07 00:42:59', '2024-08-07 00:42:59', NULL),
(71, 'Kali', 'Bernhard', '56398 Wehner Ramp\nProhaskaport, IL 95281-4095', '430.395.2389', 'MATR-07133', 'roman20@example.org', '$2y$12$6i/BdFCJMDIIJyZ2oHgsrePMpT8LLx0fOVtATOs9YPkpb4eeM4yDy', 'https://via.placeholder.com/200x200.png/000055?text=culpa', '2003-03-19', '2024-08-07 00:42:59', '2024-08-07 00:42:59', NULL),
(72, 'Adriana', 'Gerhold', '4262 Maverick Trail\nHintzport, UT 84721', '+1 (769) 332-3660', 'MATR-79243', 'harrison.hansen@example.com', '$2y$12$Skzh6p4BcKNFSCdW0DHTb.lrZepvuDCKdnjgJBtZfuOus1KywknAa', 'https://via.placeholder.com/200x200.png/00bbee?text=distinctio', '1976-08-29', '2024-08-07 00:42:59', '2024-08-07 00:42:59', NULL),
(73, 'Porter', 'Gleichner', '604 Fritsch Corners Apt. 502\nPort Tevinland, NH 35479-8666', '941.542.5170', 'MATR-48290', 'abuckridge@example.org', '$2y$12$sKD.92UH8Nhu1KKnxyeEXeBgr4f4N5tqpPpgucvUe7.vUB6PeJ9ei', 'https://via.placeholder.com/200x200.png/008866?text=dicta', '1977-08-06', '2024-08-07 00:43:00', '2024-08-07 00:43:00', NULL),
(74, 'Chelsie', 'Schulist', '36686 Hudson Roads\nEuniceland, MD 73586-3660', '704.863.0808', 'MATR-54258', 'nbechtelar@example.net', '$2y$12$LfJNIe.zOp53rKKIcJtVkebENv0Ktva5RKrrxDaeiQMolF/HhB87u', 'https://via.placeholder.com/200x200.png/00bb11?text=dolorem', '2003-12-02', '2024-08-07 00:43:00', '2024-08-07 00:43:00', NULL),
(75, 'Felicity', 'Smith', '16215 Cremin Well\nNorth Bertton, ID 54351', '+1 (628) 727-1266', 'MATR-42698', 'edgardo55@example.net', '$2y$12$DHDd2zf.C.Ven65uEr51l.iArhrxeaFStmIQ312nkbph8ZhH6pBv2', 'https://via.placeholder.com/200x200.png/004411?text=aut', '1989-03-11', '2024-08-07 00:43:00', '2024-08-07 00:43:00', NULL),
(76, 'Janessa', 'Barton', '6621 Becker Lake\nBradtkefort, NE 97498-9732', '+1.334.552.4256', 'MATR-69604', 'block.ricky@example.com', '$2y$12$HSw.y.esgYx1Yfv6l7iduul.4dFj73KPG1OFR46q8wYNreF7cpaRa', 'https://via.placeholder.com/200x200.png/003366?text=accusamus', '2018-08-28', '2024-08-07 00:43:01', '2024-08-07 00:43:01', NULL),
(77, 'Damian', 'Beatty', '94235 Goldner Trafficway Apt. 043\nAdelineport, TN 88222', '267-503-8102', 'MATR-72729', 'amonahan@example.net', '$2y$12$LtvwKivBeSSVTvlr7jNHberPuqN.yxtPf9X.kTbpRGTyVM6x5pxEK', 'https://via.placeholder.com/200x200.png/007777?text=qui', '1989-02-04', '2024-08-07 00:43:01', '2024-08-07 00:43:01', NULL),
(78, 'Reuben', 'Adams', '262 Randi Gateway\nSouth Coleside, CA 84725', '501-823-2362', 'MATR-56262', 'grayce53@example.org', '$2y$12$CFb1VMlIt7oEMCQrJzMJvO.GqppzXPb0AxZSx8j7s1IVPaid/IC/O', 'https://via.placeholder.com/200x200.png/00ff44?text=cumque', '2005-08-05', '2024-08-07 00:43:01', '2024-08-07 00:43:01', NULL),
(79, 'Kirsten', 'Hagenes', '8252 Kyra Stream\nWest Kayli, PA 57709-0570', '228.996.5964', 'MATR-64992', 'shakira51@example.net', '$2y$12$WkjOk./EScNPi.UvjruKnOFh7VpEZgkmBfYKt5ybwV0Sip.qtWjAK', 'https://via.placeholder.com/200x200.png/00ff66?text=veritatis', '2016-11-10', '2024-08-07 00:43:02', '2024-08-07 00:43:02', NULL),
(80, 'Jerel', 'Schmeler', '65486 Roob Wells\nSchneidertown, NE 01971', '(651) 634-6200', 'MATR-25508', 'hahn.marge@example.com', '$2y$12$0UF8JH6hLgODx3NnD1hTi.D2WfMcJA1408hU5v0bGts9PojwIaUB2', 'https://via.placeholder.com/200x200.png/00aaaa?text=aut', '2011-12-30', '2024-08-07 00:43:02', '2024-08-07 00:43:02', NULL),
(81, 'Birdie', 'Rogahn', '302 Leuschke Lake Apt. 821\nDaishamouth, KY 81562-3193', '+18162152545', 'MATR-18151', 'arden.kihn@example.com', '$2y$12$fmhwheJVCqgwn5.tnglptOiHSMalPSrdAhYeWxq3TyWssHfYJKHYC', 'https://via.placeholder.com/200x200.png/003333?text=atque', '2008-04-02', '2024-08-07 00:43:02', '2024-08-07 00:43:02', NULL),
(82, 'Juston', 'Frami', '984 Camila Mountain Apt. 038\nRomaguerashire, HI 19627', '1-470-674-6097', 'MATR-80046', 'geovanny01@example.org', '$2y$12$hju2rPEjmutdbW2VTVYbveifNsQ2O527KnyOjTI64l4bRPsjkOkSm', 'https://via.placeholder.com/200x200.png/008866?text=harum', '1996-05-10', '2024-08-07 00:43:03', '2024-08-07 00:43:03', NULL),
(83, 'Jennie', 'McKenzie', '719 Hyatt Lodge\nNorth Justiceport, CO 39963-0221', '1-508-738-2510', 'MATR-66434', 'sschuster@example.com', '$2y$12$tY2iEShtW.DeyG52MDIebujiU7vtMozO.Jecxx0iF2PyaPxWvL2vC', 'https://via.placeholder.com/200x200.png/0044ff?text=sed', '2010-01-27', '2024-08-07 00:43:03', '2024-08-07 00:43:03', NULL),
(84, 'Pattie', 'Dickinson', '7686 Tristin Square Apt. 741\nEast Jedport, NV 32252', '361-345-8884', 'MATR-95890', 'ohamill@example.com', '$2y$12$EAKxhNY6oW9r0/kFhBIUjOa2n83MJ7s6NZf.BIkK90p.K2/O5RxRy', 'https://via.placeholder.com/200x200.png/009933?text=accusamus', '1980-06-16', '2024-08-07 00:43:03', '2024-08-07 00:43:03', NULL),
(85, 'Ernesto', 'Wuckert', '13870 Ankunding Roads\nSouth Libbieside, IL 77213', '1-641-880-2629', 'MATR-42489', 'kyra91@example.net', '$2y$12$tCHWF0wisXiQeXmIJ5yLa.cUp6F11QCIkmwhEcTWEbnjBbBkFIcZy', 'https://via.placeholder.com/200x200.png/00cc55?text=necessitatibus', '2020-07-03', '2024-08-07 00:43:04', '2024-08-07 00:43:04', NULL),
(86, 'Eliane', 'Torphy', '704 Baumbach Springs\nPort Elijah, OK 57887', '+1.936.475.4676', 'MATR-97465', 'hilma.casper@example.org', '$2y$12$zBBGG8DKr9zEiqCH4nFXp.V4kHB/MJ7oPVQ/lt1MQ1F.WRfGoo1LO', 'https://via.placeholder.com/200x200.png/00aa55?text=ea', '2017-06-17', '2024-08-07 00:43:04', '2024-08-07 00:43:04', NULL),
(87, 'Rene', 'Schowalter', '393 Rippin Turnpike Apt. 771\nFadelland, ND 19735-0202', '732.976.2954', 'MATR-63005', 'hill.dortha@example.org', '$2y$12$yIjE6xL9pw4yrSooBVnu7e5qVLqO31GarvRCn2mCNnkowudpG9FR6', 'https://via.placeholder.com/200x200.png/003377?text=voluptatem', '2019-12-26', '2024-08-07 00:43:04', '2024-08-07 00:43:04', NULL),
(88, 'Alberto', 'Collins', '194 Kacey Creek\nWest Daphne, MD 93132', '+12725935218', 'MATR-85246', 'schinner.markus@example.com', '$2y$12$OW5lNq3WeX9HEb.21LBdVu7PAlbYPUk.nEWaNyM1D8S/eVWmZJtXq', 'https://via.placeholder.com/200x200.png/00ff66?text=eligendi', '2009-02-16', '2024-08-07 00:43:04', '2024-08-07 00:43:04', NULL),
(89, 'Anita', 'Armstrong', '2387 Darron Extensions Suite 229\nEast Jadyn, WI 46999-9935', '1-928-814-9624', 'MATR-58474', 'jaime33@example.com', '$2y$12$uPbEVB5xEh4ZKmM.BtvRhe2BSUEny1TMWW1KjtPmiAtBwneWpCAQi', 'https://via.placeholder.com/200x200.png/004422?text=et', '1972-04-01', '2024-08-07 00:43:05', '2024-08-07 00:43:05', NULL),
(90, 'Benedict', 'Yundt', '975 Alison Field\nLake Dustin, IN 67007', '938-770-7096', 'MATR-12330', 'jwalsh@example.net', '$2y$12$N3epDey3vak8M5s8GDoNGOkBX2l85sYRdthp1N07jVDd2xJoNHhf6', 'https://via.placeholder.com/200x200.png/0099ff?text=quis', '2024-06-13', '2024-08-07 00:43:05', '2024-08-07 00:43:05', NULL),
(91, 'Mark', 'Schuppe', '56777 Lexie Fords Apt. 084\nShanefort, WV 09931', '+1-212-375-9987', 'MATR-65928', 'madison42@example.com', '$2y$12$ypkLXeB3hCKSmVgcTUnTZuqnMxqafo4vObiaEEsGYP4E03hXGsp1a', 'https://via.placeholder.com/200x200.png/0044ee?text=quibusdam', '1971-11-07', '2024-08-07 00:43:05', '2024-08-07 00:43:05', NULL),
(92, 'Devin', 'Hills', '3067 Magnus Mill Apt. 638\nSchowaltershire, UT 06121-3690', '651-282-2161', 'MATR-89482', 'kirlin.sanford@example.net', '$2y$12$7.9rXjyIA5KPSBSn24p43e3RgAz0JxJaUgDGx2QknZh/xJ0MHWBC2', 'https://via.placeholder.com/200x200.png/004455?text=numquam', '1995-02-18', '2024-08-07 00:43:06', '2024-08-07 00:43:06', NULL),
(93, 'Amari', 'Bednar', '939 Alberto Highway\nLeohaven, RI 15630', '+1.425.845.3425', 'MATR-71869', 'swilliamson@example.com', '$2y$12$Lmz4vBtL6qM1WA11ERNKCeye0kuZKmasqPG.880N7jSM0ArYol8Uu', 'https://via.placeholder.com/200x200.png/00ff44?text=sed', '1984-03-28', '2024-08-07 00:43:06', '2024-08-07 00:43:06', NULL),
(94, 'Kirsten', 'Smith', '725 Don Views Apt. 511\nEast Gabrielland, AL 41545', '646.564.4094', 'MATR-41971', 'edison06@example.org', '$2y$12$J4mN66p7SMw4ut0TbWn9ouRugkKjjJiRzr8Dw9y2GsS7zdYuqe44O', 'https://via.placeholder.com/200x200.png/008800?text=quia', '1974-05-02', '2024-08-07 00:43:06', '2024-08-07 00:43:06', NULL),
(95, 'Rick', 'Mohr', '2842 Domenick Meadow\nEast Edwardo, TX 42532-4344', '1-913-717-5630', 'MATR-62514', 'wdeckow@example.net', '$2y$12$ExP5ehLMH6t9jgLSiOtBqOKBWtazmULvcdex2dXYHav.NFjBsjO3G', 'https://via.placeholder.com/200x200.png/004433?text=similique', '1972-07-23', '2024-08-07 00:43:07', '2024-08-07 00:43:07', NULL),
(96, 'Torey', 'Moen', '816 Altenwerth Extension\nLydaton, TN 62868', '1-575-750-4012', 'MATR-76137', 'egreen@example.net', '$2y$12$JhxFDiFQVItjshJ5ob5jbOhtD22y5R9UuD6stuCrGHNF5z3zjME.C', 'https://via.placeholder.com/200x200.png/007722?text=corrupti', '2011-07-03', '2024-08-07 00:43:07', '2024-08-07 00:43:07', NULL),
(97, 'Kiera', 'Connelly', '75582 Anderson Alley\nWest Nicola, VA 48096-3368', '+1-308-222-0205', 'MATR-32978', 'khuel@example.net', '$2y$12$LJ0aeBE61GdjigITKJZQZOQ5HxXmAC5BeoaruZ4sNidpXVmjH507.', 'https://via.placeholder.com/200x200.png/0022ee?text=nemo', '2004-03-21', '2024-08-07 00:43:07', '2024-08-07 00:43:07', NULL),
(98, 'Lysanne', 'Schmidt', '6799 Saul Summit Apt. 129\nHyattshire, AL 71418-8152', '+1 (831) 688-0877', 'MATR-47812', 'obie.schaefer@example.org', '$2y$12$ABob.Cjmmu71M0WVld.ZDud8VBPUWxmIjTCQSbbc5jIzV6LY0Ulci', 'https://via.placeholder.com/200x200.png/002244?text=neque', '2005-12-09', '2024-08-07 00:43:08', '2024-08-07 00:43:08', NULL),
(99, 'Yolanda', 'Dach', '1913 Torp Squares Suite 165\nHalvorsonburgh, UT 97939', '(860) 370-8316', 'MATR-00215', 'senger.jermain@example.org', '$2y$12$zvnrBl1XgWMkSNmBDEVG/e2f2uZFatmUkcWunMuD.TAwJ/kj6BOYW', 'https://via.placeholder.com/200x200.png/0099cc?text=voluptatem', '1976-01-10', '2024-08-07 00:43:08', '2024-08-07 00:43:08', NULL),
(100, 'Lindsey', 'Olson', '428 Schamberger Inlet Suite 071\nNew Arjunhaven, FL 47872', '541.534.9654', 'MATR-50975', 'marcia06@example.org', '$2y$12$1pDJ6zIdt9ZlIKJQLvxEHOdyHEST3FhXGrZe95dVuDzstSE1wce.O', 'https://via.placeholder.com/200x200.png/0099dd?text=ab', '2017-05-09', '2024-08-07 00:43:08', '2024-08-07 00:43:08', NULL),
(101, 'Fabiola', 'Nolan', '6020 Rogahn Corners\nArmstrongton, TN 87916', '925.348.7523', 'MATR-61943', 'bessie63@example.org', '$2y$12$PalE0dvIHu8EFiGn5TZpzuGYH0z5rRLLabOSISDzIyjKmsJ.iza8i', 'https://via.placeholder.com/200x200.png/008844?text=aut', '2014-03-30', '2024-08-07 00:43:09', '2024-08-07 00:43:09', NULL),
(102, 'Shirley', 'Boehm', '1172 Verdie Ramp Suite 196\nPort Sanford, SC 14253-4094', '(727) 724-9775', 'MATR-26194', 'rita.white@example.org', '$2y$12$H2Mw36wHMr3kuMkLN2vHBu7Z4jtB5D3AWJlnPlxi2UaI/WJnjAkve', 'https://via.placeholder.com/200x200.png/0055ee?text=excepturi', '1978-12-02', '2024-08-07 00:43:09', '2024-08-07 00:43:09', NULL),
(103, 'Mossie', 'Gerlach', '139 Fisher Green Apt. 602\nFletaborough, CA 66773', '(248) 874-0425', 'MATR-64985', 'dariana22@example.net', '$2y$12$atwmgaInYRm0QYE5C5x7FOU5p8/J2ZgVzz7pBjoVhL205IWvIrQsC', 'https://via.placeholder.com/200x200.png/001144?text=quia', '1988-05-26', '2024-08-07 00:43:09', '2024-08-07 00:43:09', NULL),
(104, 'Wyman', 'Kutch', '8426 Darien Forest Suite 207\nPrincefort, CT 79757', '+1.720.956.2388', 'MATR-84658', 'ike.grady@example.com', '$2y$12$IL9iSkpCRQUSnlzPTtFrM.D0p3JTxSsazalgrxRfBUoyA/M6m0In.', 'https://via.placeholder.com/200x200.png/008866?text=tenetur', '2015-10-19', '2024-08-07 00:43:10', '2024-08-07 00:43:10', NULL),
(105, 'Frida', 'Daniel', '49906 Derrick Summit Suite 099\nSouth Kale, VT 36491', '940-981-7496', 'MATR-22552', 'demarco72@example.net', '$2y$12$81ZI9fKbhKFpdNIZyh/sweXyT42zm2ru8oVnf0a.KXzdaVInkgpHO', 'https://via.placeholder.com/200x200.png/000088?text=et', '2010-11-29', '2024-08-07 00:43:10', '2024-08-07 00:43:10', NULL),
(106, 'Nina', 'Lebsack', '735 Wintheiser Mountain\nNew Alysaberg, DC 37362', '989.473.8176', 'MATR-73861', 'evans57@example.net', '$2y$12$1Mc2pD4oaSsjns.sugINmeLP50S5zrMGF31aqG8DgZe/adLhHEaAa', 'https://via.placeholder.com/200x200.png/00dddd?text=et', '2018-03-15', '2024-08-07 00:43:10', '2024-08-07 00:43:10', NULL),
(107, 'Angelita', 'Corkery', '697 Jacobson Neck\nWest Nakiashire, MS 54493-7097', '629-549-8969', 'MATR-92969', 'mayert.felicity@example.org', '$2y$12$r4QgGcxWD0LSgN1R0mg/TuHNY7/lV/pZ4QXB5ZjczWdMI91EcTKxS', 'https://via.placeholder.com/200x200.png/00aa55?text=ex', '1992-09-09', '2024-08-07 00:43:11', '2024-08-07 00:43:11', NULL),
(108, 'Daisha', 'Pouros', '10552 Herzog Plains Suite 656\nNew Mallieshire, MO 73232-9309', '629-467-6928', 'MATR-30532', 'america85@example.com', '$2y$12$dgG1mbcRkcWd23VDWWpFiOoYHEK9RNUN9a1HMz5Tjv7uu0WzFg0uK', 'https://via.placeholder.com/200x200.png/00ff99?text=dolores', '1973-12-12', '2024-08-07 00:43:11', '2024-08-07 00:43:11', NULL),
(109, 'Peggie', 'Gaylord', '69325 Constance Lakes\nLake Jackelinemouth, IN 96879', '+1 (469) 976-8218', 'MATR-85286', 'ron.hoppe@example.com', '$2y$12$WBIWt1LxjNrUtyssNSoQLuQg8CIU3T2QJ2IVA1QAvs.d16CJjwxBm', 'https://via.placeholder.com/200x200.png/009933?text=voluptas', '2019-01-02', '2024-08-07 00:43:11', '2024-08-07 00:43:11', NULL),
(110, 'Mollie', 'Armstrong', '3813 Lynch Circle Suite 703\nRandiport, DE 72503-8822', '+1-785-852-1690', 'MATR-79455', 'kamron.bartoletti@example.org', '$2y$12$s4jlB/MRVQHHSwdMG1ZfzueyF.M8tSnYhRaFZ8Wm2s2vlKyi9cbye', 'https://via.placeholder.com/200x200.png/005511?text=cum', '1998-03-13', '2024-08-07 00:43:12', '2024-08-07 00:43:12', NULL),
(111, 'Dessie', 'Kunde', '22557 Danielle Gardens\nSchowalterport, IL 55331-4345', '1-918-321-9703', 'MATR-45004', 'danial.gaylord@example.org', '$2y$12$MueJSQz2xghi6Je0oLXhquSfyjVeMqDqOMr29HHQcTrwvkZulsLpi', 'https://via.placeholder.com/200x200.png/00dd77?text=pariatur', '1985-07-18', '2024-08-07 00:43:12', '2024-08-07 00:43:12', NULL),
(112, 'Willard', 'Schuster', '420 Weber Rapids\nNorth Moseside, NH 77951-5621', '1-413-552-6891', 'MATR-27564', 'loren42@example.net', '$2y$12$KXW.0BPDD2zbJwFh/Ouf1uCpZlpcgh0RdbE9k3gHIQ1vk3L3ZmD1q', 'https://via.placeholder.com/200x200.png/00ccff?text=quo', '1997-10-24', '2024-08-07 00:43:12', '2024-08-07 00:43:12', NULL),
(113, 'Jessy', 'Koss', '532 Lexus Port\nIkefort, MI 55046-9689', '985-474-8457', 'MATR-94018', 'qschmeler@example.net', '$2y$12$yrx16yqbcVCIDQfpT72zx.YxVE3/ApK8ZDBDoTSkcwv.c6YuOvPRO', 'https://via.placeholder.com/200x200.png/003377?text=cumque', '2010-09-20', '2024-08-07 00:43:12', '2024-08-07 00:43:12', NULL),
(114, 'Zackary', 'Jerde', '9960 Brant Locks\nWest Odell, NV 70522-6663', '959.296.7472', 'MATR-77556', 'emmerich.keegan@example.com', '$2y$12$DZtRhRPF6Ms2YSncxwwPV.7W2zLWsT3yszh1KSC3c/ECejnSKit.y', 'https://via.placeholder.com/200x200.png/0066dd?text=esse', '2022-08-23', '2024-08-07 00:43:13', '2024-08-07 00:43:13', NULL),
(115, 'Hertha', 'Kshlerin', '922 Kshlerin Avenue Suite 171\nAndreaneshire, AL 04039-7172', '+1.217.448.9195', 'MATR-13824', 'odie.kulas@example.com', '$2y$12$AyVl4pnXXc4xsZ9jHtkDseIXP.Q177B3ksTqBAIEq80IDpzYCKjdm', 'https://via.placeholder.com/200x200.png/0099aa?text=natus', '1970-11-26', '2024-08-07 00:43:13', '2024-08-07 00:43:13', NULL),
(116, 'Abigale', 'O\'Connell', '3792 Howe View Suite 313\nElnoraton, ND 01042', '+1-820-895-6827', 'MATR-89675', 'dolores.carroll@example.net', '$2y$12$MRI6RXPCMl9E4wyBRL8axeMuIsYfu4AObcY3.mbAf1SoRzwmq2HRa', 'https://via.placeholder.com/200x200.png/006633?text=minus', '1999-05-08', '2024-08-07 00:43:13', '2024-08-07 00:43:13', NULL),
(117, 'Gussie', 'Grady', '978 Harvey Springs Suite 926\nCathyland, HI 46676', '845.802.1523', 'MATR-78648', 'katlyn.halvorson@example.net', '$2y$12$WhUVz/I6dmLwLVVdF/dGPe7uJwieuHy2T/ANCwPl0XJYP0H9tVySa', 'https://via.placeholder.com/200x200.png/0011aa?text=quod', '1990-07-17', '2024-08-07 00:43:14', '2024-08-07 00:43:14', NULL),
(118, 'Erich', 'Purdy', '16387 Keon Valley\nLake Celine, IN 97332-9642', '986-402-3356', 'MATR-08458', 'linda.stracke@example.net', '$2y$12$NaXxohe0jTbu7rICw1RnH.9VDsR6eWpm1drQU1maikwNgm0/0aiJ.', 'https://via.placeholder.com/200x200.png/006600?text=eos', '2006-04-03', '2024-08-07 00:43:14', '2024-08-07 00:43:14', NULL),
(119, 'Reva', 'Erdman', '602 Iva Ramp Apt. 072\nLake Eulahaven, UT 69818-0831', '(913) 783-6224', 'MATR-34339', 'addison51@example.net', '$2y$12$tK6ialQo5R.9ILmgy7NNTO0DOlkQWHhiJ2UD4A8FiLk6FyxK1if0.', 'https://via.placeholder.com/200x200.png/00ee55?text=ipsam', '1974-10-15', '2024-08-07 00:43:14', '2024-08-07 00:43:14', NULL),
(120, 'Garry', 'Terry', '5339 Nolan Vista\nLennybury, CO 33434', '(346) 264-9895', 'MATR-09277', 'chanelle.conn@example.org', '$2y$12$gC5rQ3Bz3SWiM2Ulms24YeKkWwBxpbYCn0Ib9dcESqIeLk6Lgacxm', 'https://via.placeholder.com/200x200.png/0077bb?text=sed', '1980-10-30', '2024-08-07 00:43:15', '2024-08-07 00:43:15', NULL),
(121, 'Pat', 'Nitzsche', '3391 Satterfield Forges Suite 905\nNew Joesph, MT 53234-3675', '+1-562-368-9940', 'MATR-89009', 'ihand@example.org', '$2y$12$/2RrKbR3TrJLokSFf5o2zeCcLR.e58Pk1DShaUS3EgoMC1HZtDZGW', 'https://via.placeholder.com/200x200.png/004466?text=sed', '1976-04-02', '2024-08-07 00:43:15', '2024-08-07 00:43:15', NULL),
(122, 'Pansy', 'Kuhn', '5780 Johns Prairie\nNew Camron, KY 97352-9948', '1-260-747-2321', 'MATR-06550', 'clark.goldner@example.org', '$2y$12$MTul2J/U4M1tTzSZINvwZeU.MIbQGi5ZtFPu2lOn20n68XGst1D7i', 'https://via.placeholder.com/200x200.png/004499?text=quasi', '2019-12-25', '2024-08-07 00:43:15', '2024-08-07 00:43:15', NULL),
(123, 'Dorcas', 'Rohan', '1929 Ila Spur Suite 987\nAdelaborough, GA 36063', '607-503-7375', 'MATR-40052', 'gprohaska@example.org', '$2y$12$ksmWuKEnmk8XhMI7EFT.4OFtx9uEoidDRnMURrFRD2R9t8ysOmf2y', 'https://via.placeholder.com/200x200.png/0000cc?text=repellendus', '2014-05-08', '2024-08-07 00:43:16', '2024-08-07 00:43:16', NULL),
(124, 'Dovie', 'Jacobi', '513 Shemar Mountain\nLake Myrtiechester, CT 29309-1081', '+1-252-726-8081', 'MATR-86445', 'mavis.olson@example.org', '$2y$12$FxlYKptLY9noXlRXNB/PuOhFZSQpvF3qTTArb46LOQVLecG6Wvft.', 'https://via.placeholder.com/200x200.png/007711?text=voluptatem', '1970-01-21', '2024-08-07 00:43:16', '2024-08-07 00:43:16', NULL),
(125, 'Leslie', 'Ebert', '5804 Alexane Squares Suite 900\nHermannborough, HI 06250', '+1.925.289.4226', 'MATR-89197', 'mkutch@example.org', '$2y$12$zsaSp0Z7I7oSewnnMETbkeKjylUDxFb3xs7YVyBpYsY4uAx2maOJC', 'https://via.placeholder.com/200x200.png/005555?text=aperiam', '1974-12-20', '2024-08-07 00:43:16', '2024-08-07 00:43:16', NULL),
(126, 'Britney', 'Kautzer', '921 Jones Shores Suite 723\nNew Kaseybury, AK 24164', '339-306-4078', 'MATR-03830', 'wvolkman@example.com', '$2y$12$FgfVdiIsL.C9fcV.1nIYXu0MJUyeyNudwWstH7nNtdW7Al.gDdK/y', 'https://via.placeholder.com/200x200.png/00ff33?text=iste', '2003-12-14', '2024-08-07 00:43:17', '2024-08-07 00:43:17', NULL),
(127, 'Burnice', 'Spencer', '6518 Zakary Knolls\nPort Ethan, KS 00234', '+1-386-818-9743', 'MATR-86015', 'robin.crooks@example.com', '$2y$12$4097reP8Dhw6Cd53BZn2Q.3ItzqY1JD/ae16DMtJSXgamEc4QmY9C', 'https://via.placeholder.com/200x200.png/0055cc?text=quia', '1981-09-14', '2024-08-07 00:43:17', '2024-08-07 00:43:17', NULL),
(128, 'Sandrine', 'Reichel', '243 Curt Harbors Apt. 743\nEast Jermainstad, MT 81764-1865', '(773) 655-6144', 'MATR-35425', 'margarita.spencer@example.org', '$2y$12$N.KPLDqpq106pk./bK9Z2uezKcmB4Mplqbl47kpDx8r6DH2DC2AyC', 'https://via.placeholder.com/200x200.png/005500?text=a', '1971-06-05', '2024-08-07 00:43:17', '2024-08-07 00:43:17', NULL),
(129, 'Herbert', 'Ortiz', '19367 Parisian Burg\nBeattyport, ND 64468', '(986) 803-4358', 'MATR-14666', 'grimes.dovie@example.net', '$2y$12$ZIDaSAPpVg2qOJhaV6xvVe1mrWkEHcsqbQyNDjwyBbSE9q5BNwXvq', 'https://via.placeholder.com/200x200.png/0011dd?text=ut', '1984-12-13', '2024-08-07 00:43:18', '2024-08-07 00:43:18', NULL),
(130, 'Fannie', 'Graham', '75809 Goldner Courts\nDietrichmouth, SC 59768-5130', '(606) 984-7440', 'MATR-59049', 'price.catherine@example.com', '$2y$12$iZzcIX9kWFvTJ9S56F8n7er081n8FRUyRkxTnuugOVa/oz5iM6zxu', 'https://via.placeholder.com/200x200.png/00ff55?text=sed', '2009-05-22', '2024-08-07 00:43:18', '2024-08-07 00:43:18', NULL),
(131, 'Raphaelle', 'Abbott', '798 Maggio Green\nLittelport, WI 11348-5675', '470.775.9358', 'MATR-61086', 'will.roosevelt@example.com', '$2y$12$gEIBS5VUmR3DeOqwe66j/ORHlTwAc.ITrHQMWYQp1MTego2SZwGyq', 'https://via.placeholder.com/200x200.png/0022aa?text=praesentium', '1986-04-23', '2024-08-07 00:43:18', '2024-08-07 00:43:18', NULL),
(132, 'Sierra', 'Langosh', '47616 Oberbrunner Plains\nSouth Enricomouth, IA 35163-3280', '+1-504-481-5688', 'MATR-48319', 'wcummerata@example.net', '$2y$12$j0e0NOJee9JEWuYt/WGNouDotyjdeDeVz1a7q/E67/WN1K8Og62S6', 'https://via.placeholder.com/200x200.png/00ee00?text=iste', '1996-06-16', '2024-08-07 00:43:19', '2024-08-07 00:43:19', NULL),
(133, 'Deborah', 'Rau', '9185 Daniella Hill Apt. 377\nPort Miracle, NC 23188-0258', '+1.239.936.8863', 'MATR-44475', 'wbruen@example.com', '$2y$12$U/vlZ7hExHy8aG4PJdbtMuFAAEmQdushRV3nBOszBUq30vgmVMI1e', 'https://via.placeholder.com/200x200.png/004455?text=consequatur', '1971-02-28', '2024-08-07 00:43:19', '2024-08-07 00:43:19', NULL),
(134, 'Ruth', 'Grant', '27325 Okuneva Trail\nEast Benedictmouth, KY 99594', '361-348-8075', 'MATR-26758', 'otha.yundt@example.com', '$2y$12$Dk1n8jvNDwIj0vT2pGp39e99dPpU4V1DqAPBdl.24u.5gsd6x.ESK', 'https://via.placeholder.com/200x200.png/009933?text=possimus', '1988-07-11', '2024-08-07 00:43:19', '2024-08-07 00:43:19', NULL),
(135, 'Tatyana', 'Smith', '242 Baumbach Meadow Suite 011\nWest Chelseaside, DE 40468', '+1-234-774-7492', 'MATR-59546', 'alva71@example.org', '$2y$12$8IoaUUXeUzhkda6WfCDuMOsIwv6D00QXINg4UpsspqB7Svx5JNiIq', 'https://via.placeholder.com/200x200.png/009911?text=est', '1986-02-09', '2024-08-07 00:43:20', '2024-08-07 00:43:20', NULL),
(136, 'Darron', 'Murphy', '478 Legros Valley Suite 116\nNew Nya, MT 99194', '(224) 987-1096', 'MATR-18744', 'effertz.brady@example.org', '$2y$12$MPw/umohJXH/6J15Yo23heeus8GmSJ/4KCh.nGavDNfsLd8loW1BW', 'https://via.placeholder.com/200x200.png/00aaaa?text=soluta', '1973-04-09', '2024-08-07 00:43:20', '2024-08-07 00:43:20', NULL),
(137, 'Clement', 'Leffler', '368 Garry Field Suite 421\nEast Noemibury, PA 96924', '903.737.7661', 'MATR-57322', 'deven89@example.org', '$2y$12$LUAvq.U4WrzHMthVKDUAhuuYYCLqyWjDs62307tu6mo2sZC98nAhS', 'https://via.placeholder.com/200x200.png/006655?text=ad', '2013-02-04', '2024-08-07 00:43:20', '2024-08-07 00:43:20', NULL),
(138, 'Bella', 'Kub', '531 Moses Estate\nPort Justynberg, OH 10575', '+1.539.573.5594', 'MATR-35910', 'jackson.konopelski@example.net', '$2y$12$xdHg1XE3ed5rLkRPAqgjaOKwmJkkB1Zr6ncIK59lyjrCrevhVnKbO', 'https://via.placeholder.com/200x200.png/00dd22?text=iusto', '2015-08-11', '2024-08-07 00:43:21', '2024-08-07 00:43:21', NULL),
(139, 'Jayme', 'Lakin', '671 Huel Forges Apt. 694\nNorth Antonefurt, IA 61031', '518-556-8456', 'MATR-06233', 'tconn@example.org', '$2y$12$QzNr7iMXJTS6S7M2eiRO1O86mdYCitsrhKwafjMO6vwQ19d2xUoGu', 'https://via.placeholder.com/200x200.png/0077cc?text=sed', '1994-03-11', '2024-08-07 00:43:21', '2024-08-07 00:43:21', NULL),
(140, 'Boris', 'Hill', '68820 Dare Harbor\nNew Destiney, MN 08262', '+1-279-865-0590', 'MATR-59215', 'abigale93@example.org', '$2y$12$JZz2VOyabs5cygeTcP/HMu3BQvd7HXP.K19Zfqiuo4i4x3sBHQ6BG', 'https://via.placeholder.com/200x200.png/00bb99?text=adipisci', '1995-07-10', '2024-08-07 00:43:21', '2024-08-07 00:43:21', NULL),
(141, 'Eldridge', 'Bradtke', '257 Vivianne Summit\nChamplinchester, MD 82412', '563.948.7383', 'MATR-13425', 'tod.connelly@example.com', '$2y$12$mXIqDQnmdKS0GkxWVKoybuANjQ7DlmebQQhwp8LvLSEIXIf7oCetC', 'https://via.placeholder.com/200x200.png/008833?text=adipisci', '2013-07-30', '2024-08-07 00:43:22', '2024-08-07 00:43:22', NULL),
(142, 'Frederic', 'Marvin', '76652 Block Shores Apt. 960\nNew Misaelhaven, NM 25420-9375', '+1-804-935-9717', 'MATR-08193', 'rocio36@example.net', '$2y$12$OGfJp7woo8yytE.zvC37T.nZYaIh35sqdbPeYK4Aa8.XuAX5Vo08S', 'https://via.placeholder.com/200x200.png/00aa00?text=ea', '1983-11-22', '2024-08-07 00:43:22', '2024-08-07 00:43:22', NULL),
(143, 'Landen', 'Marquardt', '9330 Jewell Loaf Apt. 008\nTerrillside, WI 48234', '+1-276-384-0898', 'MATR-64518', 'omari38@example.net', '$2y$12$DeuKF14VidpNETR3JXBIN.DJ6561E6BvGu1rgXUKhO8bJsEsYctbO', 'https://via.placeholder.com/200x200.png/009977?text=dolor', '1990-12-08', '2024-08-07 00:43:22', '2024-08-07 00:43:22', NULL),
(144, 'Arden', 'Stehr', '5638 Cummerata Springs Apt. 764\nWest Gavin, TX 02697-1520', '+1-906-344-6866', 'MATR-53301', 'geovanny33@example.net', '$2y$12$tpTD6GHJrqdu1EppkcESsej4eGN0b6saHWSBkyrs9ODoRQj/4wUXO', 'https://via.placeholder.com/200x200.png/0011cc?text=aut', '1994-10-10', '2024-08-07 00:43:23', '2024-08-07 00:43:23', NULL),
(145, 'Hollis', 'Conroy', '32651 Ashtyn Mountain Suite 932\nWest Niahaven, MN 00242', '1-813-503-2802', 'MATR-64018', 'nelda68@example.org', '$2y$12$.bob/gp23H3VomSEiiJGO.vqZIX9yKT5VwibnsAyvOIjNS/37kkze', 'https://via.placeholder.com/200x200.png/003388?text=nemo', '1990-07-04', '2024-08-07 00:43:23', '2024-08-07 00:43:23', NULL),
(146, 'Drake', 'Lowe', '3156 Herman Springs Suite 565\nEast Marcellus, IA 11322', '573-716-1054', 'MATR-18249', 'nsteuber@example.net', '$2y$12$GuQuYnk5Pzk7YBlGqCxqA.dGv.SWdeyvxN.IgCuxvuc6OCUP15ML6', 'https://via.placeholder.com/200x200.png/00aa66?text=voluptatibus', '2015-07-20', '2024-08-07 00:43:23', '2024-08-07 00:43:23', NULL),
(147, 'Itzel', 'Homenick', '12640 Osinski Brook\nSouth Dasia, CT 32389-4788', '1-720-595-6797', 'MATR-65951', 'tquitzon@example.net', '$2y$12$L5KH4XFOAsqFbwPOKWJAEO0f3.usxXZIIGU55hl2R86eljdXHx1rS', 'https://via.placeholder.com/200x200.png/002255?text=dolor', '1991-07-09', '2024-08-07 00:43:24', '2024-08-07 00:43:24', NULL),
(148, 'Kimberly', 'Ziemann', '6628 Eloise Drives\nEleonorechester, CA 81480-7774', '+1-858-427-1212', 'MATR-29795', 'hailie.dach@example.net', '$2y$12$XMLLHwDyDZ9rtE.POvVaSeKlBnrQmycxGKlUSv6W6SVocMqPEczba', 'https://via.placeholder.com/200x200.png/009911?text=accusamus', '1999-08-20', '2024-08-07 00:43:24', '2024-08-07 00:43:24', NULL),
(149, 'Lavern', 'Lowe', '27103 Lueilwitz Fall Suite 824\nAgustinaborough, MD 84351-6157', '+14344763393', 'MATR-40373', 'baby43@example.net', '$2y$12$mwtyQ8./sWgUDEJQMuq3aOrkkogKv3wXor890kA.N9gnL342B3Ckm', 'https://via.placeholder.com/200x200.png/0011ff?text=et', '1985-05-26', '2024-08-07 00:43:24', '2024-08-07 00:43:24', NULL),
(150, 'Tabitha', 'Morar', '258 Abbigail Spring Apt. 901\nHowellberg, MA 94679-8103', '+17164352933', 'MATR-07041', 'toney.lakin@example.org', '$2y$12$dajEkVM39tcAEiox6.4wQ..U8IEWbxLh9QbhSTg59oFJktnJlCqQe', 'https://via.placeholder.com/200x200.png/0022aa?text=consequuntur', '1976-10-06', '2024-08-07 00:43:25', '2024-08-07 00:43:25', NULL),
(151, 'John', 'Doe', '123 Main St', '555-1234', 'ABC123', 'john.doe@example.com', '$2y$12$AaK5OMuqkkfBgqXmrx6mZegqID1Ax8HRl1KVIqDLHp8o2lvcE.vUy', 'url/to/photo.jpg', '2000-01-01', '2024-08-07 12:22:11', '2024-08-07 12:22:11', NULL),
(152, 'MODOU MODOU', 'DABO', '123 Main St', '555-1234', 'ABC456', 'modou@example.com', '$2y$12$L7UAxx/L/zs7cDnR83D6gO.gOXcX2Zoq.LrLda.AimqTx.TiRCsn.', 'url/to/photo1.jpg', '2000-01-01', '2024-08-07 12:23:56', '2024-08-07 12:23:56', NULL);
INSERT INTO `etudiants` (`id`, `prenom`, `nom`, `adresse`, `telephone`, `matricule`, `email`, `mot_de_passe`, `photo`, `date_naissance`, `created_at`, `updated_at`, `deleted_at`) VALUES
(153, 'Pathe', 'BA', 'lou', '7777722222222222', '0000992', 'bassinen13@gmail.com', '$2y$12$ime7zLY6PsV2/t1yMhmIee4wrEnlWE/vBQlJQaP0tRj0yyf9AoXFG', 'https://via.placeholder.com/200x200.png/007733?text=ut\",', '1996-02-22', '2024-08-08 00:44:31', '2024-08-08 00:44:31', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `evaluations`
--

CREATE TABLE `evaluations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `etudiant_id` bigint(20) UNSIGNED NOT NULL,
  `matiere_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `valeur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `evaluations`
--

INSERT INTO `evaluations` (`id`, `etudiant_id`, `matiere_id`, `date`, `valeur`, `created_at`, `updated_at`) VALUES
(1, 53, 21, '2017-11-20', 12, '2024-08-07 00:43:25', '2024-08-07 02:03:13'),
(2, 53, 22, '2017-11-20', 2, '2024-08-07 00:43:25', '2024-08-07 02:52:18'),
(3, 43, 23, '2017-11-20', 17, '2024-08-07 00:43:25', '2024-08-07 01:59:55'),
(4, 54, 24, '2001-01-19', 8, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(5, 55, 25, '2015-04-23', 1, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(8, 58, 28, '2003-03-04', 10, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(9, 59, 29, '1999-06-22', 13, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(10, 2, 4, '1996-02-22', 2, '2024-08-07 00:43:25', '2024-08-08 00:48:15'),
(11, 61, 31, '2006-10-22', 2, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(12, 62, 32, '1976-11-19', 11, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(13, 63, 33, '1993-09-30', 19, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(14, 64, 34, '2017-08-31', 3, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(15, 65, 35, '1997-03-27', 8, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(16, 66, 36, '1977-06-05', 3, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(17, 67, 37, '2013-05-09', 10, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(18, 68, 38, '2003-02-15', 4, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(19, 69, 39, '2007-01-16', 15, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(20, 70, 40, '1992-09-14', 0, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(21, 71, 41, '1986-05-14', 11, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(22, 72, 42, '1973-01-20', 20, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(23, 73, 43, '1979-06-30', 18, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(24, 74, 44, '1980-06-08', 20, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(25, 75, 45, '1980-04-25', 17, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(26, 76, 46, '1990-08-28', 15, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(27, 77, 47, '1982-01-29', 2, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(28, 78, 48, '2015-07-31', 1, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(29, 79, 49, '1976-06-28', 6, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(30, 80, 50, '2003-04-24', 12, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(31, 81, 51, '1970-08-13', 16, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(32, 82, 52, '1987-04-30', 13, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(33, 83, 53, '1970-04-05', 10, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(34, 84, 54, '2019-12-09', 10, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(35, 85, 55, '2002-06-05', 1, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(36, 86, 56, '1996-07-12', 6, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(37, 87, 57, '2015-06-29', 11, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(38, 88, 58, '1972-01-18', 10, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(39, 89, 59, '1993-12-27', 1, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(40, 90, 60, '2008-01-23', 1, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(41, 91, 61, '2003-05-02', 3, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(42, 92, 62, '2022-05-02', 13, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(43, 93, 63, '2008-09-06', 0, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(44, 94, 64, '2004-10-02', 19, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(45, 95, 65, '1972-07-02', 0, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(46, 96, 66, '2024-01-02', 19, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(47, 97, 67, '2006-05-31', 20, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(48, 98, 68, '1991-03-07', 14, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(49, 99, 69, '1981-08-14', 14, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(50, 100, 70, '2023-12-13', 19, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(51, 101, 71, '2003-02-23', 0, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(52, 102, 72, '1989-03-23', 8, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(53, 103, 73, '2001-11-20', 0, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(54, 104, 74, '1987-02-28', 17, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(55, 105, 75, '1977-06-19', 19, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(56, 106, 76, '2018-06-25', 19, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(57, 107, 77, '1990-04-18', 1, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(58, 108, 78, '2023-08-09', 5, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(59, 109, 79, '1983-12-13', 8, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(60, 110, 80, '2010-04-14', 17, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(61, 111, 81, '2019-08-29', 10, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(62, 112, 82, '1992-01-23', 7, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(63, 113, 83, '1989-09-19', 8, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(64, 114, 84, '2004-02-28', 14, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(65, 115, 85, '2002-02-14', 12, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(66, 116, 86, '2001-12-01', 12, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(67, 117, 87, '2002-02-19', 9, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(68, 118, 88, '2006-03-26', 1, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(69, 119, 89, '2004-07-03', 0, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(70, 120, 90, '1971-06-09', 3, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(71, 121, 91, '1992-09-25', 9, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(72, 122, 92, '1995-01-26', 10, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(73, 123, 93, '2003-03-07', 20, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(74, 124, 94, '2007-09-30', 19, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(75, 125, 95, '2004-03-08', 10, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(76, 126, 96, '1978-10-14', 6, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(77, 127, 97, '1977-01-31', 16, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(78, 128, 98, '1999-06-16', 0, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(79, 129, 99, '2018-03-11', 7, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(80, 130, 100, '1972-02-21', 5, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(81, 131, 101, '2012-12-19', 13, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(82, 132, 102, '1974-05-11', 19, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(83, 133, 103, '1998-08-29', 8, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(84, 134, 104, '1985-06-26', 3, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(85, 135, 105, '2009-03-12', 0, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(86, 136, 106, '2003-01-13', 7, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(87, 137, 107, '1982-02-20', 1, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(88, 138, 108, '2013-02-03', 5, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(89, 139, 109, '2014-08-13', 19, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(90, 140, 110, '2006-02-23', 3, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(91, 141, 111, '1980-06-28', 0, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(92, 142, 112, '1985-12-22', 3, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(93, 143, 113, '1979-07-13', 15, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(94, 144, 114, '2001-12-22', 1, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(95, 145, 115, '1975-12-07', 5, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(96, 146, 116, '2024-04-09', 8, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(97, 147, 117, '1992-07-26', 20, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(98, 148, 118, '2005-07-11', 10, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(99, 149, 119, '2001-11-13', 14, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(100, 150, 120, '2020-04-15', 16, '2024-08-07 00:43:25', '2024-08-07 00:43:25'),
(101, 1, 2, '2024-08-07', 15, '2024-08-07 13:01:11', '2024-08-07 13:01:11');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `matieres`
--

CREATE TABLE `matieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `matieres`
--

INSERT INTO `matieres` (`id`, `libelle`, `date_debut`, `date_fin`, `created_at`, `updated_at`) VALUES
(1, 'expedita', '1989-02-25', '2016-07-13', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(2, 'fugiat', '2009-06-18', '2002-06-10', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(3, 'eius', '2006-08-24', '2006-05-27', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(4, 'hic', '1992-10-10', '1971-05-04', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(5, 'sit', '2019-04-06', '2023-06-12', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(6, 'excepturi', '2004-06-29', '2024-03-03', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(7, 'laudantium', '1990-11-22', '1973-05-17', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(8, 'dolores', '2016-08-23', '1980-04-11', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(9, 'omnis', '1983-01-11', '1991-02-24', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(10, 'natus', '1996-12-04', '1980-02-05', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(11, 'est', '2009-04-04', '2023-10-05', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(12, 'tenetur', '2018-11-15', '2023-09-17', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(13, 'voluptatem', '1988-10-14', '2004-06-24', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(14, 'eum', '2000-10-12', '1975-03-03', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(15, 'et', '1972-09-02', '1993-04-13', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(16, 'assumenda', '2020-03-16', '2010-04-19', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(17, 'sunt', '2003-11-30', '2016-07-15', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(18, 'cupiditate', '2008-04-02', '2021-11-05', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(19, 'tempore', '1981-08-28', '1995-04-26', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(20, 'ratione', '2020-06-23', '1996-01-24', '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(21, 'temporibus', '2023-06-09', '2004-05-01', '2024-08-07 00:42:53', '2024-08-07 00:42:53'),
(22, 'magni', '1990-03-09', '1987-10-23', '2024-08-07 00:42:53', '2024-08-07 00:42:53'),
(23, 'et', '2003-09-13', '2002-04-12', '2024-08-07 00:42:53', '2024-08-07 00:42:53'),
(24, 'voluptatem', '1977-12-23', '2016-03-18', '2024-08-07 00:42:54', '2024-08-07 00:42:54'),
(25, 'et', '2006-01-25', '2008-10-14', '2024-08-07 00:42:54', '2024-08-07 00:42:54'),
(26, 'quos', '1979-03-23', '1975-03-12', '2024-08-07 00:42:54', '2024-08-07 00:42:54'),
(27, 'sed', '1998-02-26', '2012-03-26', '2024-08-07 00:42:55', '2024-08-07 00:42:55'),
(28, 'magni', '1992-07-02', '1980-09-01', '2024-08-07 00:42:55', '2024-08-07 00:42:55'),
(29, 'et', '1982-10-09', '1975-08-13', '2024-08-07 00:42:55', '2024-08-07 00:42:55'),
(30, 'voluptas', '1975-05-30', '1992-09-09', '2024-08-07 00:42:56', '2024-08-07 00:42:56'),
(31, 'nostrum', '1994-07-24', '1989-10-03', '2024-08-07 00:42:56', '2024-08-07 00:42:56'),
(32, 'et', '2007-03-22', '1976-04-09', '2024-08-07 00:42:56', '2024-08-07 00:42:56'),
(33, 'sunt', '1996-05-12', '2005-11-22', '2024-08-07 00:42:57', '2024-08-07 00:42:57'),
(34, 'et', '2001-03-31', '1991-11-21', '2024-08-07 00:42:57', '2024-08-07 00:42:57'),
(35, 'est', '1983-04-12', '2015-07-08', '2024-08-07 00:42:57', '2024-08-07 00:42:57'),
(36, 'dolorum', '1998-08-04', '2022-08-05', '2024-08-07 00:42:58', '2024-08-07 00:42:58'),
(37, 'laudantium', '2019-07-07', '1982-06-14', '2024-08-07 00:42:58', '2024-08-07 00:42:58'),
(38, 'ut', '2010-06-29', '1990-03-19', '2024-08-07 00:42:58', '2024-08-07 00:42:58'),
(39, 'at', '1990-05-13', '1976-02-21', '2024-08-07 00:42:58', '2024-08-07 00:42:58'),
(40, 'id', '2022-01-06', '1977-09-21', '2024-08-07 00:42:59', '2024-08-07 00:42:59'),
(41, 'fugiat', '2011-05-06', '2018-08-12', '2024-08-07 00:42:59', '2024-08-07 00:42:59'),
(42, 'eius', '2021-07-12', '1997-12-07', '2024-08-07 00:42:59', '2024-08-07 00:42:59'),
(43, 'error', '1994-12-17', '2022-07-31', '2024-08-07 00:43:00', '2024-08-07 00:43:00'),
(44, 'quia', '2021-01-28', '1988-02-07', '2024-08-07 00:43:00', '2024-08-07 00:43:00'),
(45, 'eligendi', '1972-10-17', '1995-05-30', '2024-08-07 00:43:00', '2024-08-07 00:43:00'),
(46, 'possimus', '2006-07-16', '1984-03-22', '2024-08-07 00:43:01', '2024-08-07 00:43:01'),
(47, 'recusandae', '2010-10-02', '2008-01-31', '2024-08-07 00:43:01', '2024-08-07 00:43:01'),
(48, 'ut', '2021-06-29', '2006-09-20', '2024-08-07 00:43:01', '2024-08-07 00:43:01'),
(49, 'eos', '2002-06-07', '2016-07-29', '2024-08-07 00:43:02', '2024-08-07 00:43:02'),
(50, 'inventore', '1978-06-02', '1988-01-03', '2024-08-07 00:43:02', '2024-08-07 00:43:02'),
(51, 'nam', '1971-08-23', '1995-10-31', '2024-08-07 00:43:02', '2024-08-07 00:43:02'),
(52, 'natus', '2006-10-05', '1988-05-07', '2024-08-07 00:43:03', '2024-08-07 00:43:03'),
(53, 'qui', '1987-11-25', '1987-06-10', '2024-08-07 00:43:03', '2024-08-07 00:43:03'),
(54, 'est', '2018-08-13', '2023-01-04', '2024-08-07 00:43:03', '2024-08-07 00:43:03'),
(55, 'optio', '2003-08-11', '2013-02-11', '2024-08-07 00:43:04', '2024-08-07 00:43:04'),
(56, 'quo', '2016-11-25', '2020-07-04', '2024-08-07 00:43:04', '2024-08-07 00:43:04'),
(57, 'sed', '2000-08-16', '2003-03-13', '2024-08-07 00:43:04', '2024-08-07 00:43:04'),
(58, 'ducimus', '2019-03-05', '2021-01-20', '2024-08-07 00:43:04', '2024-08-07 00:43:04'),
(59, 'deleniti', '1975-11-27', '2005-02-18', '2024-08-07 00:43:05', '2024-08-07 00:43:05'),
(60, 'porro', '2010-03-25', '2016-04-23', '2024-08-07 00:43:05', '2024-08-07 00:43:05'),
(61, 'et', '2021-04-14', '2017-06-04', '2024-08-07 00:43:05', '2024-08-07 00:43:05'),
(62, 'enim', '2010-12-10', '2008-10-13', '2024-08-07 00:43:06', '2024-08-07 00:43:06'),
(63, 'aut', '2005-08-10', '1995-05-25', '2024-08-07 00:43:06', '2024-08-07 00:43:06'),
(64, 'expedita', '1993-03-06', '2011-09-13', '2024-08-07 00:43:06', '2024-08-07 00:43:06'),
(65, 'modi', '1971-11-22', '2008-11-07', '2024-08-07 00:43:07', '2024-08-07 00:43:07'),
(66, 'magnam', '1982-04-07', '1990-02-05', '2024-08-07 00:43:07', '2024-08-07 00:43:07'),
(67, 'cum', '1984-05-09', '2016-01-21', '2024-08-07 00:43:07', '2024-08-07 00:43:07'),
(68, 'accusamus', '2000-08-19', '2004-05-10', '2024-08-07 00:43:08', '2024-08-07 00:43:08'),
(69, 'voluptatem', '2004-02-26', '1983-08-03', '2024-08-07 00:43:08', '2024-08-07 00:43:08'),
(70, 'sint', '1988-12-27', '2012-12-24', '2024-08-07 00:43:08', '2024-08-07 00:43:08'),
(71, 'est', '2018-04-16', '1989-05-29', '2024-08-07 00:43:09', '2024-08-07 00:43:09'),
(72, 'non', '1978-01-02', '2002-08-10', '2024-08-07 00:43:09', '2024-08-07 00:43:09'),
(73, 'optio', '1990-10-18', '2010-08-09', '2024-08-07 00:43:09', '2024-08-07 00:43:09'),
(74, 'qui', '2005-05-13', '2008-05-20', '2024-08-07 00:43:10', '2024-08-07 00:43:10'),
(75, 'esse', '1989-05-23', '2005-09-03', '2024-08-07 00:43:10', '2024-08-07 00:43:10'),
(76, 'nobis', '1994-03-19', '2006-10-17', '2024-08-07 00:43:10', '2024-08-07 00:43:10'),
(77, 'quia', '2011-11-06', '1987-04-23', '2024-08-07 00:43:11', '2024-08-07 00:43:11'),
(78, 'deleniti', '1970-11-23', '2022-06-28', '2024-08-07 00:43:11', '2024-08-07 00:43:11'),
(79, 'enim', '2020-04-26', '2018-04-06', '2024-08-07 00:43:11', '2024-08-07 00:43:11'),
(80, 'deleniti', '2005-05-20', '2017-05-25', '2024-08-07 00:43:12', '2024-08-07 00:43:12'),
(81, 'consequatur', '2019-08-27', '1976-07-14', '2024-08-07 00:43:12', '2024-08-07 00:43:12'),
(82, 'totam', '1991-01-07', '2000-07-05', '2024-08-07 00:43:12', '2024-08-07 00:43:12'),
(83, 'eos', '2007-05-13', '1987-09-10', '2024-08-07 00:43:12', '2024-08-07 00:43:12'),
(84, 'labore', '1976-03-25', '2004-09-26', '2024-08-07 00:43:13', '2024-08-07 00:43:13'),
(85, 'nemo', '2003-12-11', '1986-02-04', '2024-08-07 00:43:13', '2024-08-07 00:43:13'),
(86, 'deserunt', '2004-01-25', '1989-07-27', '2024-08-07 00:43:13', '2024-08-07 00:43:13'),
(87, 'sed', '1981-09-03', '2006-04-08', '2024-08-07 00:43:14', '2024-08-07 00:43:14'),
(88, 'aperiam', '2015-08-30', '2021-03-06', '2024-08-07 00:43:14', '2024-08-07 00:43:14'),
(89, 'minus', '2013-02-27', '2011-05-21', '2024-08-07 00:43:14', '2024-08-07 00:43:14'),
(90, 'culpa', '1990-04-09', '2004-07-11', '2024-08-07 00:43:15', '2024-08-07 00:43:15'),
(91, 'sint', '1985-06-19', '1991-04-19', '2024-08-07 00:43:15', '2024-08-07 00:43:15'),
(92, 'aut', '1988-04-23', '2002-11-08', '2024-08-07 00:43:15', '2024-08-07 00:43:15'),
(93, 'qui', '2005-08-22', '2010-09-18', '2024-08-07 00:43:16', '2024-08-07 00:43:16'),
(94, 'ut', '2008-04-30', '1974-01-16', '2024-08-07 00:43:16', '2024-08-07 00:43:16'),
(95, 'culpa', '2020-01-17', '1999-09-09', '2024-08-07 00:43:16', '2024-08-07 00:43:16'),
(96, 'labore', '1987-09-10', '1985-07-26', '2024-08-07 00:43:17', '2024-08-07 00:43:17'),
(97, 'sed', '1993-08-14', '1980-01-21', '2024-08-07 00:43:17', '2024-08-07 00:43:17'),
(98, 'quo', '1985-07-06', '2010-07-25', '2024-08-07 00:43:17', '2024-08-07 00:43:17'),
(99, 'eum', '1970-11-29', '1985-03-16', '2024-08-07 00:43:18', '2024-08-07 00:43:18'),
(100, 'velit', '1990-05-20', '2009-01-20', '2024-08-07 00:43:18', '2024-08-07 00:43:18'),
(101, 'dolor', '2021-02-01', '1985-03-09', '2024-08-07 00:43:18', '2024-08-07 00:43:18'),
(102, 'dolor', '2002-04-29', '1988-04-05', '2024-08-07 00:43:19', '2024-08-07 00:43:19'),
(103, 'eum', '2012-07-16', '2011-12-14', '2024-08-07 00:43:19', '2024-08-07 00:43:19'),
(104, 'suscipit', '2000-04-23', '1970-12-08', '2024-08-07 00:43:19', '2024-08-07 00:43:19'),
(105, 'quas', '1993-07-09', '2023-04-24', '2024-08-07 00:43:20', '2024-08-07 00:43:20'),
(106, 'esse', '1988-08-10', '2012-03-12', '2024-08-07 00:43:20', '2024-08-07 00:43:20'),
(107, 'alias', '1991-08-31', '1981-07-07', '2024-08-07 00:43:20', '2024-08-07 00:43:20'),
(108, 'exercitationem', '2015-02-06', '2014-12-28', '2024-08-07 00:43:21', '2024-08-07 00:43:21'),
(109, 'error', '2003-04-22', '2011-06-14', '2024-08-07 00:43:21', '2024-08-07 00:43:21'),
(110, 'ab', '1975-05-19', '2010-05-10', '2024-08-07 00:43:21', '2024-08-07 00:43:21'),
(111, 'repellat', '2012-03-12', '2022-03-07', '2024-08-07 00:43:22', '2024-08-07 00:43:22'),
(112, 'qui', '2005-04-17', '1972-08-18', '2024-08-07 00:43:22', '2024-08-07 00:43:22'),
(113, 'accusamus', '1977-05-10', '1970-05-30', '2024-08-07 00:43:22', '2024-08-07 00:43:22'),
(114, 'rerum', '1976-10-09', '2015-11-30', '2024-08-07 00:43:23', '2024-08-07 00:43:23'),
(115, 'culpa', '1980-05-31', '1976-09-09', '2024-08-07 00:43:23', '2024-08-07 00:43:23'),
(116, 'et', '1991-09-07', '1988-08-15', '2024-08-07 00:43:23', '2024-08-07 00:43:23'),
(117, 'at', '2009-10-29', '2012-08-17', '2024-08-07 00:43:24', '2024-08-07 00:43:24'),
(118, 'modi', '1977-08-01', '1988-07-09', '2024-08-07 00:43:24', '2024-08-07 00:43:24'),
(119, 'quos', '2016-04-27', '2022-11-11', '2024-08-07 00:43:24', '2024-08-07 00:43:24'),
(120, 'ut', '1970-08-07', '2017-08-20', '2024-08-07 00:43:25', '2024-08-07 00:43:25');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '0001_01_01_000000_create_users_table', 1),
(18, '0001_01_01_000001_create_cache_table', 1),
(19, '0001_01_01_000002_create_jobs_table', 1),
(20, '2024_08_06_130646_create_personal_access_tokens_table', 1),
(21, '2024_08_06_162358_create_etudiants_table', 1),
(22, '2024_08_06_162709_create_ues_table', 1),
(23, '2024_08_06_162837_create_matieres_table', 1),
(24, '2024_08_06_163131_create_evaluations_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('bIixQPW6yNoTckJ5wtt677HYOXWcdBPRBMb11GXh', NULL, '127.0.0.1', 'PostmanRuntime/7.41.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiODByV3dKR3lZM1VnNjJxUWRKY3BRRWNEdTZSd05Ob2xPRnlHYmdYZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1723033178),
('CDS8NUffJggNU9AIUjhsbA1zxwHSn7pjnvZbTo9L', NULL, '127.0.0.1', 'insomnia/9.3.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTVzUllwVXV4dXZxT3VzaHZMTnVGY2IwWlRUd0oyZEZwM2FKeEtscSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1723035617);

-- --------------------------------------------------------

--
-- Structure de la table `ues`
--

CREATE TABLE `ues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `coef` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ues`
--

INSERT INTO `ues` (`id`, `libelle`, `date_debut`, `date_fin`, `coef`, `created_at`, `updated_at`) VALUES
(1, 'explicabo', '2009-10-05', '2011-06-02', 9, '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(2, 'illo', '2001-10-14', '1999-06-27', 9, '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(3, 'quisquam', '1998-01-14', '2004-10-11', 4, '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(4, 'autem', '2008-02-14', '1973-07-15', 8, '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(5, 'et', '2010-11-06', '1978-10-08', 8, '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(6, 'dignissimos', '2020-05-31', '2013-03-10', 7, '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(7, 'ex', '2022-03-18', '1976-09-07', 2, '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(8, 'dolores', '1989-09-02', '1979-04-21', 9, '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(9, 'aliquam', '1988-08-11', '1996-01-15', 4, '2024-08-07 00:42:37', '2024-08-07 00:42:37'),
(10, 'id', '1982-02-11', '1984-10-08', 4, '2024-08-07 00:42:37', '2024-08-07 00:42:37');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'bassine', 'mamebassine06@gmail.com', NULL, '$2y$12$TNABYUBiu.yob/5T0XTUZ.zcHHG11yGE2NFCXGqMoR48WKhFWasKy', 'user', NULL, '2024-08-07 01:51:01', '2024-08-07 01:51:01');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `etudiants_matricule_unique` (`matricule`),
  ADD UNIQUE KEY `etudiants_email_unique` (`email`);

--
-- Index pour la table `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluations_etudiant_id_foreign` (`etudiant_id`),
  ADD KEY `evaluations_matiere_id_foreign` (`matiere_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `matieres`
--
ALTER TABLE `matieres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `ues`
--
ALTER TABLE `ues`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT pour la table `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `matieres`
--
ALTER TABLE `matieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ues`
--
ALTER TABLE `ues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `evaluations`
--
ALTER TABLE `evaluations`
  ADD CONSTRAINT `evaluations_etudiant_id_foreign` FOREIGN KEY (`etudiant_id`) REFERENCES `etudiants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `evaluations_matiere_id_foreign` FOREIGN KEY (`matiere_id`) REFERENCES `matieres` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
