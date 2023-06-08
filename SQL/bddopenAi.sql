-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 08 juin 2023 à 16:46
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `openAI`
--

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

CREATE TABLE `characters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `univers_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image_url` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `characters`
--

INSERT INTO `characters` (`id`, `user_id`, `univers_id`, `name`, `description`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'test', 'test', 'test', NULL, NULL),
(2, 1, 1, '', '', '', NULL, NULL),
(3, 2, 1, 'Anakin Skywalker', '.\n\nAnakin Skywalker, c\'est un homme originaire de Jedi élites de la Force. À trente-treize ans, il a étudié en lice et est bloûté pour le restant de sa vie.\n\n\n\nAnakin est un homme mince, costaud et resilient. Il a eu la clé d\'un labyrinthe, un Jedi et un Sith, et est de', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-pLdRKtMfaORpGCsCjx2bMBqn/user-xOxYLuUESCbcXDPcgAy5qqS3/img-YsuK2qujlhc0cnEEYCVRZZ6x.png?st=2023-06-08T12%3A40%3A45Z&se=2023-06-08T14%3A40%3A45Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-06-07T22%3A23%3A59Z&ske=2023-06-08T22%3A23%3A59Z&sks=b&skv=2021-08-06&sig=D7rrEgoeo3WqiDD0WPx9FD%2BPYHdKPn19rFc5DpZIhbs%3D', '2023-06-08 11:40:46', '2023-06-08 11:40:46'),
(4, 2, 3, 'Anakin Skywalker', '.\n\nAnakin, c\'est toi! Tu vas t\'avancer?\n\nNon, je viens de te faire entrer dans le personnage de ton côté. (Anakin, ton partenaire)\n\nAnakin, c\'est toi?\n\nJe fais une mauvaise impression!\n\nNo, I don\'t seem to be doing well!\n\nAnakin, c\'est toi?', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-pLdRKtMfaORpGCsCjx2bMBqn/user-xOxYLuUESCbcXDPcgAy5qqS3/img-0ft7XC0D0M6KNd0xYR4wsySI.png?st=2023-06-08T12%3A43%3A09Z&se=2023-06-08T14%3A43%3A09Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-06-08T01%3A33%3A42Z&ske=2023-06-09T01%3A33%3A42Z&sks=b&skv=2021-08-06&sig=YGy3EDKY9XLtbPTVxgVauT6tWevM8CaMhMLJwrYJuKQ%3D', '2023-06-08 11:43:10', '2023-06-08 11:43:10'),
(5, 2, 3, 'Princesse Leila', ' et je joue une personnalité de la Jedi Knight.\n\nPrincess Leila est une femmelette assez autoritaire et droite, qui a choisie l\'un des meilleurs mégapodes de la planète Luke, pour se donner et faire les honneurs de sa propre ferveur.elle est une fois pour toutes éprouvée pour les droits de la personnal', '6481db9327482.png', '2023-06-08 11:45:56', '2023-06-08 11:45:56'),
(6, 2, 3, 'Alexandre', '.\n\nAlexandre, une enfant que les Jedi ont créée pour protéger la planète Luke. Alexandre est heureux de pouvoir être son nouveau personnage en lui donnant naissance à un élève whichs est heureux de défendre la planète Luke envers les Sith.', '6481dbc852c0c.png', '2023-06-08 11:46:49', '2023-06-08 11:46:49'),
(7, 2, 4, 'Alexandre', '.\n\nI am Alexandre, a student at MyDigitalSchool. I love creative writing, learning new things, and making things. I am always up for a challenge and always trying to get more from what I am given.', '6481dc4f3ab7e.png', '2023-06-08 11:49:03', '2023-06-08 11:49:03'),
(8, 2, 4, 'Romain', '.\n\nRomain, tu es trop méchant.\n\nQuelques personnes avec qui je me connecte à l\'univers de MyDigitalSchool ont élaboré ce personnage pour que lessein de méchant.\n\nEn ce moment, mon personnage est une tueuse de top en lutte avec les gros titres.', 'Romain.png', '2023-06-08 11:51:26', '2023-06-08 11:51:26'),
(9, 2, 5, 'Xin Zhao', '.\n\nXin Zhao est un guerrier de la rotonde et élaboré. Xin Zhao est de ceux-là qui ont décidé de créer League of Legends et de se donner à la vie d\'un joueur en ligne.\n\nXin Zhao suit les mêmes principes que les autres joueurs à la vie et est d\'ailleurs heureux de pouv', 'Xin Zhao.png', '2023-06-08 11:58:34', '2023-06-08 11:58:34'),
(10, 2, 5, 'Lee Sin', '.\n\nLee Sin is a powerful and experienced player on League of Legends. He is known for his powerful skills and for being a reliable and powerful support. He is also a very intelligent and Decemberist-OUS player.', 'Lee Sin.png', '2023-06-08 11:59:01', '2023-06-08 11:59:01'),
(11, 2, 6, 'Michonne', ' et je suis une femme de la résidencedefault.\n\nMichonne est une femme qui a décidé de devenir actrice de la résidenceDefault. Elle est maintenant époustouflée par la vie dans laquelle est enchâchée la vie dans l\'univers de Walking Dead.', 'Michonne.png', '2023-06-08 11:59:51', '2023-06-08 11:59:51');

-- --------------------------------------------------------

--
-- Structure de la table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `character_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_06_084624_universe', 1),
(6, '2023_06_06_085157_conversation', 1),
(7, '2023_06_06_090059_message', 1),
(8, '2023_06_06_090157_characters', 1),
(9, '2023_06_07_074619_add_character_id_to_conversations', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `simple vue`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `simple vue` (
`id` bigint(20) unsigned
,`name` varchar(255)
,`description` text
);

-- --------------------------------------------------------

--
-- Structure de la table `universe`
--

CREATE TABLE `universe` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `universe`
--

INSERT INTO `universe` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'chdddd', '2023-06-08 07:48:25', '2023-06-08 09:40:43'),
(3, 2, 'Star Wars', '2023-06-08 11:42:56', '2023-06-08 11:42:56'),
(4, 2, 'MyDigitalSchool', '2023-06-08 11:48:48', '2023-06-08 11:48:48'),
(5, 2, 'League of legends', '2023-06-08 11:58:17', '2023-06-08 11:58:17'),
(6, 2, 'Walking Dead', '2023-06-08 11:59:30', '2023-06-08 11:59:30');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'maxime', 'maxime@test.fr', NULL, '$2y$10$VlXWMeHIXQ8rFJWlynCPFOpD7zFpasbKmeiA54TZV5i1weBhnecYa', NULL, '2023-06-08 07:48:07', '2023-06-08 07:48:07'),
(2, 'test', 'test@test.fr', NULL, '$2y$10$A/MCp4FGIe/w8JZpCGTe2Oh6.Ktz5VoZ7efi7.QJ2NEO/d1YGQwi2', NULL, '2023-06-08 10:45:27', '2023-06-08 10:45:27');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vue avecd jointure`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `vue avecd jointure` (
`id` bigint(20) unsigned
,`name` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vue avec jointure`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `vue avec jointure` (
`id` bigint(20) unsigned
,`user_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vue avecz jointure`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `vue avecz jointure` (
`id` bigint(20) unsigned
,`name` varchar(255)
,`universeName` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vue jointure`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `vue jointure` (
`name` varchar(255)
,`characterID` bigint(20) unsigned
,`userName` varchar(255)
,`userID` bigint(20) unsigned
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vue sans jointure`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `vue sans jointure` (
`id` bigint(20) unsigned
,`name` varchar(255)
,`description` text
);

-- --------------------------------------------------------

--
-- Structure de la vue `simple vue`
--
DROP TABLE IF EXISTS `simple vue`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `openai`.`simple vue`  AS SELECT `openai`.`characters`.`id` AS `id`, `openai`.`characters`.`name` AS `name`, `openai`.`characters`.`description` AS `description` FROM `openai`.`characters``characters`  ;

-- --------------------------------------------------------

--
-- Structure de la vue `vue avecd jointure`
--
DROP TABLE IF EXISTS `vue avecd jointure`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `openai`.`vue avecd jointure`  AS SELECT `c`.`id` AS `id`, `c`.`name` AS `name` FROM ((`openai`.`characters` `c` join `openai`.`users` `u` on(`c`.`user_id` = `u`.`id`)) join `openai`.`universe` `un` on(`un`.`user_id` = `u`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure de la vue `vue avec jointure`
--
DROP TABLE IF EXISTS `vue avec jointure`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `openai`.`vue avec jointure`  AS SELECT `c`.`id` AS `id`, `c`.`name` AS `user_name` FROM (`openai`.`characters` `c` join `openai`.`users` `u` on(`c`.`user_id` = `u`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure de la vue `vue avecz jointure`
--
DROP TABLE IF EXISTS `vue avecz jointure`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `openai`.`vue avecz jointure`  AS SELECT `c`.`id` AS `id`, `c`.`name` AS `name`, `un`.`name` AS `universeName` FROM ((`openai`.`characters` `c` join `openai`.`users` `u` on(`c`.`user_id` = `u`.`id`)) join `openai`.`universe` `un` on(`un`.`user_id` = `u`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure de la vue `vue jointure`
--
DROP TABLE IF EXISTS `vue jointure`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `openai`.`vue jointure`  AS SELECT `c`.`name` AS `name`, `c`.`id` AS `characterID`, `u`.`name` AS `userName`, `u`.`id` AS `userID` FROM (`openai`.`characters` `c` join `openai`.`users` `u`) WHERE `u`.`id` = `c`.`user_id``user_id`  ;

-- --------------------------------------------------------

--
-- Structure de la vue `vue sans jointure`
--
DROP TABLE IF EXISTS `vue sans jointure`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `openai`.`vue sans jointure`  AS SELECT `openai`.`characters`.`id` AS `id`, `openai`.`characters`.`name` AS `name`, `openai`.`characters`.`description` AS `description` FROM `openai`.`characters``characters`  ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `characters_user_id_foreign` (`user_id`),
  ADD KEY `characters_univers_id_foreign` (`univers_id`);

--
-- Index pour la table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversations_user_id_foreign` (`user_id`),
  ADD KEY `conversations_character_id_foreign` (`character_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`),
  ADD KEY `messages_conversation_id_foreign` (`conversation_id`);

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
-- Index pour la table `universe`
--
ALTER TABLE `universe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `universe_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT pour la table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `universe`
--
ALTER TABLE `universe`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `characters`
--
ALTER TABLE `characters`
  ADD CONSTRAINT `characters_univers_id_foreign` FOREIGN KEY (`univers_id`) REFERENCES `universe` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `characters_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `conversations`
--
ALTER TABLE `conversations`
  ADD CONSTRAINT `conversations_character_id_foreign` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conversations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `universe`
--
ALTER TABLE `universe`
  ADD CONSTRAINT `universe_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
