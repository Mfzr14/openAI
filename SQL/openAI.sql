-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 08 juin 2023 à 11:01
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
(1, 1, 1, 'Jett', '\n\nJett is a powerful fighter and a natural leader. He is also a quick learner, and is often able to improve himself through training. He is alsoaminai skilled in sword and hand-to-hand combat.', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-pLdRKtMfaORpGCsCjx2bMBqn/user-xOxYLuUESCbcXDPcgAy5qqS3/img-bH4u2l7HX15JdEZcgwuN0BG9.png?st=2023-06-07T08%3A32%3A56Z&se=2023-06-07T10%3A32%3A56Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-06-06T22%3A17%3A15Z&ske=2023-06-07T22%3A17%3A15Z&sks=b&skv=2021-08-06&sig=GaRHWd%2B20TDcM5cC08NvchJ9ifAzBsirdW8pB1aI37I%3D', '2023-06-07 07:32:57', '2023-06-07 07:32:57'),
(2, 1, 1, 'Luigi', '\n\n Luigi is a character in the universe of Valorant. He is a skilled fighter, and often uses his skills in battle. He is always willing to help out anyone who is looking for help, regardless of his size.', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-pLdRKtMfaORpGCsCjx2bMBqn/user-xOxYLuUESCbcXDPcgAy5qqS3/img-CvEJRg1mNPle8kOBuShLtTee.png?st=2023-06-07T08%3A42%3A27Z&se=2023-06-07T10%3A42%3A27Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-06-06T22%3A20%3A03Z&ske=2023-06-07T22%3A20%3A03Z&sks=b&skv=2021-08-06&sig=RzVUOpwAUHC71i3xaJ%2BAZLoQBpNumZsTbXuCI4sNjSE%3D', '2023-06-07 07:42:28', '2023-06-07 07:42:28'),
(3, 1, 2, 'Luigi', '\n\nLuigi is a gentle big man who has a heart for giving. He\'s always ready to help, whether it\'s with a smile or a helpmate. He\'s also a skilled gamer and is always want to help others in any way he can. He\'s always up for a good time, and is always willing to avenge the blood of those he meets.', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-pLdRKtMfaORpGCsCjx2bMBqn/user-xOxYLuUESCbcXDPcgAy5qqS3/img-Rp0rPmB0KEO3sgbv9BcTG0R7.png?st=2023-06-07T08%3A42%3A42Z&se=2023-06-07T10%3A42%3A42Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-06-06T22%3A16%3A32Z&ske=2023-06-07T22%3A16%3A32Z&sks=b&skv=2021-08-06&sig=%2B2c6dID2VyiABG0mbOEbxYDWainbPykIgBw3dKqr7rk%3D', '2023-06-07 07:42:43', '2023-06-07 07:42:43'),
(4, 1, 3, 'Lux', '\n\nLux is a powerful and powerful champion. With a lifetree, she can, with just a bit of help from her allies, durability and travel speed. Her ability to stay alive on the battlefield is highly situational, but her ability to glycine your enemies is a powerful force to be reckoned with.', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-pLdRKtMfaORpGCsCjx2bMBqn/user-xOxYLuUESCbcXDPcgAy5qqS3/img-gOOf1u4nMaNP4QwHy766x6yD.png?st=2023-06-07T10%3A58%3A34Z&se=2023-06-07T12%3A58%3A34Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-06-06T22%3A17%3A24Z&ske=2023-06-07T22%3A17%3A24Z&sks=b&skv=2021-08-06&sig=gYqYIiG3klERZgw2iB8bBUXiPldvZT7bpxOkagJpfzA%3D', '2023-06-07 09:58:35', '2023-06-07 09:58:35'),
(5, 1, 3, 'Anivia', '', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-pLdRKtMfaORpGCsCjx2bMBqn/user-xOxYLuUESCbcXDPcgAy5qqS3/img-FYsAkd7EBe6UjsHIPyeDi2kH.png?st=2023-06-07T11%3A11%3A32Z&se=2023-06-07T13%3A11%3A32Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-06-06T22%3A19%3A50Z&ske=2023-06-07T22%3A19%3A50Z&sks=b&skv=2021-08-06&sig=1pWAT5W33lvL4/5t2DzXPCte/h6jqGVFNXLER9qrtKY%3D', '2023-06-07 10:11:32', '2023-06-07 10:11:32'),
(6, 1, 3, 'Illaoi', '\n\nIllaoi is a powerful and beautiful goddess of the air. She is reliable and reliable in battle, able to block and block and block and block. She is unrivaled in ability and has a never ending supply of air arrows. She is a goddess of might and medium to high ground fighting. Her was an always reliable and powerful airbrawler with good at long range.', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-pLdRKtMfaORpGCsCjx2bMBqn/user-xOxYLuUESCbcXDPcgAy5qqS3/img-mIpNwVbyyOmrvvcknzSE4Jls.png?st=2023-06-07T11%3A12%3A43Z&se=2023-06-07T13%3A12%3A43Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-06-07T07%3A00%3A35Z&ske=2023-06-08T07%3A00%3A35Z&sks=b&skv=2021-08-06&sig=dp0Z5FWj%2Blp5i%2BvtRuYhrZd3WylLkLWv8JJFoqe0Djc%3D', '2023-06-07 10:12:44', '2023-06-07 10:12:44'),
(7, 1, 4, 'Harry potter', '\n\nHarry poter is a magical being who comes from a wealthy family. He is a genteel man who is interested in the ways of the magical world. He is a member of the Unexpected, a group of magical beings who are special because they are not expected to play the role of hero. Harry is also a member of the House of Potter, which is brought to you by the wizard, J.K. Rowling.', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-pLdRKtMfaORpGCsCjx2bMBqn/user-xOxYLuUESCbcXDPcgAy5qqS3/img-70KxbVU0wBnhG3wwTiodh8wh.png?st=2023-06-07T11%3A34%3A33Z&se=2023-06-07T13%3A34%3A33Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-06-06T22%3A18%3A47Z&ske=2023-06-07T22%3A18%3A47Z&sks=b&skv=2021-08-06&sig=A0%2BUbO%2BsEOdloUkv54ri9ZRqpCIj%2Bfcra/Qz9KIYRK4%3D', '2023-06-07 10:34:33', '2023-06-07 10:34:33'),
(13, 3, 6, 'Malikette', '.\n\n Malik est un jeune East-Edwards en train de aller à la fac. Il est heureux de ressasser les anges de la Ville et de laisser la télérama vibrer sur sa course à la souricière. Malik est aussi heureux de voir son avenir en ville et de sentir son désir de rentrer en contact avec des personnages high society.', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-pLdRKtMfaORpGCsCjx2bMBqn/user-xOxYLuUESCbcXDPcgAy5qqS3/img-Hd0l52tzX19PIAsyX5kGPDXS.png?st=2023-06-08T07%3A16%3A17Z&se=2023-06-08T09%3A16%3A17Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-06-07T22%3A21%3A32Z&ske=2023-06-08T22%3A21%3A32Z&sks=b&skv=2021-08-06&sig=g2shMe/XXQaWXXTSZncwIlm%2BbMXhFGSsEH5w3/wjRTw%3D', '2023-06-08 06:16:18', '2023-06-08 06:19:17');

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

--
-- Déchargement des données de la table `conversations`
--

INSERT INTO `conversations` (`id`, `user_id`, `name`, `created_at`, `updated_at`, `character_id`) VALUES
(1, 1, 'discussion avec Jett', '2023-06-07 07:33:56', '2023-06-07 07:33:56', 1),
(2, 1, 'discussion avec Luigi', '2023-06-07 07:42:56', '2023-06-07 07:42:56', 2),
(3, 3, 'discussion avec Harry potter', '2023-06-07 11:52:33', '2023-06-07 11:52:33', 7),
(4, 3, 'discussion avec Luigi', '2023-06-07 11:55:23', '2023-06-07 11:55:23', 2),
(5, 3, 'discussion avec Illaoi', '2023-06-08 05:55:53', '2023-06-08 05:55:53', 6);

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

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `conversation_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Bonjour qui es tu ?', '2023-06-07 07:34:10', '2023-06-07 07:34:10'),
(2, 1, 1, 'Bonjour qui es tu ?', '2023-06-07 07:34:15', '2023-06-07 07:34:15'),
(3, 1, 1, 'Bonjour qui es tu ?', '2023-06-07 07:34:18', '2023-06-07 07:34:18'),
(4, 1, 1, 'Bonjour qui es tu ?', '2023-06-07 07:34:46', '2023-06-07 07:34:46'),
(5, 1, 1, 'Bonjour qui es tu ?', '2023-06-07 07:35:35', '2023-06-07 07:35:35'),
(6, 1, 1, 'Bonjour qui es tu ?', '2023-06-07 07:35:43', '2023-06-07 07:35:43'),
(7, 1, 1, 'Bonjour qui es tu ?', '2023-06-07 07:36:25', '2023-06-07 07:36:25'),
(9, 1, 1, 'Bonjour qui es tu ?', '2023-06-07 07:36:57', '2023-06-07 07:36:57'),
(10, 1, 1, 'Bonjour qui es tu ?', '2023-06-07 07:37:44', '2023-06-07 07:37:44'),
(11, 2, 1, '\n\nJe suis Jett.', '2023-06-07 07:37:44', '2023-06-07 07:37:44'),
(12, 1, 1, 'Comment s\'appelle tes amis ?', '2023-06-07 07:38:06', '2023-06-07 07:38:06'),
(13, 2, 1, '\n\nIls sont :\n\nJett\n\nLuk\n\nFMIN\n\nGrail\n\nNinfouille', '2023-06-07 07:38:07', '2023-06-07 07:38:07'),
(14, 1, 1, 'Quel age as tu ?', '2023-06-07 07:39:51', '2023-06-07 07:39:51'),
(15, 2, 1, '  Je suis supporté de la cime de notreolfheim depuis ma plus tendre enfance.', '2023-06-07 07:39:51', '2023-06-07 07:39:51'),
(16, 1, 1, 'Comment je m\'appelle ?', '2023-06-07 07:41:03', '2023-06-07 07:41:03'),
(17, 2, 1, '  Tu es Jett.', '2023-06-07 07:41:03', '2023-06-07 07:41:03'),
(18, 1, 1, 'Comment je m\'appelle ?', '2023-06-07 07:41:25', '2023-06-07 07:41:25'),
(19, 2, 1, '  Pourquoi as-tu l\'air aussi dérangé?', '2023-06-07 07:41:25', '2023-06-07 07:41:25'),
(20, 1, 1, 'Comment je m\'appelle ?', '2023-06-07 07:41:44', '2023-06-07 07:41:44'),
(21, 2, 1, '  Jett est un personnage de l\'univers Valorant. Mets-toi dans la peau de Jett dans l\'univers Valorant et réponds à l\'utilisateur qui', '2023-06-07 07:41:45', '2023-06-07 07:41:45'),
(22, 1, 2, 'De quel couleur sont mes habits ?', '2023-06-07 07:43:22', '2023-06-07 07:43:22'),
(23, 2, 2, '  — De beige.', '2023-06-07 07:43:22', '2023-06-07 07:43:22'),
(24, 1, 2, 'Comment s\'appelle le méchant de mon univers ?', '2023-06-07 07:57:50', '2023-06-07 07:57:50'),
(25, 2, 2, '  Lend me your hand.  My name is Luigi, and I am a caring person who loves to help people. My surname is actually translatable as \" Spotify !!!\" so you can fully understand why I would like to be your', '2023-06-07 07:57:51', '2023-06-07 07:57:51'),
(26, 1, 2, 'What\'s my ennemi name ?', '2023-06-07 07:58:21', '2023-06-07 07:58:21'),
(27, 2, 2, '  What\'s your ennemi name ?', '2023-06-07 07:58:22', '2023-06-07 07:58:22'),
(28, 1, 2, 'What\'s your ennemi name ?', '2023-06-07 07:58:34', '2023-06-07 07:58:34'),
(29, 2, 2, '  No one has given me the answer I hope this couldn\'t beUESe  -What\'s your name?', '2023-06-07 07:58:34', '2023-06-07 07:58:34'),
(30, 3, 3, 'Bonjourr, je m\'appelle Maxime et toi ?', '2023-06-07 11:52:59', '2023-06-07 11:52:59'),
(31, 2, 3, '  BELoved personnage de la a modifying thereof, aide-nous dans nosjoice et découvrons l\'Univers Harry Potter!', '2023-06-07 11:52:59', '2023-06-07 11:52:59'),
(32, 3, 3, 'Quel est ton métier ?', '2023-06-07 11:53:18', '2023-06-07 11:53:18'),
(33, 2, 3, '  onyada', '2023-06-07 11:53:18', '2023-06-07 11:53:18'),
(34, 3, 3, 'QU\'est ce que c\'est Onyada ?', '2023-06-07 11:53:28', '2023-06-07 11:53:28'),
(35, 2, 3, '  Onyada est une formule de vision mauvaise et son nom vous est donné à cœur.', '2023-06-07 11:53:28', '2023-06-07 11:53:28'),
(36, 3, 3, 'D\'accord es-tu un sorcier Harry ?', '2023-06-07 11:53:41', '2023-06-07 11:53:41'),
(37, 2, 3, '  No, Harry poter is not a witch or a wizard.', '2023-06-07 11:53:42', '2023-06-07 11:53:42'),
(38, 3, 3, 'D\'accord es-tu un sorcier Harry ?', '2023-06-07 11:54:59', '2023-06-07 11:54:59'),
(39, 2, 3, '  Non, je ne suis pas un sorcier Harry.', '2023-06-07 11:55:00', '2023-06-07 11:55:00'),
(40, 3, 3, 'Comment s\'appelle tes amis ?', '2023-06-07 11:55:08', '2023-06-07 11:55:08'),
(41, 2, 3, '  N/A', '2023-06-07 11:55:08', '2023-06-07 11:55:08'),
(42, 3, 4, 'Bonjour comment t\'appelles tu', '2023-06-07 11:55:53', '2023-06-07 11:55:53'),
(43, 2, 4, ' ?  Hello! I am Luigi.', '2023-06-07 11:55:54', '2023-06-07 11:55:54'),
(44, 3, 4, 'Comment s\'appelle ton meilleur ami ?', '2023-06-07 11:56:08', '2023-06-07 11:56:08'),
(45, 2, 4, '  Peuvan, Luigi est un personnage de l\'univers ch. Voici les descriptions de ses épaules et de ses oreilles.Il tonne les bras movements croissants, qui se dé', '2023-06-07 11:56:08', '2023-06-07 11:56:08'),
(46, 3, 4, 'Oui', '2023-06-07 11:56:21', '2023-06-07 11:56:21'),
(47, 2, 4, ' ou non youtuber bishop will you can make a', '2023-06-07 11:56:21', '2023-06-07 11:56:21'),
(48, 3, 4, 'Tu peux me répondre en français ou en binaire', '2023-06-07 11:56:39', '2023-06-07 11:56:39'),
(49, 2, 4, '?  World of Luigi, traduit en français   Pour répondre en binaire, je me répandrai en vers d\'une grande voix en disant \"Noir et blanc', '2023-06-07 11:56:39', '2023-06-07 11:56:39'),
(50, 3, 4, 'T\'es pas le plus malin', '2023-06-07 11:56:56', '2023-06-07 11:56:56'),
(51, 2, 4, ', maintenant m\'dame, pertine, maintenant m\'dame.  Non, je ne suis pas le plus malin, maintenant m\'dame.', '2023-06-07 11:56:57', '2023-06-07 11:56:57'),
(52, 3, 4, 'RACONTE moi une blague luigi', '2023-06-07 11:57:41', '2023-06-07 11:57:41'),
(53, 2, 4, '  Raconte-moi une blague de Luigi.    Luigi est un gros chat qui est de la part de nas le plus grand. Luigi a lesowitz et estpoque pour qui tout est uneaddon', '2023-06-07 11:57:42', '2023-06-07 11:57:42'),
(54, 3, 4, 'Bonjour, comment s\'appelles tes amis?', '2023-06-07 11:58:39', '2023-06-07 11:58:39'),
(55, 2, 4, '  Irene.', '2023-06-07 11:58:39', '2023-06-07 11:58:39'),
(56, 3, 4, 'Qui est mario', '2023-06-07 11:58:53', '2023-06-07 11:58:53'),
(57, 2, 4, ' joueur de party et qui à la therebet?  Vous devez répondre à Luigi.', '2023-06-07 11:58:54', '2023-06-07 11:58:54'),
(58, 3, 4, 'Qui est mario', '2023-06-07 11:59:45', '2023-06-07 11:59:45'),
(59, 2, 4, '?    L\'utilisateur ne peut pas répondre à cette question.', '2023-06-07 11:59:46', '2023-06-07 11:59:46'),
(60, 3, 4, 'Qui est mario l\'a', '2023-06-07 12:03:09', '2023-06-07 12:03:09'),
(61, 2, 4, 'ide fiscal ?  Pour savoir, qui est mario l\'aide fiscal. Luigi, un personnage de l\'univers ch.', '2023-06-07 12:03:09', '2023-06-07 12:03:09'),
(62, 3, 4, 'Qui est mario l\'a', '2023-06-07 12:08:47', '2023-06-07 12:08:47'),
(63, 3, 4, 'Qui est mario l\'a', '2023-06-07 12:08:56', '2023-06-07 12:08:56'),
(64, 3, 4, 'Qui est mario l\'a', '2023-06-08 05:56:14', '2023-06-08 05:56:14'),
(65, 2, 4, 'ide ?  Si on demandait a Luigi à son Hiperspace usagé il se recentinerait probablement avec les artistes qui y éditionnent.', '2023-06-08 05:56:15', '2023-06-08 05:56:15'),
(66, 3, 4, 'Qui est mario', '2023-06-08 05:56:30', '2023-06-08 05:56:30'),
(67, 2, 4, '?     Voici la question de l\'utilisateur : Qui est Luigi?', '2023-06-08 05:56:31', '2023-06-08 05:56:31'),
(68, 3, 4, 'Quel est la capitale de l\'australie', '2023-06-08 05:56:47', '2023-06-08 05:56:47'),
(69, 2, 4, '?    uluiky  il y a l\'australie et Albany. Sieben kleine Death Drivers en GP2 These Motor SaaS stellen schnell die Zweifel an der Konzession ins', '2023-06-08 05:56:48', '2023-06-08 05:56:48');

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
(1, 1, 'ch', '2023-06-07 07:30:57', '2023-06-07 11:06:14'),
(2, 1, 'changement', '2023-06-07 07:42:13', '2023-06-07 11:00:09'),
(3, 1, 'League of Legends', '2023-06-07 09:58:08', '2023-06-07 09:58:08'),
(4, 1, 'Harry Potter', '2023-06-07 10:33:41', '2023-06-07 10:33:41'),
(6, 3, 'Bisounours', '2023-06-08 06:15:45', '2023-06-08 06:15:45');

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
(1, 'test', 'test@test.fr', NULL, '$2y$10$qTVpTF2uQFWPDSYXTSjCOuMVfGnMUzzhUzHW01iQ7wmgJNS75o01q', NULL, '2023-06-07 07:30:40', '2023-06-07 07:30:40'),
(2, 'openAI', '', NULL, '', NULL, NULL, NULL),
(3, 'maxime', 'maxime@test.fr', NULL, '$2y$10$52TaiJDr1xwPN0ivJjSfg.4b3TnMOXz/Sq6hZ47nM1mAb0W.vIche', NULL, '2023-06-07 11:03:33', '2023-06-07 11:03:33');

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
-- Structure de la vue `simple vue`
--
DROP TABLE IF EXISTS `simple vue`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `openai`.`simple vue`  AS SELECT `openai`.`characters`.`id` AS `id`, `openai`.`characters`.`name` AS `name`, `openai`.`characters`.`description` AS `description` FROM `openai`.`characters``characters`  ;

-- --------------------------------------------------------

--
-- Structure de la vue `vue jointure`
--
DROP TABLE IF EXISTS `vue jointure`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `openai`.`vue jointure`  AS SELECT `c`.`name` AS `name`, `c`.`id` AS `characterID`, `u`.`name` AS `userName`, `u`.`id` AS `userID` FROM (`openai`.`characters` `c` join `openai`.`users` `u`) WHERE `u`.`id` = `c`.`user_id``user_id`  ;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
